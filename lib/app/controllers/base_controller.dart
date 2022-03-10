

import 'dart:convert';

import 'package:dotsafety_desktop/app/utils/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

class BaseController extends GetxController {

  List listValue = [].obs;

  RxString message = ''.obs;
  RxBool isActive = true.obs;

  setMessage(msg){
    if(msg == 'jwt expired'){
      logout();
      isActive.value = false;
    }
    message.value = msg;
  }

  //------------ Stores data locally using Shared prefs ------------//
  Future<bool> storeUserDetails(body, listKeys) async {
    await listKeys.map((key) async =>
    await SharedPrefs.saveString(key, body[key])
    );
    return true;
  }

  sendHttpRequest( url, data, httpMethod) async {
    // unsetting messages
    setMessage('');
    try {
      print("processing");
      var response;

      switch(httpMethod){
        case 'get':
          response =
          await http.get(
              url,
              headers: {"Accept": "*/*", "Content-Type": "application/json"});
          break;

        case 'put':
          response =
          await http.put(
              url,
              headers: {"Accept": "*/*", "Content-Type": "application/json"},
              body: jsonEncode(data));
          break;

        default:
          response =
          await http.post(
              url,
              headers: {"Accept": "*/*", "Content-Type": "application/json"},
              body: jsonEncode(data));
      }
      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)}');

      if(jsonDecode(response.body)['status'] == 'success') return jsonDecode(response.body)['data'];
      else{
        setMessage(jsonDecode(response.body)['msg']);

        return Future<bool>.value(false);
      }
    }catch(e){
      print(e);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
  }



  sendAuthorizedHttpRequest( url, data, httpMethod) async {
    // unsetting messages
    setMessage('');
    try {
      print("processing");

      var token = await SharedPrefs.readSingleString('token');
      var response;
      switch(httpMethod){

        case 'get':
          response =
          await http.get(
              url,
              headers: {
                "Accept": "*/*",
                "Content-Type": "application/json",
                "Authorization": "Bearer $token"
              });
          print(response);

          break;
        case 'put':
          response =
          await http.put(
              url,
              headers: {
                "Accept": "*/*",
                "Content-Type": "application/json",
                "Authorization": "Bearer $token"
              },
              body: jsonEncode(data));
          break;
        case 'delete':
          response =
          await http.delete(
              url,
              headers: {
                "Accept": "*/*",
                "Content-Type": "application/json",
                "Authorization": "Bearer $token"
              },
              body: jsonEncode(data));

          break;

        default:
           response =
          await http.post(
              url,
              headers: {
                "Accept": "*/*",
                "Content-Type": "application/json",
                "Authorization": "Bearer $token"
              },
              body: jsonEncode(data));
          break;
      }

      print('Response status: ${response.statusCode}');
      print('Response body: ${jsonDecode(response.body)}');

      if(jsonDecode(response.body)['status'] == 'success') return jsonDecode(response.body)['data'];
      else{
        setMessage(jsonDecode(response.body)['msg']);
        return Future<bool>.value(false);
      }
    }catch(e){
      print(e);
      setMessage("Something went wrong");
      return Future<bool>.value(false);
    }
  }


  Future<bool> logout() async {
    await SharedPrefs.remove('user_id');
    await SharedPrefs.remove('token');
    await SharedPrefs.remove('email');
    await SharedPrefs.remove('first_name');
    await SharedPrefs.remove('last_name');
    await SharedPrefs.remove('username');
    await SharedPrefs.remove('user_type');
    await SharedPrefs.remove('access_level');
    await SharedPrefs.remove('image_url');

    return true;
  }
}