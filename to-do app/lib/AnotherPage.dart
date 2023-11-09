import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:something_new/ToDo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TimeData.dart';
import "DayData.dart";
import 'taskData.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key});

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 225, 241, 255),
      appBar: AppBar(
          // backgroundColor: Colors.blue,
          elevation: 0,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (
                      context,
                      animation1,
                      animation2,
                    ) =>
                        const ToDo(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color.fromARGB(255, 107, 102, 102),
                size: 25,
              ),
            ),
            const SizedBox(width: 282),
            Container(
              margin: const EdgeInsets.only(right: 15),
              child: TextButton(
                onPressed: () {},
                child: const Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 100, 94, 94),
                  size: 30,
                ),
              ),
            ),
          ],
          backgroundColor: Color.fromARGB(255, 225, 241, 255)),
      body: Container(
        margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Tuesday, 5 Oct",
                  style: GoogleFonts.poppins(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 109, 103, 103),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Container(
              height: 95,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...dayData.map((data) {
                      return (Container(
                        margin: const EdgeInsets.only(right: 30),
                        padding: const EdgeInsets.only(top: 13),
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          // color: const Color.fromARGB(255, 251, 253, 255)),
                          color: data.dayNumber == '3'
                              ? const Color.fromARGB(255, 138, 197, 246)
                              : const Color.fromARGB(255, 251, 253, 255),
                        ),
                        child: Column(
                          children: [
                            Text(data.dayNumber,
                                style: GoogleFonts.poppins(
                                  fontSize: 17,
                                )),
                            const SizedBox(height: 15),
                            Text(data.whichDay,
                                style: GoogleFonts.poppins(fontSize: 17)),
                          ],
                        ),
                      ));
                    })
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    ...timeData.map((data) {
                      return (Container(
                        margin: const EdgeInsets.only(bottom: 40),
                        child: Text(data.time,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                            )),
                      ));
                    })
                  ],
                ),
                Column(
                  children: [
                    ...taskData.map(
                      (data) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 171, 217, 255),
                              borderRadius: BorderRadius.circular(10)),
                          height: data.hour == 1 ? 90 : 140,
                          width: 320,

                          // margin: const EdgeInsets.only(top: 20),
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.fromLTRB(0, 0, 20, 40),
                          child: Expanded(
                              child: ListView(
                            physics: const ScrollPhysics(),
                            children: const [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [],
                              )
                            ],
                          )),
                        );
                      },
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
