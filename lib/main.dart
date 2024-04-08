import 'package:flutter/material.dart';

void main() {

  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
  );
}
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(

          children: [
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/background.png',),
                      fit: BoxFit.fill
                  )
              ),
              child: Stack(

                children: [
                  Positioned(
                      left: 30,
                      height: 200,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/light-1.png'))
                        ),
                      )),
                  Positioned(
                      left: 110,
                      height: 160,
                      width: 80,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/light-2.png'))
                        ),
                      )),
                  Positioned(
                      top: 40,
                      right: 40,
                      height: 200,
                      width: 100,
                      child: Container(

                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage('assets/images/clock.png'))
                        ),
                      )),
                  Positioned(child: Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Center(
                      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 50,fontWeight: FontWeight.bold)),
                    ),)
                  )
                ],

              ),
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, 2),
                                blurRadius: 20,
                                offset: Offset(0, 10)
                            )
                          ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                border:Border(bottom: BorderSide(color: Colors.grey))

                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Email or Phone No",
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),

                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.grey,fontSize: 20)
                              ),
                            ),
                          ),

                        ],

                      ),

                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors:[
                                Color.fromRGBO(148, 148, 251, 1),
                                Color.fromRGBO(148, 148, 251, .6),
                              ]
                          )
                      ),
                      child: Center(
                        child: Text('Login',style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    SizedBox(height: 70,),
                    Text('Forget Password?',style: TextStyle(color: Color.fromRGBO(148, 148, 251, 1)),)
                  ],
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}


