import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: <BoxShadow>[BoxShadow(
            color: Colors.black54,
            blurRadius: 13.0,
            offset: Offset(0.0, 0.75)
        )
          ],
      ),
      height:80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:<Widget>[
          Container(
           // color: Colors.redAccent,
            child: Row(
           children: [
             SizedBox(width: 50,),
             Container(child: Image.asset('images/Group 243.png')),
             SizedBox(width: 20,),
             Container(child: Image.asset('images/KHAJAGHAR - KDS.png')),

           ],
            ),
            //child: const SizedBox(height: 80, width: 150,
            //child: Image.asset(),
            ),

          Row(
            //mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _NavBarItem(title: "Active Order"),
              SizedBox(width: 30,),
              _NavBarItem(title: "Pending"),
              SizedBox(width: 30,),
              _NavBarItem(title: "Delivering"),
              SizedBox(width: 30,),
              _NavBarItem(title: "Completed"),
              SizedBox(width: 30,),

              Row(
                children: <Widget>[
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/images.jpg'),
                    radius: 20,
                    backgroundColor: Colors.brown,
                  ),

                  IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down), color: Colors.black87,)
                ],
              ),

            ]
          )

        ],
    ),
    );
  }
}



class _NavBarItem extends StatelessWidget {
  final String title;
  const _NavBarItem({required  this.title});


  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TextButton(
          onPressed: (){

          },
          child: Text(
            title, style: TextStyle(fontSize: 18, color: Colors.black87),
          ),
        ),

        //SizedBox(width: 8,),
        Container(
          height:15,
          width:15,
          child: Center(child: Text("1", style: TextStyle(fontSize: 12),)),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(50),
          ),
        ),

      ],
    );
  }
}



