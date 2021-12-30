import 'package:flutter/material.dart';
import 'listing.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  ScrollController controller = ScrollController();
  bool closeTopContainer = false;
  double x = 0.0;
  double y = 0.0;
  double scale = 1;
  bool flag = false;
  @override
  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 60;
      });
    });
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return AnimatedContainer(
      height: size.height,
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(x, y, 1)..scale(scale),
      color: Colors.grey[300],
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: size.width,
              //alignment: Alignment.topCenter,
              height: closeTopContainer ? 0 : size.height * 0.35,
              child: FittedBox(
                fit: BoxFit.fill,
                alignment: Alignment.topCenter,
                child: Column(children: [
                  Container(
                    width: 400,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding:
                        EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        flag?
                        IconButton(
                            onPressed: () {
                              
                               
                                setState(() {
                                  x = 0;
                                  y = 0;
                                  scale = 1;
                                  flag = false;
                                });
                              },
                            
                            icon: Icon(Icons.arrow_back)):IconButton(
                              onPressed: (){
                                 setState(() {
                                  x = 200;
                                  y = 130;
                                  scale = 0.7;
                                  flag = true;
                                });
                              } ,
                              icon: Icon(Icons.menu),
                              
                            ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Location"),
                            Row(
                              children: [
                                Icon(Icons.location_pin),
                                Text("America")
                              ],
                            )
                          ],
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    width: 400,
                    margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.search),
                        Text("Search for dogs,cats..."),
                        Icon(Icons.settings)
                      ],
                    ),
                  ),
                  Container(
                    height: 100,
                    width: 400,
                    color: Colors.grey[300],
                    margin: EdgeInsets.only(top: 40),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                'images/dog.png',
                                width: 55,
                                height: 55,
                              ),
                            ),
                            Text("dog")
                          ],
                        );
                      },
                    ),
                  )
                ]),
              )),
          Expanded(
            child: ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              //shrinkWrap: true,
              controller: controller,
              itemCount: pets.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  color: Colors.grey[300],
                  height: 273,
                  width: 400,
                  child: Row(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Align(child: Image.asset(pets [index]['images'])),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin:
                              EdgeInsets.only(top: 65, bottom: 15, right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20,bottom: 20),
                                    child: Column(
                                      
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(pets[index]['name'],style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),),
                                        Text(pets[index]['amount'],style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),),
                                        Text(pets[index]['species'],style: TextStyle( fontSize: 15),),
                                        
                                      ],
                                    ),
                                  ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
