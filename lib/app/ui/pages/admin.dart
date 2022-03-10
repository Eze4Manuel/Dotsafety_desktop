import 'package:dotsafety_desktop/app/controllers/admin_controller.dart';
import 'package:dotsafety_desktop/app/ui/pages/admin/create_admin.dart';
import 'package:dotsafety_desktop/app/ui/pages/admin/edit_admin.dart';
import 'package:dotsafety_desktop/app/ui/theme/app_colors.dart';
import 'package:dotsafety_desktop/app/utils/device_utils.dart';
import 'package:dotsafety_desktop/app/utils/widget_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  final _formKey = GlobalKey<FormState>();
  final AdminController adminController = Get.put(AdminController());

  List adminList = [];
  bool fetched = false;

  Future<void> getAdmins() async {
   await adminController.getAdmins();
   setState(() {
     adminList = adminController.adminList;
     fetched = true;
   });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getAdmins();
  }

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
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                        offset: const Offset(0, 1), // changes position of shadow
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
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
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
                        offset: const Offset(0, 1), // changes position of shadow
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                          offset: const Offset(0, 1), // changes position of shadow
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
                    padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 30),
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
                width: DeviceUtils.getScaledWidth(context, scale: 0.002),
              ),
              GestureDetector(
                onTap: () {
                  _showCreateAdmin(getAdmins);
                },
                child: Container(
                  color: AppColors.appPrimaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 30),
                  child: const Text(
                    'Create Admin',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'Montserrat Regular',
                        color: AppColors.whiteColor),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.01),
          ),

          if (fetched) SizedBox(
            height: DeviceUtils.getScaledHeight(context, scale: 0.5),
            width: DeviceUtils.getScaledWidth(context, scale: 1),
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
                  headingRowColor:
                      MaterialStateProperty.all(AppColors.quartsColor),
                  columns: const <DataColumn>[
                    DataColumn(
                      numeric: true,
                      label: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "ID",
                          textAlign: TextAlign.start,
                        ),
                      ),

                    ),
                    DataColumn(
                      label: Text("Name"),
                    ),
                    DataColumn(
                      label: Text("Email"),
                    ),
                    DataColumn(
                      label: Text("User"),
                    ),
                    DataColumn(
                      label: Text("Username"),
                    ),
                    DataColumn(
                      label: Text("Action"),
                    ),
                  ],
                  rows:  adminList
                      .map((data) =>
                      DataRow(cells: [
                        DataCell(
                          Text('${data['_id']}'),
                        ),
                        DataCell(
                          Text(
                              '${data['first_name']} ${data['last_name']}'),
                        ),
                        DataCell(
                          Text('${data['email']}'),
                        ),
                        DataCell(
                          Text('${data['user_type']}'),
                        ),
                        DataCell(
                          Text('${data['username']}'),
                        ),
                        DataCell(
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => _showEditAdmin(data),
                                child: const Icon(
                                  Icons.edit,
                                  size: 15,
                                  color: AppColors.appPrimaryColor,
                                ),
                              ),
                              GestureDetector(
                                onTap: () => _showDeleteAdmin(data),
                                child: const Icon(
                                  Icons.delete,
                                  size: 15,
                                  color: AppColors.color5,
                                ),
                              )
                            ],
                          ),
                        )
                      ])).toList()
                      ),
            ),
          )
          else Container(
            height: DeviceUtils.getScaledHeight(context, scale: 0.4),
            child: const Align(
              alignment: Alignment.center,
                child: CircularProgressIndicator(
              strokeWidth: 3.0,
              backgroundColor: AppColors.appPrimaryColor,
              color: AppColors.secondaryColor,
            )),
          )
        ],
      ),
    );
  }

  Future<void> _showCreateAdmin(getAdmins) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text('Create Admin'),
          ),
          content: CreateAdmin( getAdmins: getAdmins),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showEditAdmin(data) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: Text('Edit Admin'),
          ),
          content: EditAdmin(admin: data, getAdmins: getAdmins),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _showDeleteAdmin(data) async {
    print(data);
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.center,
          title: const Center(
            child: Text(
              'Are you sure ?',
              style: TextStyle(color: Colors.red),
            ),
          ),
          content: SizedBox(
            width: DeviceUtils.getScaledWidth(context,scale: 0.5),
            height: DeviceUtils.getScaledHeight(context, scale: 0.05),
            child: const Center(child: Text('This will permanently delete this record')),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Delete'),
              onPressed: () async {
                if(await adminController.deleteAdmins(data['_id'])){
                  Navigator.pop(context);
                  setState(() {
                    adminList = adminController.adminList;
                  });
                }
              },
            ),
          ],
        );
      },
    );
  }
}
