import 'package:dilivery_app/screens/help/constants.dart';
import 'package:dilivery_app/screens/home/Taps/new_orders.dart';
import 'package:flutter/material.dart';

import 'Taps/open_orders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>  with TickerProviderStateMixin {

  TabController ?_tabController;

  final List<Tab> listTab = [
    Tab(icon: Text('NEW',style: TextStyle(color: Colors.black,fontSize: 16),)),
    Tab(icon: Text('OPENED',style: TextStyle(color: Colors.black,fontSize: 16),)),
 //   Tab(text: 'Women'),
  ];

  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: listTab.length, vsync: this);
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar
          (
          backgroundColor: Colors.white,
          title: Text("Orders", style: TextStyle(color: Colors.black),),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),onPressed: (){Navigator.pop(context);},),
          bottom: TabBar(
            controller: _tabController,
            indicatorWeight: 4,
            indicatorColor: kColorPrimary,
            tabs: listTab,
          ),
        ),
        endDrawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: Column(
            // Important: Remove any padding from the ListView.
            children: [
              // const DrawerHeader(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //   ),
              //   child: Text('Drawer Header'),
              // ),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                   "assets/images/t.png",
                    fit: BoxFit.fill,
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
              SizedBox(height: 50,),
              ListTile(
                title: Row(
                  children: [
                    const Icon(Icons.home_outlined),
                    SizedBox(width: 10,),
                    const Text('Home'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(Icons.notifications_none),
                    SizedBox(width: 10,),
                    const Text('Notification'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(Icons.settings),
                    SizedBox(width: 10,),
                    const Text('Account Setting'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(Icons.lock_outline),
                    SizedBox(width: 10,),
                    const Text('Password Setting'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(Icons.settings_applications),
                    SizedBox(width: 10,),
                    const Text('Support'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Row(
                  children: [
                    const Icon(Icons.logout),
                    SizedBox(width: 10,),
                    const Text('Logout'),
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IndexedStack(
              children: [
                TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    NewOrders(),
                  OpenedOrders(),
                  //  Women(),
                  ],
                ),
              ],
            ),
          )),
        )
    );
  }
}
