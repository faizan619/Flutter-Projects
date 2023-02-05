import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        title: 'Flutter Application',
        debugShowCheckedModeBanner: false,
        home: myhome(),
      ),
    );

class myhome extends StatefulWidget {
  @override
  home createState() => home();
}

class home extends State<myhome> {
  var selecting = 0;

  void tapping(int index) {
    setState(() {
      selecting = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube'),
        backgroundColor: Colors.red,
      ),
      body: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        crossAxisAlignment:CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              // child: Text("$selecting"),
              child:Image(
                 image:NetworkImage('https://avatars.githubusercontent.com/u/95950378?v=4')
              ),
              decoration: BoxDecoration(color: Colors.orange),
              height: 100,
              width: 40,
              margin: EdgeInsets.all(3),
              padding: EdgeInsets.all(5),
            ),
          ),
          // Container(
          //   child: Text("$selecting"),
          //   decoration: BoxDecoration(color: Colors.green),
          //   height: 100,
          //   width: 40,
          //   margin: EdgeInsets.all(5),
          //   padding: EdgeInsets.all(5),
          // ),
          // Container(
          //   child: Text("$selecting"),
          //   decoration: BoxDecoration(color: Colors.yellow),
          //   height: 100,
          //   width: 40,
          //   margin: EdgeInsets.all(5),
          //   padding: EdgeInsets.all(5),
          // ),
          Expanded(
            child: Container(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  crossAxisAlignment:CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child:
                Container(
                  child:Image(
                    image:NetworkImage('https://images.unsplash.com/photo-1675332911365-29a3265e8073?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                    height:20,
                  ),
                  // child: Center(child:Text("$selecting")),
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.green),
                  
                ),
                ),
                Expanded(
                  child:
                Container(
                  child: Center(child:Text("$selecting")),
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.pink),
                ),
                ),
                Expanded(
                  child:
                Container(
                  // child: Center(child:Text("$selecting")),
                  child:Image(
                    image:NetworkImage('https://images.unsplash.com/photo-1675458176024-b75ab10c248f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyM3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),  
                  ),
                  height: 20,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.blue),
                ),
                ),
              ],
            )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          print("Upload a Video"),
        },
        tooltip: 'Upload',
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home', tooltip: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle),
              label: 'Video',
              tooltip: 'video Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add),
              label: 'Playlist',
              tooltip: 'Playlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download),
              label: 'Download',
              tooltip: 'Download'),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_add),
              label: 'Library',
              tooltip: 'Library'),
        ],
        currentIndex: selecting,
        onTap: tapping,
        // fixedColor:Colors.green,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.red,
      ),
    );
  }
}
