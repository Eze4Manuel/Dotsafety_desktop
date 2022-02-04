import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:dotsafety_desktop/app/utils/widget_utils.dart';
import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  List tableData = [
    {
      's/n': 1,
      'name': "Williams Azuke",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'williamsazuke@gmail.com',
      'action': '...'
    },
    {
      's/n': 2,
      'name': "Charles Okafor",
      'rank': "Deputy Inspector-General",
      'unit': ' Aviation',
      'location': 'charlesokafor@gmail.com',
      'action': '...'
    },
    {
      's/n': 3,
      'name': "John Paul",
      'rank': "Assistant Commissioner",
      'unit': ' Cybercrime',
      'location': 'johnpaul@gmail.com',
      'action': '...'
    },
    {
      's/n': 4,
      'name': "Williams Azuke",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'williamsazuke@gmail.com',
      'action': '...'
    },
    {
      's/n': 5,
      'name': "Charles Okafor",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'charlesokafor@gmail.com',
      'action': '...'
    },
    {
      's/n': 6,
      'name': "Williams Azuke",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'williamsazuke@gmail.com',
      'action': '...'
    },
    {
      's/n': 7,
      'name': "Charles Okafor",
      'rank': "Deputy Inspector-General",
      'unit': ' Aviation',
      'location': 'charlesokafor@gmail.com',
      'action': '...'
    },
    {
      's/n': 8,
      'name': "John Paul",
      'rank': "Assistant Commissioner",
      'unit': ' Cybercrime',
      'location': 'johnpaul@gmail.com',
      'action': '...'
    },
    {
      's/n': 9,
      'name': "Williams Azuke",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'williamsazuke@gmail.com',
      'action': '...'
    },
    {
      's/n': 10,
      'name': "Charles Okafor",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'charlesokafor@gmail.com',
      'action': '...'
    },
    {
      's/n': 11,
      'name': "Williams Azuke",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'williamsazuke@gmail.com',
      'action': '...'
    },
    {
      's/n': 12,
      'name': "Charles Okafor",
      'rank': "Deputy Inspector-General",
      'unit': ' Aviation',
      'location': 'charlesokafor@gmail.com',
      'action': '...'
    },
    {
      's/n': 13,
      'name': "John Paul",
      'rank': "Assistant Commissioner",
      'unit': ' Cybercrime',
      'location': 'johnpaul@gmail.com',
      'action': '...'
    },
    {
      's/n': 14,
      'name': "Williams Azuke",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'williamsazuke@gmail.com',
      'action': '...'
    },
    {
      's/n': 15,
      'name': "Charles Okafor",
      'rank': "Superintendent",
      'unit': ' Traffic',
      'location': 'charlesokafor@gmail.com',
      'action': '...'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.tertiaryColor,
      height: DeviceUtils.getScaledHeight(context, scale: 1),
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getScaledWidth(context, scale: 0.03),
        vertical: DeviceUtils.getScaledHeight(context, scale: 0.03),
      ),
      child: Column(
        children: [
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.07),
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: AppColors.quartsColor,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: const Text(
                      'Upload File',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.appPrimaryColor),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(
                width: DeviceUtils.getScaledWidth(context, scale: 0.0),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 35,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 13.0, fontFamily: 'Montserrat Regular'),
                    decoration: InputDecorationNoPrefixValues2(
                      hintText: "Doc, Excel, Pdf",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your Email';
                      }
                    },
                    onChanged: (val) {
                      setState(() {});
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.06),
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    color: AppColors.quartsColor,
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    child: const Text(
                      'Genrate Licence',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          fontFamily: 'Montserrat Regular',
                          color: AppColors.appPrimaryColor),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(
                width: DeviceUtils.getScaledWidth(context, scale: 0.0),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0,
                        blurRadius: 35,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextFormField(
                    style: const TextStyle(
                        fontSize: 13.0, fontFamily: 'Montserrat Regular'),
                    decoration: InputDecorationNoPrefixValues2(
                      hintText: "Doc, Excel, Pdf",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your Email';
                      }
                    },
                    onChanged: (val) {
                      setState(() {});
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.07),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: DeviceUtils.getScaledWidth(context, scale: 0.0),
              ),
              Container(
                width: DeviceUtils.getScaledWidth(context, scale: 0.4),
                height: 35,
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 0,
                      blurRadius: 35,
                      offset: Offset(0, 1), // changes position of shadow
                    ),
                  ],
                ),
                child: TextFormField(
                  maxLines: 1,
                  style: const TextStyle(
                      fontSize: 12.0, fontFamily: 'Montserrat Regular'),
                  decoration: InputDecorationNoPrefixValues2(
                    hintText: "",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Your Email';
                    }
                  },
                  onChanged: (val) {
                    setState(() {});
                  },
                ),
              ),
              SizedBox(
                width: DeviceUtils.getScaledWidth(context, scale: 0.0),
              ),
              Container(
                color: AppColors.appPrimaryColor,
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                child: const Text(
                  'Search',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontFamily: 'Montserrat Regular',
                      color: AppColors.whiteColor),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),
          Container(
            height: DeviceUtils.getScaledHeight(context, scale: 0.5),
            child: SingleChildScrollView(
              child: DataTable(

                  sortColumnIndex: 1,
                  sortAscending: true,
                  dataTextStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 13,
                      fontFamily: 'Montserrat Regular',
                      color: AppColors.color10),
                  headingTextStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: 'Montserrat Regular',
                      color: AppColors.appPrimaryColor),
                  dataRowColor: MaterialStateProperty.all(AppColors.whiteColor),
                  headingRowColor: MaterialStateProperty.all(AppColors.quartsColor),
                  columns: <DataColumn>[
                    DataColumn(
                      numeric: true,
                      label: Text("s/n"),
                      onSort: (_, __) {
                        setState(() {
                          tableData.sort((a, b) => a.data["s/n"]
                              .compareTo(b.data["s/n"]));
                        });
                      },
                    ),
                    const DataColumn(
                      label: Text("Name"),

                    ),
                    const DataColumn(
                      label: Text("Rank"),
                    ),
                    const DataColumn(
                      label: Text("Unit"),
                    ),
                    const DataColumn(
                      label: Text("Location"),
                    ),
                    const DataColumn(
                      label: Text("Action"),
                    ),
                  ],
                  rows: tableData
                      .map((data) => DataRow(cells: [
                    DataCell(
                      Text('${data["s/n"] ?? ""}'),
                    ),
                    DataCell(
                      Text('${data["name"] ?? ""}'),
                    ),
                    DataCell(
                      Text('${data["rank"] ?? ""}'),
                    ),
                    DataCell(
                      Text('${data["unit"] ?? ""}'),
                    ),
                    DataCell(
                      Text('${data["location"] ?? ""}'),
                    ),
                    DataCell(
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.edit,
                          size: 15,
                          color: AppColors.appPrimaryColor,),
                          Icon(Icons.delete,
                          size: 15,
                          color: AppColors.color5,)
                        ],
                      ),
                    )
                  ]))
                      .toList()),
            ),
          )
        ],
      ),
    );
  }
}
