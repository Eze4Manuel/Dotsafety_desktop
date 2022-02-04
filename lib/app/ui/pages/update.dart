
import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:flutter/material.dart';


class Update extends StatefulWidget {
  const Update({Key? key}) : super(key: key);

  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getScaledWidth(context, scale: 0.03),
        vertical: DeviceUtils.getScaledHeight(context, scale: 0.08),
      ),
      color: AppColors.quartsColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: DeviceUtils.getScaledWidth(context, scale: 0.3),
                height: DeviceUtils.getScaledWidth(context, scale: 0.1),
                padding: EdgeInsets.symmetric(
                  horizontal: DeviceUtils.getScaledWidth(context, scale: 0.02),
                  vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Comments',
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            fontFamily: 'Montserrat Bold',
                            color: AppColors.appPrimaryColor),
                        ),
                    SizedBox(height: DeviceUtils.getScaledHeight(context, scale: 0.01),),
                    const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit incididunt ut labore et dolore magna consectetur em ipsum ',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.color10),
                    )
                  ],
                ),
              ),

              Container(
                width: DeviceUtils.getScaledWidth(context, scale: 0.3),
                height: DeviceUtils.getScaledWidth(context, scale: 0.1),
                padding: EdgeInsets.symmetric(
                  horizontal: DeviceUtils.getScaledWidth(context, scale: 0.02),
                  vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
                ),
                decoration: const BoxDecoration(
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text('Incident: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontFamily: 'Montserrat Bold',
                              color: AppColors.appPrimaryColor),),
                        Text('Motor Accident',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Montserrat Bold',
                              color: AppColors.color10),),
                      ],
                    ),
                    SizedBox(height: DeviceUtils.getScaledHeight(context, scale: 0.02),),
                    Row(
                      children: const [
                        Text('Name: ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontFamily: 'Montserrat Bold',
                              color: AppColors.appPrimaryColor),),
                        Text('Ibrahim Mohammed',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: 'Montserrat Bold',
                              color: AppColors.color10),),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),

          SizedBox(height: DeviceUtils.getScaledHeight(context, scale: 0.04),),
          Container(
            color: AppColors.whiteColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: DeviceUtils.getScaledWidth(context, scale: 0.02),
                        vertical: DeviceUtils.getScaledHeight(context, scale: 0.02)
                            
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                          Text('Report',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              fontFamily: 'Montserrat Bold',
                              color: AppColors.appPrimaryColor),
                        ),
                         Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit incididunt ut labore et dolore magna consectetur adipiscing elit, incididunt ut consectetur adipiscing elit incididunt ut labore et dolore magna consectetur adipiscing elit, incididunt ut Lorem ipsum ',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontFamily: 'Montserrat Regular',
                              color: AppColors.color10),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: DeviceUtils.getScaledWidth(context,
                      scale: 0.19),
                  height: 230,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/kidnap.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                  child: Container(),
                ),

              ],
            ),
          ),
          SizedBox(height: DeviceUtils.getScaledHeight(context, scale: 0.04),),
          Container(
            width: DeviceUtils.getScaledWidth(context, scale: 0.3),
             padding: EdgeInsets.symmetric(
              horizontal: DeviceUtils.getScaledWidth(context, scale: 0.02),
              vertical: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Action Required',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'Montserrat Bold',
                      color: AppColors.appPrimaryColor),
                ),
                SizedBox(height: DeviceUtils.getScaledHeight(context, scale: 0.01),),
                const Text('Please, See Unit Head for questioning',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Montserrat Regular',
                      color: AppColors.color10),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
