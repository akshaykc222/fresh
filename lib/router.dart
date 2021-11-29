import 'package:flutter/material.dart';
import 'package:seed_sales/screens/dashbord/body.dart';

import 'constants.dart';

class RouterPage {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case adminPanel:
        return MaterialPageRoute(builder: (_) => const DashBoard());
      // case roles:
      //   return MaterialPageRoute(builder: (_) => const UserRoles());
      // case userCreation:
      //   return MaterialPageRoute(builder: (_) => const UserCreation());
      // case business:
      //   return MaterialPageRoute(builder: (_) => const Bussiness());
      // case services:
      //   return MaterialPageRoute(builder: (_) => const Services());
      // case products:
      //   return MaterialPageRoute(builder: (_) => const Products());
      // case subCategory:
      //   return MaterialPageRoute(builder: (_) => const SubCategory());
      // case servicesAdd:
      //   return MaterialPageRoute(builder: (_) => const ServicesAdd());
      // case order:
      //   return MaterialPageRoute(builder: (_) => const OrderProducts());
      // case enquiry:
      //   return MaterialPageRoute(builder: (_) => const Enquiry());
      // case customers:
      //   return MaterialPageRoute(builder: (_) => const Customers());
      // case designation:
      //   return MaterialPageRoute(builder: (_) => const Designations());
      // case reports:
      //   return MaterialPageRoute(builder: (_) => const Reports());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
