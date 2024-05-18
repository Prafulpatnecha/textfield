import 'package:flutter/material.dart';
import 'package:textfield/home/homepage/homescreen.dart';
class ViewPage extends StatefulWidget {
  const ViewPage({super.key});

  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        child:Column(
          children: [
            const SizedBox(height: 50,),
            const Text('skills',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text(skills.toString(),style: const TextStyle(fontSize: 30,),),
          ],
        ),
      ),
    );
  }
}
