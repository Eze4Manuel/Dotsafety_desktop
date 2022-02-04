import 'package:dotsafety_desktop/app/ui/pages/dashboard.dart';
import 'package:dotsafety_desktop/app/ui/pages/home.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_strings.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:dotsafety_desktop/app/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
import 'package:desktop_window/desktop_window.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final RoundedLoadingButtonController _btnController =
  RoundedLoadingButtonController();


  Future testWindowFunctions() async {
    Size size = await DesktopWindow.getWindowSize();
    print(size);
    await DesktopWindow.setMinWindowSize(Size(1300.0, 800.0));
    // await DesktopWindow.setMaxWindowSize(Size(800,800));
    // await DesktopWindow.resetMaxWindowSize();
    // await DesktopWindow.toggleFullScreen();
    // bool isFullScreen = await DesktopWindow.getFullScreen();
    await DesktopWindow.setFullScreen(true);
    // await DesktopWindow.setFullScreen(false);
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    testWindowFunctions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: DeviceUtils.getScaledWidth(context, scale: 0.5),
            height: DeviceUtils.getScaledHeight(context, scale: 1),
            color: AppColors.tertiaryColor,
            child: Stack(
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/desk_dot.png')),
                 const Center(
                  child: Text(
                    'DotSafety',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 27,
                        fontFamily: 'Montserrat Bold',
                        color: AppColors.appPrimaryColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),


          Container(
            width: DeviceUtils.getScaledWidth(context, scale: 0.5),
            color: AppColors.whiteColor,
            height: DeviceUtils.getScaledHeight(context, scale: 1),
            padding: EdgeInsets.symmetric(horizontal: DeviceUtils.getScaledWidth(context, scale: 0.08)),
            child: Column(
              children: [
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.1),
                ),
                const Text('Welcome',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 35,
                      fontFamily: 'Montserrat Bold',
                      color: AppColors.appPrimaryColor),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.003),
                ),
                const Text('Click as an Officer',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: 'Montserrat Regular',
                      color: AppColors.color10),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.08),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('Username',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Montserrat Regular',
                            color: AppColors.color10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.0),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Montserrat Regular'
                        ),
                        decoration: InputDecorationNoPrefixValues(
                            hintText: "hchinwe789@design.com"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Email';
                          }
                        },
                        onChanged: (val) {
                          setState(() {

                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('Division',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Montserrat Regular',
                            color: AppColors.color10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.0),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Montserrat Regular'
                        ),
                        decoration: InputDecorationNoPrefixValues(
                            hintText: ""),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Email';
                          }
                        },
                        onChanged: (val) {
                          setState(() {

                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('Rank ID',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Montserrat Regular',
                            color: AppColors.color10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.0),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Montserrat Regular'
                        ),
                        decoration: InputDecorationNoPrefixValues(
                            hintText: ""),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Email';
                          }
                        },
                        onChanged: (val) {
                          setState(() {

                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.04),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('Licence',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Montserrat Regular',
                            color: AppColors.color10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.0),
                    ),
                    Expanded(
                      flex: 5,
                      child: TextFormField(
                        style: const TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Montserrat Regular'
                        ),
                        decoration: InputDecorationNoPrefixValues(
                            hintText: ""),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Your Email';
                          }
                        },
                        onChanged: (val) {
                          setState(() {

                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: DeviceUtils.getScaledHeight(context, scale: 0.1),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Expanded(
                      flex: 2,
                      child: Text('',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'Montserrat Regular',
                            color: AppColors.color10),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      width: DeviceUtils.getScaledWidth(context, scale: 0.0),
                    ),
                    Expanded(
                      flex: 5,
                      child: RoundedLoadingButton(
                          controller: _btnController,
                          height: 40,
                          borderRadius: 3,
                          color: AppColors.appPrimaryColor,
                          successColor: AppColors.appPrimaryColor,
                          child: const Center(
                            child: Text(
                              Strings.login,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.whiteColor),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () async {
                              _btnController.reset();
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(builder: (context) => Dashboard()),
                                      (route) => false);
                          }),
                    ),
                  ],
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
