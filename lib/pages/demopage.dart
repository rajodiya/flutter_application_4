import 'package:flutter/material.dart';


class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return
     Drawer(
        child: ListView(children:[
          DrawerHeader(
            decoration: const BoxDecoration(color: Color.fromARGB(255, 108, 178, 136)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CircleAvatar(),
                    //Text("Yash"),
                    CircleAvatar(),
                    
                  ],
                   ),

                   Row(
                    children:[
                    Column(
                      children: const[
                       Text("Yash"),
                     Text("Rajodiya"),
                     ],
                     ),
                     Icon(Icons.add)
                     ],
                   ),
              ],
            ),
         ),
         const ListTile(title: Text("data"),
         ),
        ],
        ),
      );
    
  }
}