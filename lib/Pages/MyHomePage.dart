import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0), // here the desired height
        child: AppBar(
          centerTitle: true,
          title: const Text(
            "Resume Builder",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pushNamed(context, 'workspace');
        },
        label: Text("New", style: TextStyle(fontSize: 25, color: Colors.white),),
        icon: Icon(
          Icons.add,
          color: Colors.white,
          size: 50,
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
                child: Text(
                  "RESUMES",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              )),
          Expanded(
              flex: 12,
              child: Container(
                color: Colors.grey.shade200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        "assets/images/open-cardboard-box.png",
                      ),
                    ),
                    Text(
                      "No Resumes + Create new resumes.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
