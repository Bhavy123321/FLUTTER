import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage_ extends StatelessWidget {
  Homepage_({super.key});

  List<String> name = ["abc", "bcs", "abc", "aed", "jjj"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            label: 'home',
            icon: Icon(CupertinoIcons.home),
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            label: 'like', icon: Icon(CupertinoIcons.light_max)),
        BottomNavigationBarItem(label: 'add', icon: Icon(CupertinoIcons.add)),
        BottomNavigationBarItem(
            label: 'chat', icon: Icon(CupertinoIcons.chart_bar)),
        BottomNavigationBarItem(
            label: 'profile', icon: Icon(CupertinoIcons.profile_circled))
      ]),
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Text("matrimony"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Search Here",
                  prefixIcon: Icon(Icons.search_rounded),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide())),
            ),
          ),
          Container(
            width: double.infinity,
            height: 130,
            child: ListView.builder(
              itemCount: name.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 100,
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/image/background.jpeg"),
                        radius: 40,
                      ),
                      Text(name[index])
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "your intreset",
                  style: TextStyle(fontSize: 20),
                ),
                Icon(Icons.arrow_circle_right_rounded)
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    width: 200,
                    height: 400,
                    child: Card(
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image:
                                        AssetImage("assets/image/image.jpeg"))),
                          ),
                          Container(
                            color: Colors.black.withOpacity(0.4),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "abc",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      'kjhgf',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          CupertinoIcons.heart,
                                          color: Colors.white,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
