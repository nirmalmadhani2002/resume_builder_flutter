import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  final String item;

  const DataPage({super.key, required this.item});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  @override
  Widget build(BuildContext context) {
    String e = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor:Theme.of(context).primaryColor,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: Text("${e}",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
