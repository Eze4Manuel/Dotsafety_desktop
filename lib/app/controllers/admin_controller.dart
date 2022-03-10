import 'dart:convert';

import 'package:dotsafety_desktop/app/Model/admin.dart';
import 'package:dotsafety_desktop/app/controllers/base_controller.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_strings.dart';
import 'package:dotsafety_desktop/app/utils/shared_prefs.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AdminController extends BaseController {
  RxBool loading = false.obs;
  List adminList = [].obs;

  Future<bool> createAdmin(Admin admin) async {
    final prefs = await SharedPreferences.getInstance();

    var url = Uri.parse('${Strings.domain}api/admin/create_admin');
    var data = {
     "first_name": admin.first_name,
     "last_name": admin.last_name,
     "email": admin.email,
     "username": admin.username,
     "user_type": admin.user_type,
     "access_level": admin.access_level,
     "password": admin.password,
      "user_id": prefs.getString('user_id')
    };

    // Sending parameters to http request. Implemented in base controller
    var result = await sendAuthorizedHttpRequest(url, data, 'post');

    if (result == false) {
      return result;
    } else {
      setMessage("Admin Created Successfully");
      adminList.insert(0, result[0]) ;
      return Future<bool>.value(true);
    }
  }

  Future<bool> updateAdmin( data ) async {
    final prefs = await SharedPreferences.getInstance();

    var url = Uri.parse('${Strings.domain}api/admin/update_admin?auth_id=${data['_id']}');

    data['user_id'] = prefs.getString('user_id');

    print(data);

    // Sending parameters to http request. Implemented in base controller
    var result = await sendAuthorizedHttpRequest(url, data, 'put');

    if (result == false) {
      return result;
    } else {
      setMessage("Admin Updated Successfully");
      adminList.insert(0, result[0]) ;
      return Future<bool>.value(true);
    }
  }


  Future<bool> getAdmins() async {
    var url = Uri.parse('${Strings.domain}api/admin/get_admin');

    // Sending parameters to http request. Implemented in base controller
    var result = await sendAuthorizedHttpRequest(url, {}, 'get');

    if (result == false) {
      return result;
    } else {
      adminList = result;
      return Future<bool>.value(true);
    }
  }

  Future<bool> deleteAdmins(id) async {
    final prefs = await SharedPreferences.getInstance();

    var url = Uri.parse('${Strings.domain}api/admin/delete_admin/${id}');

    var data = {
      "user_id": prefs.getString('user_id')
    };

     // Sending parameters to http request. Implemented in base controller
    var result = await sendAuthorizedHttpRequest(url, data, 'delete');

    if (result == false) {
      return result;
    } else {
      adminList.removeWhere((element) => element['_id'] == id);
      return Future<bool>.value(true);
    }
    return false;
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
