import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uisample/widgets/nav_bar_item_widget.dart';
import 'package:uisample/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static PageController _pageController;


  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _selectPage(int index) {
    if (_pageController.hasClients) _pageController.jumpToPage(index);
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _pages = [
      HomePage(),
      Container(),
      Container(),
      Container(),
    ];
    return Scaffold(

      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: _pages,
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0x202e83f8),
        ),
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/images/instaicon.png'),
          )
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
        color: Colors.black,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          child: BottomAppBar(
            color: Colors.white12,
            elevation: 0,
            child: Container(

              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: NavBarItemWidget(
                      onTap: () {
                        _selectPage(0);
                      },
                      iconData: Icons.home,
                      text: 'home',
                      color: _selectedIndex == 0 ?  Colors.pink : Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: NavBarItemWidget(
                      onTap: () {

                      },
                      iconData: Icons.search,
                      text: 'search',
                      color: _selectedIndex == 1 ?  Colors.pink : Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 1,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: NavBarItemWidget(
                      onTap: () {

                      },
                      iconData: Icons.favorite_border,
                      text: 'message',
                      color: _selectedIndex == 2 ? Colors.pink : Colors.white,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: NavBarItemWidget(
                      onTap: () {
                        _selectPage(3);
                      },
                      iconData: Icons.settings,
                      text: 'settings',
                      color: _selectedIndex == 3 ?  Colors.pink : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _selectedIndex,
    );
  }
}
