import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:readmore/readmore.dart';

class Pub extends StatefulWidget {
  const Pub({super.key});

  @override
  State<Pub> createState() => _PubState();
}

class _PubState extends State<Pub> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text('Title'),
        ),
        body:const Column(
          children: [
            ReadMoreText('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication,In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available. It is also used to temporarily replace text in a process called greeking, which allows designers to consider the form of a webpage or publication,',

              trimLength: 2,
              trimMode: TrimMode.Line,
              colorClickableText: Colors.red,
              trimCollapsedText: 'Or dekhe ga',
              trimExpandedText: 'or kitna dekhe ga ',
              postDataText: "main kahan aho ga",
              preDataText: 'main dekhaho ga tumhain jadoo',
              preDataTextStyle: TextStyle(
                fontWeight: FontWeight.bold
              ),
              lessStyle: TextStyle(
                color: Colors.blueAccent
              ),
              moreStyle: TextStyle(color: Colors.blueAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
