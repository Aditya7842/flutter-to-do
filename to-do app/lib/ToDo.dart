import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ListData.dart';
import 'GivenData.dart';
import 'AnotherPage.dart';

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 5,
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: const Color.fromARGB(255, 188, 213, 229),
          height: 70,
          child: Container(
              child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.person_outline_sharp,
                color: Color.fromARGB(255, 122, 119, 119),
                size: 30,
              ),
              Icon(
                Icons.document_scanner_outlined,
                color: Color.fromARGB(255, 122, 119, 119),
                size: 30,
              ),
              SizedBox(width: 70),
              Icon(
                Icons.calendar_today,
                color: Color.fromARGB(255, 122, 119, 119),
                size: 30,
              ),
              Icon(
                Icons.house_outlined,
                color: Color.fromARGB(255, 122, 119, 119),
                size: 30,
              ),
            ],
          ))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 80,
        width: 100,
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 223, 156, 136),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (
                    context,
                    animation1,
                    animation2,
                  ) =>
                      AnotherPage(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ));
          },
          child: const Icon(Icons.add),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Tuesday, 5 Oct',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 109, 102, 102),
                              fontSize: 20)),
                      Row(
                        children: [
                          Text("Hello, Aditya!",
                              style: GoogleFonts.poppins(
                                  color:
                                      const Color.fromARGB(255, 132, 118, 118),
                                  fontSize: 16)),
                          SizedBox(width: 10),
                          Icon(Icons.notification_add,
                              color: const Color.fromARGB(255, 116, 107, 107))
                        ],
                      )
                    ],
                  ),
                  Container(
                    height: 152,
                    child: const Image(
                      image: AssetImage('assets/clock.png'),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 70),
              Column(
                children: [
                  Container(
                    // margin: EdgeInsets.only(top: 20),
                    // margin: const EdgeInsets.only(left: 7),
                    child: Row(
                      children: [
                        Text(
                          'To Do',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: const Color.fromARGB(255, 120, 113, 113)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30, right: 20),
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 14,
                      // childAspectRatio: 2.5 / 2,
                      crossAxisCount: 2,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 147, 237, 255),
                                width: 2.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            color: Color.fromARGB(255, 147, 237, 255),
                          ),
                          // margin: const EdgeInsets.symmetric(
                          //     horizontal: 15, vertical: 15),

                          padding: EdgeInsets.all(31),

                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.laptop_chromebook,
                                    color: Color.fromARGB(255, 15, 189, 224),
                                    size: 45,
                                  ),
                                  SizedBox(width: 3),
                                  Text('Work',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 12, 150, 177),
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    '4 Task',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 12, 150, 177),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 40),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromARGB(255, 12, 150, 177),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(31),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromRGBO(221, 136, 117, 1),
                                width: 2.0),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            color: const Color.fromARGB(255, 221, 136, 117),
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.self_improvement_outlined,
                                    color: Color.fromARGB(255, 174, 95, 94),
                                    size: 45,
                                  ),
                                  Text('Daily Routines',
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 151, 81, 80),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13)),
                                  Text(
                                    '4 Task',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 151, 81, 80)),
                                  ),
                                ],
                              ),
                              SizedBox(width: 1),
                              Icon(Icons.arrow_forward,
                                  color: Color.fromARGB(255, 151, 81, 80))
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(255, 181, 148, 225),
                                width: 2.0),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            color: const Color.fromARGB(255, 181, 148, 225),
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.sports_esports_outlined,
                                    color: Color.fromARGB(255, 130, 78, 161),
                                    size: 45,
                                  ),
                                  Text(
                                    'Free Time',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 84, 47, 106),
                                    ),
                                  ),
                                  Text(
                                    '1 Task',
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 84, 47, 106),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(width: 22),
                              Icon(Icons.arrow_forward,
                                  color: Color.fromARGB(255, 130, 78, 161))
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Color.fromARGB(255, 151, 235, 172),
                                width: 2.0),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30.0),
                            ),
                            color: Color.fromARGB(255, 151, 235, 172),
                          ),
                          // margin: EdgeInsets.fromLTRB(15, 0, 15, 17),
                          // color: Color.fromARGB(255, 151, 235, 172),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.school_outlined,
                                      size: 45,
                                      color:
                                          Color.fromARGB(255, 101, 184, 104)),
                                  Text(
                                    'Education',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 58, 129, 60),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '1 Task',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 58, 129, 60)),
                                  )
                                ],
                              ),
                              SizedBox(width: 22),
                              Icon(
                                Icons.arrow_forward,
                                color: Color.fromARGB(255, 58, 129, 60),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Container(
                margin: const EdgeInsets.only(
                  left: 7,
                  bottom: 30,
                ),
                child: Row(
                  children: [
                    Text('In Progress',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 103, 99, 99),
                            fontSize: 18))
                  ],
                ),
              ),
              ListView(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                children: [
                  ...data.map((content) {
                    return Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 235, 255),
                          borderRadius: BorderRadius.circular(17),
                        ),
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 50),
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(content.message,
                                    style: const TextStyle(
                                        color: Color.fromARGB(
                                            255, 120, 117, 117))),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    const Icon(Icons.watch_later_outlined,
                                        color:
                                            Color.fromARGB(255, 120, 117, 117)),
                                    const SizedBox(width: 10),
                                    Text(content.hours,
                                        style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 120, 117, 117))),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: CircularPercentIndicator(
                                radius: 45.0,
                                lineWidth: 8.0,
                                percent: content.percent / 100,
                                center: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(content.percent.toString()),
                                    const Text('%'),
                                  ],
                                ),
                                backgroundColor:
                                    const Color.fromARGB(82, 255, 255, 255),
                                progressColor:
                                    const Color.fromARGB(255, 124, 196, 255),
                              ),
                            ),
                          ],
                        ));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
