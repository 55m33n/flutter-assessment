import 'package:apps_1/del_user.dart';
import 'package:apps_1/fav_page.dart';
import 'package:apps_1/page_1.dart';
import 'package:apps_1/slide_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class SlidePage extends StatelessWidget {
  const SlidePage({Key? key}) : super(key: key);

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Are you sure you want to delete\n                this contact?")),
              // content:
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //Yes
                    Padding(
                      padding: const EdgeInsets.only(right: 2.0),
                      child: GestureDetector(
                        child: Container(
                          height: 55,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                color: Color(0xffFD1313),
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          // Navigate to deleted user page
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => DelUser())));
                        },
                      ),
                    ),

                    //No
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: GestureDetector(
                        child: Container(
                          height: 55,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Center(
                              child: Text(
                            "No",
                            style: TextStyle(
                              color: Color(0xff32BAA5),
                            ),
                          )),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => SlidePage())));
                        },
                      ),
                    ),
                  ],
                ),

                /////////////////////////////
              ]);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32BAA5),
        automaticallyImplyLeading: false,
        title: Text("My Contacts"),
        centerTitle: true,
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
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                          decoration: BoxDecoration(
                            color: Color(0xff32BAA5),
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                spreadRadius: 0.1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Page1()));
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
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
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
                  ListTile(
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
                      //child: Image(image: AssetImage("assets/ec.png")),
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
                    subtitle: Text("darlene.steward7@gmail.com"),
                    trailing: Icon(
                      Icons.send,
                      color: Color(0xff32BAA5),
                    ),
                  ),
                  Slidable(
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: ((context) {
                            // edit
                          }),
                          backgroundColor: Color(0xffEBF8F6),
                          foregroundColor: Color(0xffF2C94C),
                          icon: Icons.edit_outlined,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            // delete
                            createAlertDialog(context);
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
                              image: AssetImage("assets/ec.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Fullsnack Designers",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Text("fendy27@gmail.com"),
                      trailing: Icon(
                        Icons.send,
                        color: Color(0xff32BAA5),
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
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Color(0xff32BAA5),
                        borderRadius: BorderRadius.circular(100),
                        image: DecorationImage(
                            image: AssetImage("assets/a.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Ronald Mccoy",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    subtitle: Text("ronald.mccoy3@gmail.com"),
                    trailing: Icon(
                      Icons.send,
                      color: Color(0xff32BAA5),
                    ),
                  ),
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
