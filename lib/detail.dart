// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Detail_card extends StatefulWidget {
  Detail_card({super.key});

  @override
  State<Detail_card> createState() => _Detail_cardState();
}

class _Detail_cardState extends State<Detail_card> {
  // ignore: non_constant_identifier_names
  List RandomImages = [
    'https://images.unsplash.com/photo-1597223557154-721c1cecc4b0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVtYW4lMjBmYWNlfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg',
    'https://images.unsplash.com/photo-1542909168-82c3e7fdca5c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFjZXxlbnwwfHwwfHw%3D&w=1000&q=80',
    'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/03/GettyImages-1092658864_hero-1024x575.jpg?w=1155&h=1528'
  ];

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text('Details',
              style: TextStyle(fontSize: 20, color: Colors.black)),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SafeArea(
            child: Card(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              )),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SizedBox(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: ListView(children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Hero Website Design',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage:
                                        AssetImage('images/download.jpg'),
                                  ),
                                  SizedBox(width: 7),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Assigned to',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Rudy Grey',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 120),
                                    child: Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.calendar_month)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Due date',
                                              style: TextStyle(
                                                  color: Colors.black54),
                                            ),
                                            Text(
                                              'Aug 22',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 8),
                              child: Text.rich(TextSpan(
                                  text:
                                      "Design an engaging and visually appealing hero section for the Healtie website that effectively communicates the company's values, reliability and commitment to customer care.")),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 15),
                              child: Row(
                                children: [
                                  Text(
                                    'Team Member',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  for (int i = 1; i < RandomImages.length; i++)
                                    Align(
                                      widthFactor: 0.5,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundImage:
                                            NetworkImage(RandomImages[i]),
                                      ),
                                    ),
                                  CircleAvatar(
                                    backgroundColor: Colors.green.shade400,
                                    radius: 25,
                                    child: Icon(Icons.add),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 30),
                              child: Row(
                                children: [
                                  Text(
                                    'Today Update',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 25,),
                            SizedBox(
                              child: Card(
                               margin: EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 60,
                                shadowColor: Colors.black54,
                                child: SizedBox(
                                  width: 470,
                                  height: 110,
                                  child: CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'High',
                                            style: TextStyle(color: Colors.red,backgroundColor: Colors.red.shade50),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 110),
                                          child: Text('Aug 8,2023'),
                                        )
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mobile App Design System',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                            ),
                                            Text("Agatha's Project"),
                                          ],
                                        )
                                      ],
                                    ),
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 16, 116, 53),
                                    autofocus: false,
                                    selected: _value,
                                    dense: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(
                              child: Card(
                                margin: EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 50,
                                shadowColor: Colors.black54,
                                child: SizedBox(
                                  width: 470,
                                  height: 110,
                                  child: CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Low',
                                            style:
                                                TextStyle(color: Colors.green,backgroundColor:Colors.green.shade50),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 110),
                                          child: Text('Aug 8,2023'),
                                        )
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Landing Page Wireframe',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                            ),
                                            Text("Agatha's Project"),
                                          ],
                                        )
                                      ],
                                    ),
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 16, 116, 53),
                                    autofocus: false,
                                    selected: _value,
                                    dense: true,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            SizedBox(
                              child: Card(
                                margin: EdgeInsets.all(5),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                elevation: 50,
                                shadowColor: Colors.black54,
                                child: SizedBox(
                                  width: 470,
                                  height: 110,
                                  child: CheckboxListTile(
                                    controlAffinity:
                                        ListTileControlAffinity.leading,
                                    title: Row(
                                      children: [
                                        TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Medium',
                                            style:
                                                TextStyle(color: Colors.green,backgroundColor:Colors.green.shade50 ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 110),
                                          child: Text('Aug 8,2023'),
                                        )
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Mobile App Design System',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17,
                                                  color: Colors.black),
                                            ),
                                            Text("Agatha's Project"),
                                          ],
                                        )
                                      ],
                                    ),
                                    value: _value,
                                    onChanged: (value) {
                                      setState(() {
                                        _value = value!;
                                      });
                                    },
                                    activeColor:
                                        Color.fromARGB(255, 16, 116, 53),
                                    autofocus: false,
                                    selected: _value,
                                    dense: true,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                    )),
              ),
            ),
          ),
        ));
  }
}
//controlAffinity: ListTileControlAffinity.leading,
// List<bool> checkList = List.generate(3, (bool) => false);