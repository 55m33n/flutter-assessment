import 'package:apps_1/del_user.dart';
import 'package:apps_1/edit.dart';
import 'package:apps_1/email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Fav_Three_Cont extends StatelessWidget {
  const Fav_Three_Cont({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32BAA5),
        automaticallyImplyLeading: false,
        title: Center(
          child: Text("My Contacts"),
        ),
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DelUser()));
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
                        onTap: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // LIST OF CONTACTS
            Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Slidable(
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: ((context) {
                            // Navigate to Edit page
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Edit()));
                          }),
                          backgroundColor: Color(0xffEBF8F6),
                          foregroundColor: Color(0xffF2C94C),
                          icon: Icons.edit_outlined,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            // delete
                            //createAlertDialog(context);
                          }),
                          backgroundColor: Color(0xffEBF8F6),
                          foregroundColor: Color(0xffFA0F0F),
                          icon: Icons.delete_outline_rounded,
                        ),
                      ],
                    ),
                    child: ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color(0xff32BAA5),
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage("assets/kw.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          children: [
                            Text(
                              "Darlene Steward",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.star_rounded,
                              color: Color(0xffF2C94C),
                            )
                          ],
                        ),
                      ),
                      subtitle: Text("fendy27@gmail.com"),
                      trailing: GestureDetector(
                        child: Icon(
                          Icons.send,
                          color: Color(0xff32BAA5),
                        ),
                        onTap: () {
                          // Navigate into email page

                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Email()));
                        },
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        //color: Color(0xff32BAA5),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage("assets/f.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "Lee Williamson",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xffF2C94C),
                          )
                        ],
                      ),
                    ),
                    subtitle: Text("lee.williamso76@gmail.com"),
                    trailing: Icon(
                      Icons.send,
                      color: Color(0xff32BAA5),
                    ),
                  ),
                  // ListTile(
                  //   leading: Container(
                  //     height: 50,
                  //     width: 50,
                  //     decoration: BoxDecoration(
                  //       color: Color(0xff32BAA5),
                  //       borderRadius: BorderRadius.circular(100),
                  //       image: DecorationImage(
                  //           image: AssetImage("assets/a.jpg"),
                  //           fit: BoxFit.cover),
                  //     ),
                  //   ),
                  //   title: Padding(
                  //     padding: const EdgeInsets.only(bottom: 8.0),
                  //     child: Text(
                  //       "Ronald Mccoy",
                  //       style: TextStyle(fontWeight: FontWeight.bold),
                  //     ),
                  //   ),
                  //   subtitle: Text("ronald.mccoy3@gmail.com"),
                  //   trailing: Icon(
                  //     Icons.send,
                  //     color: Color(0xff32BAA5),
                  //   ),
                  // ),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff32BAA5),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage("assets/am.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "Albert Bell",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.star_rounded,
                            color: Color(0xffF2C94C),
                          ),
                        ],
                      ),
                    ),
                    subtitle: Text("Albert.bell@gmail.com"),
                    trailing: Icon(
                      Icons.send,
                      color: Color(0xff32BAA5),
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
