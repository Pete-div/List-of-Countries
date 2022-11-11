import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final PageController controller = PageController(initialPage: 0);
  var currenPageValue = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        currenPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                  child: PageView.builder(
                      controller: controller,
                      itemCount: 4,
                      itemBuilder: (ctx, position) {
                        return _buidPageItem(position);
                      }),
                ),
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 17,
                  child: DotsIndicator(
                    dotsCount: 3,
                    position: currenPageValue,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 9.0),
                        activeColor: Colors.red,
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 0,
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      if (currenPageValue > 0) {
                        setState(() {
                          controller.previousPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                          currenPageValue--;
                        });
                      } else {
                        return;
                      }
                    },
                    child: const CircleAvatar(
                      radius: 13,
                      backgroundColor: Color.fromARGB(255, 209, 208, 208),
                      child: Center(
                          child: Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      )),
                    ),
                  ),
                ),
                Positioned(
                  right: 16,
                  bottom: 0,
                  top: 0,
                  child: GestureDetector(
                    onTap: () {
                      if (currenPageValue < 2) {
                        setState(() {
                          controller.nextPage(
                              duration: Duration(seconds: 1),
                              curve: Curves.linear);
                          currenPageValue++;
                        });
                      } else {
                        return;
                      }
                    },
                    child: const CircleAvatar(
                      radius: 15,
                      backgroundColor: Color.fromARGB(255, 209, 208, 208),
                      child: Center(
                          child: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 10),
                child: Column(
                  children: [
                    ListItems(country: 'Population:', value: '  77734'),
                    ListItems(country: 'Official Language:', value: '  77734'),
                    ListItems(country: 'Ethnic group:', value: '  77734'),
                    ListItems(country: 'Motto:', value: '  77734'),
                    SizedBox(
                      height: 20,
                    ),
                    ListItems(country: 'Offcial Language:', value: '  77734'),
                    ListItems(country: 'Capital:', value: '  77734'),
                    ListItems(country: 'Region:', value: '  77734'),
                    ListItems(country: 'Government:', value: '  77734'),
                    SizedBox(
                      height: 20,
                    ),
                    ListItems(country: 'Independent:', value: '  77734'),
                    ListItems(country: 'Area:', value: '  77734'),
                    ListItems(country: 'Currencie:', value: '  77734'),
                    ListItems(country: 'GPD:', value: '  77734'),
                    SizedBox(
                      height: 20,
                    ),
                    ListItems(country: 'Tne Zone:', value: '  77734'),
                    ListItems(country: 'Day format:', value: '  77734'),
                    ListItems(country: 'dAILING Model:', value: '  77734'),
                    ListItems(country: 'Driving slider', value: '  77734'),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class ListItems extends StatelessWidget {
  final String country;
  final String value;
  ListItems({required this.country, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              country,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
            ),
          ],
        ));
  }
}

Widget _buidPageItem(int index) {
  return Padding(
    padding: const EdgeInsets.only(left:6.0,right: 6),
    child: Container(
      height: 200,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/m4.jpg',
          ),
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}
