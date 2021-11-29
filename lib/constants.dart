import 'package:flutter/material.dart';

//routes
const String adminPanel = "/";
const String roles = "/roles";
const String userCreation = "/user_creation";
const String business = "/bussiness";
const String services = "/services";
const String category = "/Category";
const String subCategory = "/SubCategory";
const String servicesAdd = "/ServicesAdd";
const String order = "/order";
const String products ="/products";
const String enquiry = "/enquiry";
const String customers = "/customers";
const String designation = "/Designation";
const String reports="/reports";
//strings
const String search = "Search";
const String currentuser = "Current User";
const String rolename = "Role Name";
const String save = "Save";
const String addcompany = "Add company";
const String create = "Create";
const String add = "Add";

//images

//colors
const primaryColor = Color(0xFF46d246);
const secondrayColor = Color(0xFFf2f2f2);
const boxColor = Color(0xFF7A9D96);
const whiteColor =Colors.white;

double fontResize(BuildContext context,double size){
   double unitHeightValue = MediaQuery.of(context).size.height * 0.01;
  return size *unitHeightValue;
}
