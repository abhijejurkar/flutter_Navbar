library restaurantnavbar;
import 'package:flutter/material.dart';

class Restaurantnavbar extends StatefulWidget {
  @override
  _RestaurantnavbarState createState() => _RestaurantnavbarState();
}

class _RestaurantnavbarState extends State<Restaurantnavbar> {


  void homebtnData(){
    
  }

  void restaurentbtnData(){
   
  }

  void bookmarkbtnData(){
    
  }

  void notificationbtnData(){
    
  }

  void basketbtn(){
    
  }

  @override
  Widget build(BuildContext context) {
    final Size size =MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width,
            height: 80,
            child:Stack(children: [
              CustomPaint(
                size: Size(size.width,80),
                painter: BNBCpainter(),
              ),
              Center(
                heightFactor: 0.6,
                child: FloatingActionButton(onPressed: (){basketbtn();},
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.shopping_basket),
                  elevation: 0.1,),
              ),
              Container(
                width: size.width,height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon:Icon(Icons.home),
                      onPressed: (){homebtnData();},),
                    IconButton(icon:Icon(Icons.restaurant_menu),
                      onPressed: (){restaurentbtnData();},),
                    Container(width:size.width*0.20),
                    IconButton(icon:Icon(Icons.bookmark),
                      onPressed: (){bookmarkbtnData();},),
                    IconButton(icon:Icon(Icons.notifications),
                      onPressed: (){notificationbtnData();},),
                  ],
                ),
              ),
            ],),
          ),
        )
      ],
    );
  }
}


class BNBCpainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    Paint paint=Paint()..color = Colors.black26..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width*0.20, 0, size.width*0.35, 0);
    path.quadraticBezierTo(size.width*0.40, 0, size.width*0.40, 20);
    path.arcToPoint(Offset(size.width*0.60, 20),
        radius: Radius.circular(10.0),clockwise:false);
    path.quadraticBezierTo(size.width*0.60, 0, size.width*0.65, 0);
    path.quadraticBezierTo(size.width*0.80, 0, size.width ,20);
    path.lineTo(size.width,size.height);
    path.lineTo(0,size.height);
    path.close();
    canvas.drawShadow(path,Colors.yellow,2,true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}