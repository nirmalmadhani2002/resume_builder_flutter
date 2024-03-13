import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../data.dart';

class Workspace extends StatefulWidget {
  const Workspace({super.key});

  @override
  State<Workspace> createState() => _WorkspaceState();
}

class _WorkspaceState extends State<Workspace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // here the desired height
        child: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child:
                const Icon(Icons.arrow_back_ios, size: 25,),
          ),
          centerTitle: true,
          title: const Text(
            "Resume Workspace",
            style: TextStyle(fontSize: 25, ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                child: const Text(
                  "Build Options",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                color: Colors.grey.shade200,
                width: double.infinity,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, 'contactinfo');
                        },
                        child: Card(
                          child: Container(
                            width: 360,
                            height: 60,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  width: 50,
                                  height: 50,
                                  child: Image.asset(
                                      'assets/images/contact-info.png'),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 170,
                                  height: 60,
                                  child: Text(
                                    "Contact info",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                SizedBox(
                                  width: 80,
                                ),
                                Icon(
                                  Icons.navigate_next,
                                  size: 35,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('assets/images/briefcase.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 220,
                                height: 60,
                                child: Text(
                                  "Carrier Objective",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 28,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 10, right: 20, bottom: 10, left: 10),
                                width: 50,
                                height: 50,
                                child: Image.asset('assets/images/user.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 200,
                                height: 60,
                                child: Text(
                                  "Personal Details",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 35,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    'assets/images/mortarboard.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 130,
                                height: 60,
                                child: Text(
                                  "Eduction",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 115,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('assets/images/thinking.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 170,
                                height: 60,
                                child: Text(
                                  "Experiences",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 76,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child: Image.asset('assets/images/skill.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 220,
                                height: 60,
                                child: Text(
                                  "Technical Skilles",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child: Image.asset('assets/images/project.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 130,
                                height: 60,
                                child: Text(
                                  "Projects",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 115,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('assets/images/experience.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 190,
                                height: 60,
                                child: Text(
                                  "Achievements",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 55,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child:
                                    Image.asset('assets/images/handshake.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 150,
                                height: 60,
                                child: Text(
                                  "References",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 95,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Container(
                          width: 360,
                          height: 60,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 50,
                                height: 50,
                                child: Image.asset(
                                    'assets/images/declaration.png'),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 180,
                                height: 60,
                                child: Text(
                                  "Achievements",
                                  style: TextStyle(fontSize: 25),
                                ),
                              ),
                              SizedBox(
                                width: 65,
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 35,
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
