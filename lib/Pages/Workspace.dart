import 'dart:math';

import 'package:flutter/material.dart';

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
                const Icon(Icons.arrow_back_ios, size: 35, color: Colors.white),
          ),
          centerTitle: true,
          title: const Text(
            "Resume Workspace",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Theme.of(context).primaryColor,
                child: const Text(
                  "Build Options",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                color: Colors.grey.shade200,
                width: double.infinity,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final Map<String, dynamic> item = data[index];
                    return Card(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('dataPage', arguments:e);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: double.infinity,
                              height: 60,
                              child: Row(
                                children: [
                                  Spacer(),
                                  SizedBox(
                                    width: 50,
                                    height: 50,
                                    child: Image.asset(
                                      "${item['images']}",
                                    ),
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text(
                                    '${item['name']}',
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                  Spacer(flex: 7),
                                  Icon(
                                    item['icon'],
                                    size: 35,
                                  ),
                                  Spacer(),
                                ],
                              )),
                        ),
                      ),
                    );
                  },
                ),
              )),
        ],
      ),
    );
  }
}
