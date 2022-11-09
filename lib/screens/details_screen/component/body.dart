import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends GetView {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0),
                  child: Text(
                    'Nigeria',
                    style: TextStyle(
                        color: Color.fromRGBO(28, 25, 23, 1),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.maxFinite,
                child: Image.asset(
                  'assets/images/m4.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 17,
                child:
                    CircleAvatar(radius: 4, backgroundColor: Colors.redAccent),
              ),
              Positioned(
                left: 15,
                bottom: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 13,
                  backgroundColor: Color.fromARGB(255, 209, 208, 208),
                  child: Center(
                      child: Icon(
                    Icons.arrow_back_ios,
                    size: 15,
                  )),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 0,
                top: 0,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Color.fromARGB(255, 209, 208, 208),
                  child: Center(
                      child: Icon(
                    Icons.arrow_forward_ios,
                    size: 13,
                  )),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 12.0, bottom: 10),
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Austrailia:',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              
                            ),
                          ),
                          Text(
                            '  77734',
                            style: TextStyle(
                              color: Color.fromARGB(255, 70, 69, 69),
                              fontSize: 16,fontWeight: FontWeight.w500
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
