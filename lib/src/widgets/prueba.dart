/*import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
  }
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  TabController _tabController = TabController(length: 3, vsync: this);
  final int _selectedTabIndex =0;

  @override
  void initState() {
    super.initState();
    //_selectedTabIndex = 0;
    //_tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();

    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children: <Widget>[
          Container(
            height: 160.0,
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.pinkAccent[400],
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: Center(
                    child: Text(
                      "여행 앱 로고",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    ),
                  ),
                ),
                Positioned(
                  top: 80.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1.0),
                          border: Border.all(
                              color: Colors.grey.withOpacity(0.5), width: 1.0),
                          color: Colors.white),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.pinkAccent[400],
                            ),
                            onPressed: () {
                              print("your menu action here");
                              _scaffoldKey.currentState.openDrawer();
                            },
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration.collapsed(
                                hintText: "검색",
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.search,
                              color: Colors.pinkAccent[400],
                            ),
                            onPressed: () {
                              print("your menu action here");
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                Text('회원가입'),
                Text('마이페이지'),
                Text('공지'),
              ],
            ),
          )
          /* Container(
            child: TabBarHome(),
          ),*/
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('회원가입')),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment_ind), title: Text('마이페이지')),
          BottomNavigationBarItem(icon: Icon(Icons.list), title: Text('공지')),
        ],
        onTap: (int tappedIndex) {
          setState(() {
            _selectedTabIndex = tappedIndex;
            _tabController.index = tappedIndex;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        tooltip: '해외 명소',
        icon: Icon(Icons.location_on),
        label: Text("해외"),
        backgroundColor: Colors.orange[600],
        elevation: 10.0,
      ),
    );
  }
}

*/
