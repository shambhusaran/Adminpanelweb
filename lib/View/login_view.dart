import 'package:flutter/material.dart';


class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //color: Colors.purple,
        image: DecorationImage(
        image: AssetImage('images/login-screen-page.png'),
    fit: BoxFit.fill,
        ),
        ),



        child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20),

            ),

            height: 500,
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 30,),

                  Container(child: Center(child: Image.asset('images/Group 3.png'))),
                  SizedBox(height: 60,),

                  TextFieldForLogin(hintText: "Email or Phone number"),
                  SizedBox(height: 20,),
                  TextFieldForLogin(hintText: "Password"),
                  SizedBox(height: 20,),

                  Text("Forgot Password?", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w600),),
                  SizedBox(height: 20,),

                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 45,
                          child: TextButton(

                            onPressed: (){}, child: const Text("Login", ),
                            style: TextButton.styleFrom(

                              backgroundColor: Colors.black87,
                              primary: Colors.white,
                            ),


                          ),
                        ),
                      ),
                    ],
                  ),




                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}


class TextFieldForLogin extends StatelessWidget {
  final String? hintText;

  TextFieldForLogin({required this.hintText});
  @override
  Widget build(BuildContext context) {
    return    Container(

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const <BoxShadow>[BoxShadow(
            color: Colors.black54,
            blurRadius: 6.0,
            offset: Offset(5.0, 5.0),

        )
        ],
        borderRadius: BorderRadius.circular(10),
        shape: BoxShape.rectangle,
        // border: Border.all(
        //   color: Colors.black,
        //   width: 1.0,
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: TextField(
          textAlign: TextAlign.start,
          decoration: InputDecoration(
            hintText: hintText!,
            border: InputBorder.none,

          ),
        ),
      ),
    );
  }
}

