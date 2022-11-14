import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:i_country/provider.dart';
import 'package:i_country/screens/dashboard/components/button_widget.dart';
import 'package:i_country/screens/dashboard/components/capital_name.dart';
import 'package:i_country/screens/dashboard/components/city_name.dart';
import 'package:i_country/screens/dashboard/components/picture_container.dart';
import 'package:i_country/screens/details_screen/index.dart';
import 'package:provider/provider.dart';

import '../../../model/country_model.dart';
import '../../details_screen/component/body.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late TextEditingController _searchKey = TextEditingController();
  late final FocusNode _focusNode;
  List<Country> countryData = [];
  List<Country> finalList = [];
  String searchKey = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _searchKey = TextEditingController();
    _focusNode = FocusNode();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getData();
    DashboardProvider().fetchListOfCountries().then((List<Country> data) {
      setState(() {
        finalList = data;
      });
    });
  }

  Future<void> getData() async {
    final dashboardProvider = DashboardProvider();
    List<Country> countryList = await dashboardProvider.fetchListOfCountries();
    countryData = countryList;
    print('oook${countryData}');
    countryList.sort((a, b) {
      return a.name!.common!
          .toLowerCase()
          .compareTo(b.name!.common!.toLowerCase());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _searchKey.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Explore',
                    style: const TextStyle(
                        fontFamily: 'Scoth-Brace-Demo.ttf',
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0),
                    child: const CircleAvatar(
                      radius: 2,
                      backgroundColor: Color.fromRGBO(255, 108, 0, 1),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.light_mode_outlined,
                  size: 32,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color.fromRGBO(242, 244, 247, 1),
          ),
          child: TextField(
            controller: _searchKey,
            focusNode: _focusNode,
            onChanged: (v) {
              setState(() {
                searchKey = v;
              });
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 16.0, top: 16, bottom: 16),
                child: Icon(Icons.search),
              ),
              focusColor: Colors.transparent,
              fillColor: Colors.transparent,
              hintText: 'Search Country',
              hintStyle: TextStyle(
                fontFamily: 'FontsFree-Net-sddd4 (1)',
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {},
              child: Button(
                text: 'EN',
                icon: Icon(
                  Icons.language_outlined,
                  size: 19,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Button(
                text: 'FILTER',
                icon: Image.asset(
                  'assets/images/filter.png',
                  width: 16,
                  height: 15,
                ),
              ),
            ),
          ],
        ),
        finalList.isNotEmpty
            ? searchKey.isNotEmpty
                ? suggestionWidget(searchKey)
                : Padding(
                    padding: const EdgeInsets.only(top: 3.0, bottom: 3),
                    child: GestureDetector(
                      onTap: () {},
                      child: RefreshIndicator(
                        onRefresh: getData,

                        //TextWidget(text: 'Loading data...')
                        child: Flexible(
                          child: ListView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              itemCount: finalList.length,
                              itemBuilder: (ctx, i) {
                                return
                                 Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailsScreen(
                                                      lists: finalList[i])));
                                    },
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 16),
                                          child: PictContainer(
                                              png: finalList[i].flags!.png ?? '',),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            NameCity(text:   finalList[i].name!.common ??
                                                      '',
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                           Capital(text1: finalList[i].capital.toString(),)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ),
                  )
            : const Center(child: CircularProgressIndicator()),
      ]),
    ));
  }

  suggestionWidget(String query) {
    final List<Country> suggestionList = query.isEmpty
        ? []
        : finalList.where((Country state) {
            String getCountryName = state.name!.common!.toLowerCase();
            String getCountryCapital = state.capital!
                .toString()
                .replaceAll('[', '')
                .replaceAll(']', '');
            String _query = query.toLowerCase();
            bool matchesName = getCountryName.contains(_query);
            bool matchesCapital = getCountryCapital.contains(_query);

            return (matchesName || matchesCapital);
          }).toList();

    return Flexible(
      child: ListView.builder(
          itemCount: suggestionList.length,
          itemBuilder: (context, i) {
            Country searchedCountry = Country(
              name: suggestionList[i].name,
              capital: suggestionList[i].capital,
              flags: suggestionList[i].flags,
              coatOfArms: suggestionList[i].coatOfArms,
              maps: suggestionList[i].maps,
              population: suggestionList[i].population,
              region: suggestionList[i].region,
              languages: suggestionList[i].languages,
              area: suggestionList[i].area,
              timezones: suggestionList[i].timezones,
              idd: suggestionList[i].idd,
              car: suggestionList[i].car,
              independent: suggestionList[i].independent,
              subregion: suggestionList[i].subregion,
              startOfWeek: suggestionList[i].startOfWeek,
              currencies: suggestionList[i].currencies,
            );
            return
              Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              DetailsScreen(lists: finalList[i])));
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: PictContainer(
                        png: finalList[i].flags!.png ?? '',
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        NameCity(
                          text: finalList[i].name!.common ?? '',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Capital(
                          text1: finalList[i].capital.toString(),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          
          
          }),
    );
  }
}





