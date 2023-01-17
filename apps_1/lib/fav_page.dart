import 'package:apps_1/page_1.dart';
import 'package:apps_1/sync_page.dart';
import 'package:flutter/material.dart';

class FavPage extends StatelessWidget {
  const FavPage({Key? key}) : super(key: key);

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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SyncPage()));
            },
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
                              style: TextStyle(color: Colors.grey),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Page1()));
                        },
                      ),

                      // Favourite
                      GestureDetector(
                        child: Container(
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Favourite",
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          )),
                          decoration: BoxDecoration(
                            color: Color(0xff32BAA5),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 0.1,
                                blurRadius: 9,
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

            Text("No list of contact here,\n    add contact now"),
          ],
        ),
      ),
    );
  }
}
