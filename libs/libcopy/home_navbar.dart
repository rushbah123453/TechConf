import 'package:flutter/material.dart';
import './NavPages/friends.dart';
import './NavPages/home.dart';
import './NavPages/location.dart';
import './profile/profilepage.dart';



class HomeNav extends StatelessWidget {
  static String tag = 'homenav-page';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Bottom Navigation',
      debugShowCheckedModeBanner: false,
     /* theme: new ThemeData(
        primaryColor: Colors.lightBlue ,
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFFFFAD32),
      ),*/
      home: new DashboardScreen(title: 'DevCon'),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  DashboardScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DashboardScreenState createState() => new _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }


  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      /*appBar: new AppBar(
        title: new Text(
          widget.title,
          style: new TextStyle(color: const Color(0xFFFFFFFF)),
        ),
      ),*/
      body: new PageView(
        children: [
          new Home("Home screen"),
          new FullDaySchedule(),

          new Friends("Trending  screen"),
          //new Location("Trending screen"),
          new ProfilePag(),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white70 ,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
                icon: new Icon(
                     Icons.home,
                  color: Colors.grey,

                ),activeIcon: new Icon(

              Icons.home,
              color: Colors.black
            ),
                title: new Text(
                  "Home",
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),activeIcon: new Icon(

                Icons.calendar_today,
                color: Colors.black
            ),
                title: new Text(
                  "Schedule",
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                )),


            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.trending_up,
                  color: Colors.grey,
                ),activeIcon: new Icon(

                Icons.trending_up,
                color: Colors.black
            ),
                title: new Text(
                  "Trending",
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                )),
            new BottomNavigationBarItem(
                icon: new Icon(
                  Icons.person,
                  color: Colors.grey,
                ),activeIcon: new Icon(

                Icons.person,
                color: Colors.black
            ),
                title: new Text(
                  "Profile",
                  style: new TextStyle(
                    color: Colors.black,
                  ),
                ))
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}
