// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:visa_card_details/detail.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: BackButton(
          color: Colors.black,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Detail_card()),
            );
          },
        ),
        title: Text('Card Detail',
            style: TextStyle(fontSize: 20, color: Colors.black)),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    child: Card(
                      child: SizedBox(
                        height: 250,
                        width: 370,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: 125,
                                  width: 370,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.green.shade600,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(20),
                                            topLeft: Radius.circular(20)),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  top: 20, left: 25),
                                              child: Image.asset(
                                                'images/blogo.png',
                                                height: 45,
                                              )),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 20, left: 155),
                                            child: Image.asset(
                                              'images/visalog.png',
                                              height: 60,
                                            ),
                                          )
                                        ],
                                      )),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 125,
                                  width: 370,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: Color.fromARGB(255, 2, 20, 48),
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20))),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, left: 25),
                                              child: Text('1253 5432',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 20)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 25),
                                              child: Text(
                                                '3521 3090',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 45, left: 167),
                                              child: Text(
                                                'Exp',
                                                style: TextStyle(
                                                    color: Colors.white60,
                                                    fontSize: 17),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 12, left: 167),
                                              child: Text(
                                                '09/24',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 17),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          'Full Name',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                       decoration: InputDecoration(
                          hintText: 'Enter your full name',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Card Number',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 3),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.credit_card),
                          hintText: 'Enter Card Number',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expiry Date',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  height: 50,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'MM/YY',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                            width:
                                20), // Adjust the spacing between Expiry Date and CVV
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CVV',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: SizedBox(
                                  height: 50,
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: 'Enter CVV',
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 105),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Text(
                  'Edit Card',
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 89, 159, 93)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)))),
            ),
          )
        ],
      ),
    );
  }
}
//backgroundColor: Color.fromARGB(255, 97, 156, 100),