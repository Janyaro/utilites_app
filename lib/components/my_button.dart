import 'package:flutter/material.dart';
import 'package:whatsapp/constant.dart';
class MyButton extends StatelessWidget {
  final String title ;
  final Color btnColor ;
  final VoidCallback onpress ;
  const MyButton({
    super.key ,
    this.title = '',
    this.btnColor =const Color(0xffa5a5a5) ,
    required this.onpress
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(

                  shape: BoxShape.circle,
                  color: btnColor
            ),
            child: Center(
              child: Text(title , style: TextStyle(fontSize: 20 , color: Colors.white),),
            ),
          ),
        ),
      ),
    );
  }
}
