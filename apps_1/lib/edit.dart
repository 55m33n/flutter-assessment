import 'package:apps_1/email.dart';
import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  Edit({Key? key}) : super(key: key);

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller_lastName = TextEditingController();
  TextEditingController controller_email = TextEditingController();

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
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Email()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 22,
            ),
          ),
        ),
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Image
              Padding(
                padding: const EdgeInsets.only(top: 38.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
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
                            image: AssetImage("assets/kw.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),

                    // Icon
                    Positioned(
                      top: 89,
                      left: 90,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Color(0xff32BAA5),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              // Textfield
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Column(
                  children: <Widget>[
                    // First name
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 5.0,
                          bottom: 5,
                          left: 53,
                        ),
                        child: Text(
                          "First name",
                          style: TextStyle(
                            color: Color(0xff32BAA5),
                          ),
                        ),
                      ),
                    ),

                    // Textfield
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 10),
                        child: TextField(
                          //maxLength: 5,
                          //maxLines: 2,
                          //obscureText: true, -> password
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: controller,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 22, top: 15, bottom: 15),
                            isDense: true,
                            //border: InputBorder.none,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Last name
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 5,
                          left: 53,
                        ),
                        child: Text(
                          "Last name",
                          style: TextStyle(
                            color: Color(0xff32BAA5),
                          ),
                        ),
                      ),
                    ),
                    // Textfield
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 10),
                        child: TextField(
                          //maxLength: 5,
                          //maxLines: 2,
                          //obscureText: true, -> password
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: controller_lastName,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 22, top: 15, bottom: 15),
                            isDense: true,
                            //border: InputBorder.none,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Email
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 5,
                          left: 53,
                        ),
                        child: Text(
                          "Email",
                          style: TextStyle(
                            color: Color(0xff32BAA5),
                          ),
                        ),
                      ),
                    ),
                    // Textfield
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0, bottom: 10),
                        child: TextField(
                          //maxLength: 5,
                          //maxLines: 2,
                          //obscureText: true, -> password
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: controller_email,
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(left: 22, top: 15, bottom: 15),
                            isDense: true,
                            //border: InputBorder.none,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100),
                              borderSide: BorderSide(
                                color: Color(0xff32BAA5),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Done button
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
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
                    "Done",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
