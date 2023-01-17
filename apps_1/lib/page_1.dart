import 'package:apps_1/fav_page.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32BAA5),
        automaticallyImplyLeading: false,
        title: Text("My Contacts"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.cached),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          size: 29,
        ),
        backgroundColor: Color(0xff32BAA5),
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Search field
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 15.0, left: 15, right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Search contact",
                      hintStyle: TextStyle(
                        color: Color(0xff999999),
                      ),
                      //border: InputBorder.none,
                      // border: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(30),
                      //   //borderSide: BorderSide(color: Colors.white),

                      // ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(55),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(55),
                      ),

                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(55),
                      ),
                      suffixIcon: Icon(
                        Icons.search,
                        color: Color(0xff999999),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //  All & favourite button
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      // All
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(right: 15),
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(
                                top: 5.0, bottom: 5, left: 8, right: 8),
                            child: Text(
                              "All",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Color(0xff32BAA5),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),

                      // Favourite
                      GestureDetector(
                        child: Container(
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Favourite",
                                style: TextStyle(
                                  color: Colors.grey,
                                )),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.1,
                                blurRadius: 19,
                                offset: Offset(4, 4),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FavPage()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 55.0,
              ),
              child: Column(
                children: [
                  Container(
                    width: 270,
                    height: 270,
                    decoration: BoxDecoration(
                      //color:
                      //border
                      // borderRadius:

                      image: DecorationImage(
                        image: AssetImage("assets/imgP1.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
