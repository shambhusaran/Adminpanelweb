import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

       // color: Colors.pink,

      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Avatar(),
            TextFieldForUser(text: "Hari Bahadur"),
            TextFieldForUser(text: "Ghairapatan, Pokhara"),
            TextFieldForUser(text: "9809665543"),
            TextFieldForUser(text: "haribahadur@gmail.com"),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                ChangePasswordTextField(),
                const SizedBox(width: 200,),
                SizedBox(
                  width: 200,
                  child: TextButton(

                    onPressed: (){}, child: const Text("Save Changes", ),
                  style: TextButton.styleFrom(

                    backgroundColor: Colors.green,
                    primary: Colors.white,
                  ),


              ),
                ),

              ],
            )



          ],
        ),
      ),

      //child: Text("Hello"),
    );
  }
}

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         const CircleAvatar(


           backgroundImage: AssetImage('images/images.jpg'),
          radius: 80,
        ),
        Positioned(
          bottom: 10,
          right: 10,
          //bottom: 180,
          child: Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(25)
            ),
            child: const Center(child: Icon(Icons.camera_alt_rounded, size: 17,)),
          ),
        ),

      ],
    );
  }
}

class TextFieldForUser extends StatelessWidget {
  final String? text;

  TextFieldForUser({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: TextField(
        controller: TextEditingController(text:text!),
        decoration: const InputDecoration(
          enabledBorder: UnderlineInputBorder(
            //borderRadius: Radius.Circular(10),
            borderSide:BorderSide(color: Colors.grey),

          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),

      ),




      ),
    );
  }
}
class ChangePasswordTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: TextField(
        controller: TextEditingController(text:"Change Password"),
        decoration: const InputDecoration(
          border: InputBorder.none,
        )
      ),
    );
  }
}

