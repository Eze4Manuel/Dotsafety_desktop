import 'package:dotsafety_desktop/app/ui/pages/admin.dart';
import 'package:dotsafety_desktop/app/ui/pages/home.dart';
import 'package:dotsafety_desktop/app/ui/pages/officer.dart';
import 'package:dotsafety_desktop/app/ui/pages/update.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:popup_window/popup_window.dart';


class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  String isSelected = 'Dashboard';

  double windowHeight = 600;



  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(
        child: Column(
          children: [
            Container(
              height: DeviceUtils.getScaledHeight(context, scale: 0.07),
              padding: EdgeInsets.symmetric(
                  vertical: DeviceUtils.getScaledHeight(context, scale: 0.0129)
              ),
              decoration: const BoxDecoration(
                color: AppColors.whiteColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: AppColors.color13,
                      blurRadius: 21.0,
                      offset: Offset(0.0, 1)
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(width: DeviceUtils.getScaledWidth(context, scale: 0.06),),
                        Image.asset('assets/images/logo.png',
                          width: 40,),
                        SizedBox(width: DeviceUtils.getScaledWidth(context, scale: 0.01),),
                        const Text(
                          'DotSafety',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Montserrat Regular',
                              color: AppColors.appPrimaryColor),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [

                        ClipRRect(
                          child: Image.asset('assets/images/logo.png',
                              width: 30),
                        ),
                        SizedBox(width: DeviceUtils.getScaledWidth(context, scale: 0.004),),
                        const Text(
                          'Maureen Gift',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontFamily: 'Montserrat Regular',
                              color: AppColors.color10),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: DeviceUtils.getScaledWidth(context, scale: 0.02),),
                        PopupWindowButton(
                          offset: Offset(MediaQuery.of(context).size.width - 290, windowHeight),
                          buttonBuilder: (BuildContext context) {
                            return Icon(Icons.notifications_none_outlined);
                            // return PopupWindowBtn();
                          },
                          windowBuilder: (BuildContext context, Animation<double> animation,
                              Animation<double> secondaryAnimation) {
                            return FadeTransition(
                              opacity: animation,
                              child: SizeTransition(
                                  sizeFactor: animation,
                                  child: NotificationWindow()
                              ),
                            );
                          },
                          onWindowShow: () {
                            print('PopupWindowButton window show');
                          },
                          onWindowDismiss: () {
                            print('PopupWindowButton window dismiss');
                          },
                        ),
                        SizedBox(width: DeviceUtils.getScaledWidth(context, scale: 0.12),),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              height: DeviceUtils.getScaledHeight(context, scale: 0.9),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: DeviceUtils.getScaledWidth(context, scale: 0.2),
                          height: DeviceUtils.getScaledHeight(context, scale: 1),
                          color: AppColors.quartsColor,
                          child: Column(
                            children: [
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context, scale: 0.09),
                              ),
                              Container(
                                color: isSelected == 'Home' ? AppColors.whiteColor : Colors.transparent,
                                child:  ListTile(
                                  onTap: (){
                                    setState(() {
                                      isSelected = 'Home';
                                    });
                                  },
                                  hoverColor: AppColors.whiteColor,
                                  focusColor: AppColors.whiteColor,
                                  autofocus: true,
                                  selectedColor: AppColors.whiteColor,
                                  leading: Icon(Icons.home, size: 20, color: AppColors.appPrimaryColor,),
                                  title: const Text(
                                    'HOME',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat Bold',
                                        color: AppColors.color10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                              ),
                              Container(
                                color: isSelected == 'Admin' ? AppColors.whiteColor : Colors.transparent,
                                child: ListTile(
                                  onTap: (){
                                    setState(() {
                                      isSelected = 'Admin';
                                    });
                                  },
                                  hoverColor: AppColors.whiteColor,
                                  focusColor: AppColors.whiteColor,
                                  autofocus: true,
                                  selectedColor: AppColors.whiteColor,
                                  leading: Icon(Icons.dashboard_outlined, size: 20, color: AppColors.appPrimaryColor,),
                                  title: const Text(
                                    'ADMIN',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat Bold',
                                        color: AppColors.color10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                              ),
                              Container(
                                color: isSelected == 'Officers' ? AppColors.whiteColor : Colors.transparent,
                                child: ListTile(
                                  onTap: (){
                                    setState(() {
                                      isSelected = 'Officers';
                                    });
                                  },
                                  hoverColor: AppColors.whiteColor,
                                  focusColor: AppColors.whiteColor,
                                  autofocus: true,
                                  selectedColor: AppColors.whiteColor,
                                  leading: Icon(Icons.face, size: 20, color: AppColors.appPrimaryColor,),
                                  title: const Text(
                                    'OFFICERS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat Bold',
                                        color: AppColors.color10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                              ),
                              Container(
                                color: isSelected == 'Update' ? AppColors.whiteColor : Colors.transparent,
                                child: ListTile(
                                  onTap: (){
                                    setState(() {
                                      isSelected = 'Update';
                                    });
                                  },
                                  hoverColor: AppColors.whiteColor,
                                  focusColor: AppColors.whiteColor,
                                  autofocus: true,
                                  selectedColor: AppColors.whiteColor,
                                  leading: const Icon(Icons.refresh, size: 20, color: AppColors.appPrimaryColor,),
                                  title: const Text(
                                    'UPDATE',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat Bold',
                                        color: AppColors.color10),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                              ),
                              Container(
                                color: isSelected == 'Analytics' ? AppColors.whiteColor : Colors.transparent,
                                child: ListTile(
                                  onTap: (){
                                    setState(() {
                                      isSelected = 'Analytics';
                                    });
                                  },
                                  hoverColor: AppColors.whiteColor,
                                  focusColor: AppColors.whiteColor,
                                  autofocus: true,
                                  selectedColor: AppColors.whiteColor,
                                  leading: Icon(Icons.analytics, size: 20, color: AppColors.appPrimaryColor,),
                                  title: const Text(
                                    'ANALYTICS',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        fontFamily: 'Montserrat Bold',
                                        color: AppColors.color10),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: DeviceUtils.getScaledHeight(context, scale: 0.08),
                              ),
                              const ListTile(
                                selectedColor: AppColors.whiteColor,
                                leading: Text(''),
                                title: Text(
                                  'SIGN OUT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      fontFamily: 'Montserrat BOLD',
                                      color: AppColors.color5),
                                ),
                              )
                            ],
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                              child:  Displayer(isSelected)
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class NotificationWindow extends StatefulWidget {
  const NotificationWindow({Key? key}) : super(key: key);

  @override
  _NotificationWindowState createState() => _NotificationWindowState();
}

class _NotificationWindowState extends State<NotificationWindow> {
  List litems = [
    {"icon": "assets/images/noti1.png", "title": "margo Corn has invited you to the project Unittled", "time": "2 mins"},
    {"icon": 'assets/images/noti4.png', "title": "margo Corn has invited you to the project Unittled", "time": "2 hrs"},
    ];

  List yesterDaylitems = [
    {"icon": "assets/images/noti1.png", "title": "margo Corn has invited you to the project Unittled", "time": "23:22pm"},
    {"icon": 'assets/images/noti2.png', "title": "margo Corn has invited you to the project Unittled", "time": "14:30pm"},
    {"icon": 'assets/images/noti3.png', "title": "margo Corn has invited you to the project Unittled", "time": "1:24am"},
    {"icon": 'assets/images/noti4.png', "title": "margo Corn has invited you to the project Unittled", "time": "6:30pm"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.all(Radius.circular(4)),
          boxShadow: [
            BoxShadow(
              color: AppColors.color13  ,
              spreadRadius: 1,
              blurRadius: 20,
              offset: Offset(-3, 3), // changes position of shadow
            ),
          ],
        ),
        width: DeviceUtils.getScaledWidth(context, scale: 0.35),
        height: DeviceUtils.getScaledHeight(context, scale: 0.6),
        margin: EdgeInsets.symmetric(
            vertical: DeviceUtils.getScaledHeight(context, scale: 0.02)
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(
                   20, 20, 20, 5
                ),
                child: Text('Notifications',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'Montserrat Regular',
                      color: AppColors.color10),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: DeviceUtils.getScaledHeight(context, scale: 0.0001),
              ),
              const Divider(
                color: AppColors.color13,
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.001),
                    ),
                    const Text('Today',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.color10),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: litems.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(litems[index]['icon'],
                              width: 30,
                              height: 30,),
                            ),
                            title: Text(litems[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),),
                            trailing: Text(litems[index]['time'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),),
                          );
                        }
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const Text('Yesterday',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.color10),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: DeviceUtils.getScaledHeight(context, scale: 0.01),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: yesterDaylitems.length,
                        itemBuilder: (BuildContext ctxt, int index) {
                          return ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(yesterDaylitems[index]['icon'],
                                width: 30,
                                height: 30,),
                            ),
                            title: Text(yesterDaylitems[index]['title'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),),
                            trailing: Text(yesterDaylitems[index]['time'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat Regular',
                                  color: AppColors.color10),),
                          );
                        }
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



Widget Displayer(isSelected){
  print(isSelected);
  if(isSelected == 'Home'){
    return const Home();
  }else if(isSelected == 'Admin'){
    return const Admin();
  }else if(isSelected == 'Officers'){
    return const Officer();
  }
  else if(isSelected == 'Update'){
    return const Update();
  }
  else{
    return const Home();
  }
}