import 'package:flutter/material.dart';

void main()=>runApp(
  MaterialApp(
    title:'Flutter Application',
    debugShowCheckedModeBanner: false,
    home:MyHome(),
  ),
);

class MyHome extends StatefulWidget{
  @override
  special createState() => special();
}
class special extends State<MyHome>{
  var appName = 'Instagram';
  int selectIndex = 0;

  void ontapping(int index){
    setState((){
      selectIndex = index;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text(appName),
        backgroundColor:Colors.teal,
      ),
      body:Image(
        image:NetworkImage('https://images.unsplash.com/photo-1675522108963-c1ea024abb8a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMnx8fGVufDB8fHx8&auto=format&w=600&q=60'),
        height:900.0,
        width:1500.0,
        // fit:BoxFit.fitWidth
      ),
      floatingActionButton:FloatingActionButton(
        child:Container(
          child:Icon(Icons.add)
        ),
        onPressed:(){
          print("You added a photo");
        },
        backgroundColor:Colors.teal,
        tooltip:'Add Account',
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor:Colors.teal,
        type:BottomNavigationBarType.fixed,
        items:const<BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home',tooltip:'Home'),
          BottomNavigationBarItem(icon:Icon(Icons.search),label:'Search',tooltip:'Search'),
          BottomNavigationBarItem(icon:Icon(Icons.add_a_photo),label:'Add Photo',tooltip:'Upload Photo'),
          BottomNavigationBarItem(icon:Icon(Icons.face),label:'Face Id',tooltip:'Face Password'),
          BottomNavigationBarItem(icon:Icon(Icons.verified_user),label:'Profile',tooltip:'User Profile'),
        ],
        currentIndex: selectIndex,
        onTap:ontapping,
        selectedItemColor: Colors.white,
        // color:Colors.white,
      ),
    );
  }
}