import 'package:flutter/material.dart';
import 'package:lab/matrimony/addUser.dart';
import 'package:lab/matrimony/userlist.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

Widget userWidget(String name,Color text, BuildContext context,IconData icon,Color data) {
  return Card(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
         icon,
          color:data,
          size: 55,
        ),
        Text(
          "$name",
          style: TextStyle(color: text, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

class _DashboardState extends State<Dashboard> {
  List<String> names= ["Add User","User List","Favourite","About Us"];
  List<Color>ts =[Colors.blue,Colors.black,Colors.red,Colors.grey];
  List<IconData> icons1=[Icons.add,Icons.list_alt,Icons.favorite,Icons.person];
  List<Color> colour=[Colors.blue,Colors.black,Colors.red,Colors.grey];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DrawerHeader(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircleAvatar(), Text("name",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)],
              ))
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text(
            "Welcome To Metrimony App",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.builder(
          itemCount: 4,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Adduser(),
                          ));
                    }
                    else if(index==1){
                      Navigator.push((context), MaterialPageRoute(builder: (context)=>Userlist()));
                    }
                  },
                  child: userWidget(names[index], ts[index],context,icons1[index],colour[index])),
            );
          },
        ));
  }
}
