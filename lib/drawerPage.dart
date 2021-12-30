import 'package:flutter/material.dart';
import 'package:stackproject1/homepage.dart';
import 'package:stackproject1/secondPage.dart';

class drawerPage extends StatefulWidget {


  @override
  _drawerPageState createState() => _drawerPageState();
}

class _drawerPageState extends State<drawerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [secondPage(), homepage()],
        ),
      ),
    );
    /*appBar: AppBar(
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Text(
            "location",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            width: 120,
          ),
          CircleAvatar(
            backgroundColor: Colors.blue,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 30,top: 30,right: 30,bottom: 10),
              height: 50,
              decoration:  new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.all(new Radius.circular(25.7))
              ),
              child: Row(children: [
                Icon(Icons.search),
                

                Icon(Icons.settings),
                
                
              ],),
             /* child: new Directionality(
                textDirection: TextDirection.ltr, 
                child: new TextField(
                  controller: null,
                  autofocus: false,
                  style: 
                  new TextStyle(fontSize: 22.0),
                  decoration: new InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "search",
                    contentPadding: const EdgeInsets.only(
                      left: 10.0, bottom: 8.0, top: 8.0
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.white),
                      borderRadius: new BorderRadius.circular(10),
                    )
                  ),
                )),*/
                ),
              
            
            Container(
                width: 1000,
                height: 100,
                color: Colors.grey[300],
                child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 50,
                        width: 100,
                        color: Colors.red,
                        child: Icon(Icons.catching_pokemon));
                  },
                )),
          ],
        ),
      ),
    );*/
  }
}
