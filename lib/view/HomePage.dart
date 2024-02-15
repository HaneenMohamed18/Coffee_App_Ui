import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black45,
                leading: const Icon(
                  Icons.menu_open,
                  size: 30,
                  color: Colors.white,
                ),
                actions: const [
                  Icon(
                    Icons.add_alert_outlined,
                    size: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              backgroundColor: Colors.black87,
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "It's a Great Day for Office",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black45,
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Find Your Coffee...",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.search_outlined),
                          prefixIconColor: Colors.white,
                        ),
                      ),
                    ),
                    const TabBar(
                      dividerColor: Colors.transparent,
                      labelColor: Colors.orangeAccent,
                      indicatorColor: Colors.orangeAccent,
                      tabs: [
                        Tab(
                          text: "Hot Coffee",
                        ),
                        Tab(
                          text: "Cold Coffee",
                        ),
                        Tab(text: "Capuiccino"),
                      ],
                    ),
                    GridView.count(
                        shrinkWrap: true,
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 10,
                        children: [
                          Container(
                              width: 100,
                              height: 150,
                              child: Column(
                                children: [
                                  Image.asset("assets/lattie.png",height: 70,),
                                  Text(
                                    "Lattie",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ),
                                  Text("Best Coffee",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.grey)),
                                  Row(
                                    children: [
                                      Text("\$30"),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Icon(Icons.add),
                                      )
                                    ],
                                  )
                                ],
                              )),
                          Container(
                            color: Colors.white,
                            width: 50,
                          ),
                          Container(
                            color: Colors.white,
                            width: 50,
                          ),
                        ]),
                  ],
                ),
              ),
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                    currentIndex: _selectedIndex,
                    onTap: _onItemTapped,
                    selectedItemColor: Colors.orangeAccent,
                    unselectedItemColor: Colors.grey,
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.home,
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.favorite), label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(
                            Icons.add_alert_outlined,
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.person), label: ""),
                    ]),
              ),
              ),
        ),
      ),
    );
  }
}


// hhhhhhhhhhhhh
//ddddddddddddddd