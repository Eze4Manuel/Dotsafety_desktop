import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { cctv, map }

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String isSelected = 'Home';
  List<String> imageList = [
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
    "assets/images/img4.png",
    "assets/images/img5.png",
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
    "assets/images/img4.png",
    "assets/images/img5.png",
    "assets/images/img1.png",
    "assets/images/img2.png",
    "assets/images/img3.png",
    "assets/images/img4.png",
    "assets/images/img5.png"
  ];

  SingingCharacter? _character = SingingCharacter.cctv;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: DeviceUtils.getScaledHeight(context, scale: 1),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: DeviceUtils.getScaledWidth(context, scale: 0.03),
                vertical: DeviceUtils.getScaledHeight(context, scale: 0.03),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            DeviceUtils.getScaledHeight(context, scale: 0.008),
                        horizontal:
                            DeviceUtils.getScaledWidth(context, scale: 0.02)),
                    decoration: const BoxDecoration(
                        color: AppColors.appPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    child: const Text(
                      'Nearby',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.whiteColor),
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.02),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            DeviceUtils.getScaledHeight(context, scale: 0.008),
                        horizontal:
                            DeviceUtils.getScaledWidth(context, scale: 0.02)),
                    decoration: const BoxDecoration(
                        color: AppColors.appPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    child: const Text(
                      'State',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.whiteColor),
                    ),
                  ),
                  SizedBox(
                    width: DeviceUtils.getScaledWidth(context, scale: 0.02),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            DeviceUtils.getScaledHeight(context, scale: 0.008),
                        horizontal:
                            DeviceUtils.getScaledWidth(context, scale: 0.02)),
                    decoration: const BoxDecoration(
                        color: AppColors.appPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(2))),
                    child: const Text(
                      'Nationwide',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.whiteColor),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.02),
            ),
            Container(
              color: AppColors.quartsColor,
              padding: EdgeInsets.symmetric(
                  vertical: DeviceUtils.getScaledHeight(context, scale: 0.04),
                  horizontal: DeviceUtils.getScaledWidth(context, scale: 0.02)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Report',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        fontFamily: 'Montserrat Regular',
                        color: AppColors.appPrimaryColor),
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.015),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.07),
                              height: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/kidnap.png"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(),
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.12),
                              child: const Center(
                                child: Text('Kidnap'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.07),
                              height: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/accident.png"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(),
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.12),
                              child: const Center(
                                child: Text('Accident'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.07),
                              height: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/police.png"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(),
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.12),
                              child: const Center(
                                child: Text('Police Brutality'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.015),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.07),
                              height: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/stopNsearch.png"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(),
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.12),
                              child: const Center(
                                child: Text('Stop and Search'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.07),
                              height: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/images/drug.png"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(),
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.12),
                              child: const Center(
                                child: Text('Drug Trafficking'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.07),
                              height: 90,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/bunkery.png"),
                                  fit: BoxFit.cover,
                                  alignment: Alignment.topCenter,
                                ),
                              ),
                              child: Container(),
                            ),
                            Container(
                              width: DeviceUtils.getScaledWidth(context,
                                  scale: 0.12),
                              child: const Center(
                                child: Text('Illegal Bunkering'),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: DeviceUtils.getScaledHeight(context, scale: 0.06),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: DeviceUtils.getScaledHeight(context, scale: 0.0),
                  horizontal: DeviceUtils.getScaledWidth(context, scale: 0.03)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(
                        _character == SingingCharacter.cctv ? 'CCTV' : 'Map',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            fontFamily: 'Montserrat Regular',
                            color: AppColors.appPrimaryColor),
                      ),
                      Row(
                        children: [
                          Radio<SingingCharacter>(

                            activeColor: AppColors.appPrimaryColor,
                            value: SingingCharacter.cctv,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                print(value);
                                _character = value;
                              });
                            },
                          ),
                          Radio<SingingCharacter>(
                            activeColor: AppColors.appPrimaryColor,
                            value: SingingCharacter.map,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: DeviceUtils.getScaledHeight(context, scale: 0.02),
                  ),
                  Container(
                    child: _character == SingingCharacter.cctv
                        ? GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 5),
                            itemCount: imageList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children: [
                                  Container(
                                      color: AppColors.color3,
                                      margin: const EdgeInsets.all(3),
                                      child: Image.asset(
                                        imageList[index],
                                        fit: BoxFit.cover,
                                        width: DeviceUtils.getScaledWidth(
                                            context,
                                            scale: 1),
                                        height: DeviceUtils.getScaledHeight(
                                            context,
                                            scale: 1),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.image,
                                          color: AppColors.color2,
                                          size: 25,
                                        )),
                                  ),
                                ],
                              );
                            },
                          )
                        : Container(
                      padding: EdgeInsets.only(bottom: DeviceUtils.getScaledHeight(context, scale: 0.05)),
                      child: Image.asset(
                        'assets/images/maps.png',

                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
