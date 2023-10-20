import 'package:flutter/material.dart';
import 'package:payment/view/screen/book_mark.dart';
import 'package:payment/view/screen/home.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../widget/app_bar_icon.dart';

class CustomButtomNavBar extends StatefulWidget {
  const CustomButtomNavBar({super.key});

  @override
  State<CustomButtomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomButtomNavBar> {
   late PersistentTabController _controller;
  late bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
    
  }
  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      BookMark(),
      Container(),
    
      // MainScreen(
      //   hideStatus: _hideNavBar,
      //   onScreenHideButtonPressed: () {
      //     setState(() {
      //       _hideNavBar = !_hideNavBar;
      //     });
      //   },
      // ),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: "Home",
        activeColorSecondary: Colors.white,
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bookmark_border_outlined),
        title: ("fovarite"),
        activeColorSecondary: Colors.white,

        activeColorPrimary: Colors.teal,
        inactiveColorPrimary: Colors.grey,
      ),
      
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_outline_outlined),
        title: ("profile"),
        activeColorSecondary: Colors.white,
        activeColorPrimary: Colors.indigo,
        inactiveColorPrimary: Colors.grey,
      ),
      
    ];
  }


    
              
              
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomAppBarIcon(icon: Icons.menu),
                  ),
                  actions: [
                     CustomAppBarIcon(
                        icon: Icons.search,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      CustomAppBarIcon(
                        icon: Icons.notifications_active,
                      ),
          const SizedBox(
            width: 6,
          ),
                  ],
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      drawer: const Drawer(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('This is the Drawer'),
            ],
          ),
        ),
      ),
      body: PersistentTabView(
        
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.lightGreen,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: false,
        navBarHeight: kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(0.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        onWillPop: (context) async {
          await showDialog(
            context: context!,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: ElevatedButton(
                child: const Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },
        hideNavigationBar: _hideNavBar,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            borderRadius: BorderRadius.circular(20.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style7, // Choose the nav bar style with this property
      ),
    );
  }
}






