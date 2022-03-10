import 'package:dotsafety_desktop/app/Model/admin.dart';
import 'package:dotsafety_desktop/app/controllers/admin_controller.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_strings.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:dotsafety_desktop/app/utils/shared_prefs.dart';
import 'package:dotsafety_desktop/app/utils/temp_data.dart';
import 'package:dotsafety_desktop/app/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';


class CreateAdmin extends StatefulWidget {

  Function getAdmins;

   CreateAdmin({required this.getAdmins }) ;

  @override
  _CreateAdminState createState() => _CreateAdminState();
}

class _CreateAdminState extends State<CreateAdmin> {
  final _formKey = GlobalKey<FormState>();

  final RoundedLoadingButtonController _btnController =
  RoundedLoadingButtonController();

  Admin admin = new Admin();

  final AdminController adminController = Get.put(AdminController());

  String confirmPassword = '';
  String accessLevel = '2';

  String usertypeValue = 'Admin';
  String isAccessLevel = '1';

  late FToast fToast;
  late Widget toast;
  late String type;
  bool notificationLevel = true;

  getShared() async {
    var al = await SharedPrefs.readSingleString('access_level');
    setState(() {
      isAccessLevel = al;
    });
    print(al);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fToast = FToast();
    fToast.init(context);

    getShared();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.whiteColor,
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.whiteColor,
            padding: EdgeInsets.symmetric(
                horizontal: DeviceUtils.getScaledWidth(context, scale: 0.04)),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'First Name',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.2),
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Montserrat Regular'),
                                decoration: InputDecorationValues(
                                    hintText: "first name",
                                    prefixIcon: Icons.person),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter first name';
                                  }else if(value.length < 3 ){
                                    return 'First name is too short';
                                  }
                                },
                                onChanged: (val) {
                                  setState(() {
                                    admin.first_name = val;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Last Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontFamily: 'Montserrat Regular',
                                color: AppColors.color10),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width:
                                DeviceUtils.getScaledWidth(context, scale: 0.2),
                            child: TextFormField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat Regular'),
                              decoration: InputDecorationValues(
                                  hintText: "last name",
                                  prefixIcon: Icons.person),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter Last Name';
                                } else if (value.length < 3) {
                                  return "Last name too short";
                                }
                              },
                              onChanged: (val) {
                                setState(() {
                                  admin.last_name = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Email',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.2),
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Montserrat Regular'),
                                decoration: InputDecorationValues(
                                    hintText: "example@abc.com",
                                    prefixIcon: Icons.mail_outline),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter Email';
                                  }
                                },
                                onChanged: (val) {
                                  setState(() {
                                    admin.email = val;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Username',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontFamily: 'Montserrat Regular',
                                color: AppColors.color10),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width:
                                DeviceUtils.getScaledWidth(context, scale: 0.2),
                            child: TextFormField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat Regular'),
                              decoration: InputDecorationValues(
                                  hintText: "username",
                                  prefixIcon: Icons.drive_file_rename_outline),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Enter username';
                                }
                                if (value.length < 3) {
                                  return "Username too short";
                                }
                              },
                              onChanged: (val) {
                                setState(() {
                                  admin.username = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  isAccessLevel == '5'
                      ? Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Admin type',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 13,
                                            fontFamily: 'Montserrat Regular',
                                            color: AppColors.color10),
                                        textAlign: TextAlign.center,
                                      ),
                                      Container(
                                        width: DeviceUtils.getScaledWidth(context,
                                            scale: 0.2),
                                        decoration: const BoxDecoration(
                                          color: AppColors.whiteColor,
                                        ),
                                        child: DropdownButtonFormField<String>(
                                          focusColor: Colors.white,
                                          dropdownColor: Colors.white,
                                          style: const TextStyle(
                                              fontSize: 13.0,
                                              color: AppColors.color10,
                                              fontFamily: 'Montserrat Regular'),
                                          decoration: InputDecorationNoPrefixValues(
                                              hintText: ""),
                                          value: usertypeValue,
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              usertypeValue = newValue!;
                                              admin.user_type = newValue;
                                            });
                                          },
                                          items: <String>['Admin']
                                              .map<DropdownMenuItem<String>>(
                                                  (String value) {
                                            return DropdownMenuItem<String>(
                                              value: value,
                                              child: Text(value),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: DeviceUtils.getScaledWidth(context,
                                      scale: 0.03),
                                ),
                                Expanded(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Access Level',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          fontFamily: 'Montserrat Regular',
                                          color: AppColors.color10),
                                      textAlign: TextAlign.center,
                                    ),
                                    Container(
                                      width: DeviceUtils.getScaledWidth(context,
                                          scale: 0.2),
                                      child: DropdownButtonFormField<String>(
                                        focusColor: Colors.white,
                                        dropdownColor: Colors.white,
                                        value: accessLevel,
                                        style: const TextStyle(
                                            fontSize: 13.0,
                                            fontFamily: 'Montserrat Regular',
                                            color: AppColors.color10),
                                        decoration: InputDecorationNoPrefixValues(
                                            hintText: "hchinwe789@design.com"),
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            accessLevel = newValue!;
                                            admin.access_level = newValue;
                                          });
                                        },
                                        items: <String>['5', '4', '3', '2', '1']
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          SizedBox(
                            height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                          ),
                        ],
                      )
                      : Container(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Password',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.2),
                              child: TextFormField(
                                style: const TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Montserrat Regular'),
                                decoration: InputDecorationValues(
                                    hintText: "******",
                                    prefixIcon: Icons.lock),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter Your Password';
                                  }else if(value.length < 6) {
                                    return 'Password must be atleast 6 characters';
                                  }
                                },
                                onChanged: (val) {
                                  admin.password = val;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: DeviceUtils.getScaledWidth(context, scale: 0.03),
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 13,
                                fontFamily: 'Montserrat Regular',
                                color: AppColors.color10),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width:
                                DeviceUtils.getScaledWidth(context, scale: 0.2),
                            child: TextFormField(
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat Regular'),
                              obscureText: true,
                              decoration: InputDecorationValues(
                                  hintText: "Password",
                                  prefixIcon: Icons.lock),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please Enter Password';
                                }
                                else if (value != admin.password) {
                                  return "Confirm Password incorrect";
                                }
                              },
                              onChanged: (val) {
                                setState(() {
                                  confirmPassword = val;
                                });
                              },
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  ),

                  RoundedLoadingButton(
                      controller: _btnController,
                      height: 50,
                      borderRadius: 2,
                      color: AppColors.appPrimaryColor,
                      successColor: AppColors.appPrimaryColor,
                      child: const Center(
                        child: Text(
                          'Create Admin',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'Montserrat Regular',
                              color: AppColors.whiteColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      onPressed: () async {
                        if(_formKey.currentState!.validate()){
                          _btnController.reset();
                          if ( await adminController
                              .createAdmin( admin )) {
                            setState(() {
                              notificationLevel = true;
                            });
                            toast = toastNotify(adminController.message.value, notificationLevel);
                            callToastNotify(fToast, toast);
                            Navigator.pop(context);
                            widget.getAdmins();
                            _btnController.reset();

                          } else {
                            setState(() {
                              notificationLevel = false;
                            });
                            toast = toastNotify(adminController.message.value, notificationLevel);
                            callToastNotify(fToast, toast);
                            _btnController.reset();
                          }
                        }else {
                          _btnController.reset();
                        }
                      }),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
