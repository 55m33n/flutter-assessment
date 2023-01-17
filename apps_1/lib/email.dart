import 'package:apps_1/edit.dart';
import 'package:apps_1/fav_3._cont.dart';
import 'package:apps_1/fav_page.dart';
import 'package:flutter/material.dart';

class Email extends StatelessWidget {
  const Email({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff32BAA5),
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Fav_Three_Cont()));
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 22,
              )),
        ),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 15, bottom: 10, left: 8.0, right: 30),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  child: Text(
                    'Edit',
                    style: TextStyle(
                      color: Color(0xff32BAA5),
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigate to edit page
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Edit()));
                  },
                ),
              ),
            ),

            // Image
            Stack(alignment: Alignment.center, children: <Widget>[
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: Color(0xff32BAA5),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              Container(
                height: 112,
                width: 112,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage("assets/kw.jpg"), fit: BoxFit.cover),
                ),
              ),

              // Icon
              Positioned(
                top: 89,
                left: 80,
                child: Icon(
                  Icons.star_rounded,
                  color: Color(0xffF2C94C),
                  size: 33,
                ),
              )
            ]),

            // Text - Darlene Steward
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 15),
              child: Text(
                " Darlene Steward",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),

            // Container - email icon, email
            Container(
              height: 90,
              width: 500,
              decoration: BoxDecoration(
                color: Color(0xffF1F1F1),
              ),
              child: Column(
                children: [
                  // Icon - email
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Icon(
                      Icons.email_outlined,
                      size: 45,
                      color: Color(0xff32BAA5),
                    ),
                  ),

                  // Email - text
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("darlene.steward7@gmail.com"),
                  ),
                ],
              ),
            ),

            // Email button
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                height: 40,
                width: 345,
                decoration: BoxDecoration(
                    color: Color(0xff32BAA5),
                    borderRadius: BorderRadius.circular(25)),
                child:

                    // Email - text
                    Center(
                        child: Text(
                  "Send Email",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
