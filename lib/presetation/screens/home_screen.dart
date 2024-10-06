import 'package:flutter/material.dart';
import 'package:task_1/presetation/components/fl_chart.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_1/presetation/screens/data_screen.dart';
import 'package:task_1/presetation/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List tileData = [
      ['Sleep quality', '89', '/100', Icons.local_hotel],
      ['oxygen saturation (SpO2)', '96', '%', Icons.co2]
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: const Text('Home'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const ProfileScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.person_outline,
                  color: Color(0xFF494453),
                ))
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Today',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32,
                  // height: 400,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFF6FAF7),
                    shape: RoundedRectangleBorder(
                      side:
                          const BorderSide(width: 1, color: Color(0xFFBDC9C5)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(
                          'Heart rate',
                          style: TextStyle(
                            color: Color(0xFF1D1A23),
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Text(
                                  '76',
                                  style: TextStyle(
                                    color: Color(0xFF1D1A23),
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'BPM',
                                  style: TextStyle(
                                    color: Color(0xFF6E7A76),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.50,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                color: const Color.fromARGB(26, 55, 74, 69),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 22,
                                  height: 22,
                                  child: SvgPicture.asset(
                                    'assets/icons/heart.svg',
                                    semanticsLabel: 'heart icon',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            'Average over that past 7 days',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1D1A23),
                              fontSize: 11,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              height: 0.13,
                              letterSpacing: 0.50,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: SizedBox(
                          height: 300,
                          width: double.maxFinite,
                          child: CustomLineChart(isShowingMainData: false),
                        ),
                      ),
                      const SizedBox(height: 16)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 32,
                        // height: 400,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFF6FAF7),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFBDC9C5)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                tileData[index][0],
                                style: const TextStyle(
                                  color: Color(0xFF1D1A23),
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        tileData[index][1],
                                        style: const TextStyle(
                                          color: Color(0xFF1D1A23),
                                          fontSize: 22,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      Text(
                                        tileData[index][2],
                                        style: const TextStyle(
                                          color: Color(0xFF6E7A76),
                                          fontSize: 12,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.50,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color:
                                          const Color.fromARGB(26, 55, 74, 69),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          width: 22,
                                          height: 22,
                                          child: Icon(
                                            tileData[index][3],
                                            color: const Color(0xFF374A45),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                'Future data',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF1D1A23),
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.25,
                                ),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 16.0),
                                child: Text(
                                  'Based on your pervious sleep quality scores we will predict how your sleep quality will be in the next couple of months ',
                                  style: TextStyle(
                                    color: Color(0xFF6E7A76),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.50,
                                  ),
                                )),
                            const SizedBox(height: 16),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF005B4E)),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            DataScreen(
                                          tileData: tileData[index],
                                        ),
                                      ));
                                },
                                label: const Text(
                                  'View now',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: const Icon(
                                  Icons.insights,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
