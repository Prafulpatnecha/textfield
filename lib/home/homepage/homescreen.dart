import 'package:flutter/material.dart';
import 'package:textfield/utils/globlelist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Page'),
      ),
      body: SizedBox(
        height: h,
        width: w,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ...List.generate(
                textContollerList.length,
                (index) => ListTile(
                  trailing: IconButton(onPressed: () {
                    setState(() {
                      textContollerList.removeAt(index);
                    });
                  }, icon: const Icon(Icons.delete_outline_sharp)),
                  title: TextField(
                    controller: textContollerList[index],
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Skills",
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: () {
              setState(() {
                TextEditingController textController=TextEditingController();
              textContollerList.add(textController);
              });
            },child: const Icon(Icons.add_circle_outline_rounded),),
            const SizedBox(width: 30,),
            FloatingActionButton(onPressed: () {
              setState(() {
                skills='';
              for(int i=0;i<textContollerList.length;i++)
                {
                  skills='$skills ${textContollerList[i].text}';
                }
              // print(skills);
                Navigator.of(context).pushNamed('/view');
              });
            },child: const Icon(Icons.send_rounded),),
          ],
        ),
    );
  }
}
String skills='';