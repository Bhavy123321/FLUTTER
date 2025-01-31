import 'package:flutter/material.dart';
import 'package:lab/matrimony/userlist.dart';

class Adduser extends StatefulWidget {
  Adduser({super.key});

  @override
  State<Adduser> createState() => _AdduserState();
}

class _AdduserState extends State<Adduser> {
  GlobalKey<FormState> _key = GlobalKey();
  TextEditingController nameCon = TextEditingController();
  TextEditingController addCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();
  TextEditingController numCon = TextEditingController();
  List<String> cityList = ["Surat", "Rajkot", "Ahmedabad", "Vadodara"];
  bool isHide = true;
  String? selectedCity; // To store the selected city
  String? gender; // To store the selected gender
  List<String> selectedHobbies = []; // To store selected hobbies

  Map<dynamic, dynamic> user = {};

  // Hobbies list
  List<String> hobbies = ["Reading", "Traveling", "Sports", "Music"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              "Registration",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            )),
        backgroundColor: Colors.redAccent,
      ),
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Username";
                  } else if (value.length < 4) {
                    return "Username must be greater than 4 characters";
                  }
                  return null;
                },
                controller: nameCon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    label: Text("UserName"),
                    hintText: "Enter Username"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Address";
                  }
                  return null;
                },
                controller: addCon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    label: Text("Address"),
                    hintText: "Enter Address Here"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Email";
                  } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                    return "Enter a valid email";
                  }
                  return null;
                },
                controller: emailCon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    label: Text("Email"),
                    hintText: "Enter Email ID Here"),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter Mobile Number";
                  } else if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                    return "Enter a valid 10-digit mobile number";
                  }
                  return null;
                },
                controller: numCon,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    label: Text("Mobile"),
                    hintText: "Enter Your Mobile Number Here"),
              ),
              SizedBox(
                height: 20,
              ),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)),
                  label: Text("City"),
                ),
                value: selectedCity,
                hint: Text("Select a city"),
                items: cityList.map((String city) {
                  return DropdownMenuItem<String>(
                    value: city,
                    child: Text(city),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedCity = newValue;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please select a city";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              // Gender Radio buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Gender: "),
                  Radio<String>(
                    value: 'Male',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  Text("Male"),
                  Radio<String>(
                    value: 'Female',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  Text("Female"),
                  Radio<String>(
                    value: 'Other',
                    groupValue: gender,
                    onChanged: (value) {
                      setState(() {
                        gender = value;
                      });
                    },
                  ),
                  Text("Other"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // Hobbies Checkbox
              Text("Select Hobbies: "),
              Column(
                children: hobbies.map((hobby) {
                  return CheckboxListTile(
                    title: Text(hobby),
                    value: selectedHobbies.contains(hobby),
                    onChanged: (bool? selected) {
                      setState(() {
                        if (selected == true) {
                          selectedHobbies.add(hobby);
                        } else {
                          selectedHobbies.remove(hobby);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              // Row with Save and Reset buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      if (_key.currentState?.validate() ?? false) {
                        user = {
                          'username': nameCon.text.trim(),
                          'address': addCon.text.trim(),
                          'email': emailCon.text.trim(),
                          'contactnumber': numCon.text.trim()
                        };
                        nameCon.clear();
                        addCon.clear();
                        emailCon.clear();
                        numCon.clear();

                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Userlist(user: user),
                        )
                        );
                      }
                    },
                    child: Text("Save"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Reset all fields
                      _key.currentState?.reset();
                      setState(() {
                        nameCon.clear();
                        addCon.clear();
                        emailCon.clear();
                        numCon.clear();
                        selectedCity = null;
                        gender = null;
                        selectedHobbies.clear();
                      });
                    },
                    child: Text("Reset"),

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
