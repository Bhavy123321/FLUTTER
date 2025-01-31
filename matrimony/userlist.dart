import 'package:flutter/material.dart';

import 'access_page.dart';

class Userlist extends StatefulWidget {

  Userlist({Key? key, user}) : super(key: key) {
    if (user != null) {
      AccessPage.user.add(user);
    }
  }

  @override
  State<Userlist> createState() => _UserlistState();
}

class _UserlistState extends State<Userlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Matrimonial", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
                hintText: 'search here',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                )),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: AccessPage.user.length,
              itemBuilder: (context, index) {
                final user = AccessPage.user[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    height: 130,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [Icon(Icons.person), Text('${user['username']}')],
                            ),
                            Row(
                              children: [Icon(Icons.person), Text("city")],
                            ),
                            Row(
                              children: [
                                Icon(Icons.person),
                                Text("contact number")
                              ],
                            ),
                            Row(
                              children: [Icon(Icons.person), Text("email")],
                            )
                          ],
                        ),
                        Expanded(
                            child: Column(
                              children: [
                                Icon(Icons.favorite_outlined),
                                Icon(Icons.edit),
                                Icon(Icons.delete)
                              ],
                            ))
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


