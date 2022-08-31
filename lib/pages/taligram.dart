import 'package:flutter/material.dart';


import 'demopage.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  var currentIndex = 0; 

  get index1 => null;

  @override
  Widget build(BuildContext context) {

   
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
          _sheet(icon:Icons.search, text:"search",index:0),
          _sheet(icon:Icons.add, text:"Add",index:1),
          _sheet(icon:Icons.home, text:"Home",index:2),
          ],
          ),
          ),
      drawer:const DemoPage(),
      appBar: AppBar(
        actions: [
          _button()
        ],
        ),
        body: _page(),
    );
    
  }
  
  _button() {
    return PopupMenuButton(itemBuilder: (context){
          return[
            const PopupMenuItem(
              child: Text("First"),
        ),
        const PopupMenuItem(child: Text("Second"),
        ),
        const PopupMenuItem(child: Text("third"),
        ),
        ];
        },
        );
  }
  
  _sheet({required IconData icon, required String text, required int index}) {
     return Expanded(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(onPressed: (){
          setState(() {
           currentIndex = index;
            });
        },
       
        icon:Icon
        (icon,color:currentIndex== index?Colors.blue:Colors.black ,
        ),),
        Text(text.toString(),style: TextStyle(color: Colors.black),),
      ],
    ),
    );
  }
  
  _page() {
    switch(currentIndex){
      
      // case 0:
      // return (biji file nu name();),
      // case 1:
      // return (triji file nu name();),
      // case 2:
      // return (chothi file nu name();),
    }
  }
}