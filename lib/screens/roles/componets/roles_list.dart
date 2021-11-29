import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seed_sales/constants.dart';
import 'package:seed_sales/sizeconfig.dart';

class RoleList extends StatefulWidget {
  const RoleList({Key? key}) : super(key: key);

  @override
  _RoleListState createState() => _RoleListState();
}

class _RoleListState extends State<RoleList> {
  final List<String> roleUserList = [
    "staff",
    "admin",
    "manager",
    "staff",
    "admin",
    "manager",
    "staff",
    "admin",
    "manager",
    "staff",
    "admin",
    "manager",
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 60),
        child: Container(
          color: blackColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                        hintText: "search",
                        labelText: "Search",
                        labelStyle: TextStyle(color: Colors.white),
                        hintStyle: TextStyle(color: Colors.white),
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        fillColor: lightBlack,
                        filled: true),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
          color: blackColor,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: roleUserList.length,
              itemBuilder: (_, index) {
                return UserRoleList(
                    isSelected: true, title: roleUserList[index]);
              },
            ),
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: lightBlack,
        onPressed: () {},
        child: const Center(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class UserRoleList extends StatelessWidget {
  final bool isSelected;
  final String title;
  const UserRoleList({Key? key, required this.isSelected, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 8),
        child: Container(
          height: SizeConfig.blockSizeVertical! * 10,
          decoration: BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(color: Colors.white12, offset: Offset(1, 1))
              ]),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ));
  }
}
