// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task_1/presetation/components/fl_chart.dart';

class DataScreen extends StatelessWidget {
  final List tileData;
  const DataScreen({
    super.key,
    required this.tileData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Future data'),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width - 32,
                  // height: 300,
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          tileData[0].toString(),
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
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  tileData[1].toString(),
                                  style: const TextStyle(
                                    color: Color(0xFF1D1A23),
                                    fontSize: 22,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  tileData[2].toString(),
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
                                    child: Icon(
                                      tileData[3] as IconData,
                                      color: const Color(0xFF374A45),
                                    )),
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
                      const SizedBox(
                        height: 300,
                        width: double.maxFinite,
                        child: CustomLineChart(isShowingMainData: true),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
