import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return   DefaultTabController(length: 3, child: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:const Text('WhatsApp'),
          bottom:const TabBar(
            tabs: [
              Tab(
                child: Text('Chat'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Call'),
              )
            ],
          ),
actions: [
  const Icon(Icons.airplanemode_active),
  const SizedBox(width: 10,),
  const Icon(Icons.camera_alt_outlined),
  const SizedBox(width: 10,),
PopupMenuButton(itemBuilder: (context) =>[
  const PopupMenuItem(child: Text('New group')),
  const PopupMenuItem(child: Text('About')),
  const PopupMenuItem(child: Text('Help')),

]),
  SizedBox(width: 10,),
],
        ),

        drawer: Drawer(
          child: ListView(
            children: [

              const UserAccountsDrawerHeader(
                currentAccountPicture:CircleAvatar(
                  backgroundImage:AssetImage('asset/Fiverr.jpg') ,
                ),
                  currentAccountPictureSize: Size.fromRadius(35) ,
         accountName:Text('Wasim Akram', style: TextStyle(fontSize: 15),) ,
                  accountEmail:Text('Waseemjanyaro@gmail.com') ),
              ListTile(
                leading:const Icon(Icons.home),
                title:const Text('Home'),
                onTap: (){

                },
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text('Setting'),
              ),
             const ListTile(
                leading: Icon(Icons.logout),
                title: Text('Logout'),
              ),
            ],
          ),
        ),
        body:TabBarView(children: [
          ListView.builder(itemBuilder: (context , index) {
            return const ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('asset/Fiverr.jpg'),
              ),
              title: Text('Wasim Akram'),
              subtitle: Text('i do not like this kind of joke '),
              trailing: Text('10:30'),
            );
          }),
          ListView.builder(itemBuilder: (context , index){
            return ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.blueAccent,
                  width: 5),

                ),
                  child: CircleAvatar(backgroundImage: AssetImage('asset/wasim.jpg'),)),
              title: Text('Waseem'),
              subtitle: Text('11:00'),
            );
          }),
          ListView.builder(itemBuilder: (context , index){
            return ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage('asset/wasim.jpg'),),
            title: Text('Waseem'),
              subtitle: Text('11:00'),
              trailing: Icon( index / 2 == 0 ? Icons.call : Icons.video_call),
            );
          })
        ], ),

      ),
    ));
  }
}
