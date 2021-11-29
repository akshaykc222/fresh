import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:seed_sales/componets.dart';
import 'package:seed_sales/constants.dart';
import 'package:seed_sales/screens/dashbord/componets/dashboard_items.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({ Key? key }) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
   final _advancedDrawerController = AdvancedDrawerController();
  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
        backdropColor: Colors.blueGrey,
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        // boxShadow: <BoxShadow>[
        //   BoxShadow(
        //     color: Colors.black12,
        //     blurRadius: 0.0,
        //   ),
        // ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Scaffold(
        appBar: AppBar(
           leading: IconButton(
            onPressed: _handleMenuButtonPressed,
            icon: ValueListenableBuilder<AdvancedDrawerValue>(
              valueListenable: _advancedDrawerController,
              builder: (_, value, __) {
                return AnimatedSwitcher(
                  duration: Duration(milliseconds: 250),
                  child: Icon(
                    value.visible ? Icons.clear : Icons.menu,
                    key: ValueKey<bool>(value.visible),
                  ),
                );
              },
            ),
          ),
          title:const Text("Fresh",style: TextStyle(fontSize: 20),),backgroundColor: primaryColor,actions:const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],),
        body: Column(
          children:const [
             DashBoardItems()
          ],
        ),
      ),
       drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration:const BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child:const Icon(Icons.flutter_dash),
                ),
                ListTile(
                  onTap: () {},
                  leading:const Icon(Icons.lock),
                  title:const Text('Roles'),
                ),
                ListTile(
                  onTap: () {},
                  leading:const Icon(Icons.account_circle_rounded),
                  title: const Text('Users'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.business),
                  title: const Text('Bussiness'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.category),
                  title: const Text('Categories'),
                ),
                 ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.production_quantity_limits),
                  title: const Text('Products'),
                ),
                 ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.pages),
                  title: const Text('Reports'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.person),
                  title: const Text('Designations'),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.person),
                  title: const Text('Sales'),
                ),
                const Spacer(),
                DefaultTextStyle(
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white54,
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 16.0,
                    ),
                    child:const Text('Terms of Service | Privacy Policy'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
   void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}