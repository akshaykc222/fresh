import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seed_sales/componets.dart';
import 'package:seed_sales/screens/roles/componets/roles_list.dart';

import '../../../constants.dart';

class RoleFields extends StatefulWidget {
  @override
  const RoleFields({Key? key}) : super(key: key);
  _RoleFieldsState createState() => _RoleFieldsState();
}

class _RoleFieldsState extends State<RoleFields> {
  final List<String> permissionList = [
    "Role",
    "Create user",
    "Bussiness",
    "Services",
    "Products",
    "Reports"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            columTextFileds(context),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                "Add Permissions",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: permissionList.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, index) {
                  return UserRolesPermission(
                      titlePermission: permissionList[index]);
                })
          ],
        ),
      ),
    );
  }
}

Widget columTextFileds(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.pushNamed(context, roleList);
    },
    child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: TextFormField(
          decoration: const InputDecoration(
              labelText: rolename,
              floatingLabelBehavior: FloatingLabelBehavior.auto,
              hintText: rolename,
              border: UnderlineInputBorder()),
        )),
  );
}

class UserRolesPermission extends StatefulWidget {
  const UserRolesPermission({Key? key, required this.titlePermission})
      : super(key: key);

  final String titlePermission;

  @override
  State<UserRolesPermission> createState() => _UserRolesPermissionState();
}

class _UserRolesPermissionState extends State<UserRolesPermission> {
  bool create = false;
  bool delete = false;
  bool edit = false;
  bool view = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), //color of shadow
                spreadRadius: 5, //spread radius
                blurRadius: 7, // blur radius
                offset: const Offset(0, 2),
              )
            ]),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(Icons.phone_android_outlined),
                  const Text(
                    "Screen name",
                    style: TextStyle(color: Colors.black),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Text(
                    widget.titlePermission,
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),
            ),
            spacer(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "View",
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Switch(
                      value: view,
                      onChanged: (value) {
                        setState(() {
                          view = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Create",
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Switch(
                      value: create,
                      onChanged: (value) {
                        setState(() {
                          create = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Edit",
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Switch(
                      value: edit,
                      onChanged: (value) {
                        setState(() {
                          edit = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Column(
                  children: [
                    const Text(
                      "Delete",
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Switch(
                      value: delete,
                      onChanged: (value) {
                        setState(() {
                          delete = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
