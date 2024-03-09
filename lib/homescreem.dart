import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child:Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
    actions: [

      Icon(Icons.search),
      SizedBox(width: 10,),
      PopupMenuButton(
          icon:const Icon(Icons.more_vert_outlined),
          itemBuilder: (context,) => [

        const PopupMenuItem(child: Text('New Group')),
           const PopupMenuItem(child: Text('Setting')),
           const PopupMenuItem(child: Text('log out')),
      ]
      ),
     const SizedBox(width: 10,),
    ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt_outlined),

              ),
              Tab(
                child: Text('Chat'),

              ),
              Tab(
                child: Text('Status'),

              ),
              Tab(
                child: Text('Calls'),

              ),
            ],
          ),
        ),
          body: TabBarView(
            children: [
             const Text('Camera hoon main '),
              ListView.builder(
                itemCount: 20,
                  itemBuilder: (context , index ){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('asset/Fiverr.jpg'),

                  ),
                  title: Text('wasim Akram Janyaro'),
                  subtitle: Text('how are you'),
                  trailing: Text('10 : 40'),
                );

              }),
              ListView.builder(itemBuilder: (context , index){
                return ListTile(
                  leading: Container(

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.green,
                        width: 5
                      )
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('asset/Fiverr.jpg'),
                    ),
                  ),
                  title: Text('Wasim'),
                  subtitle: Text('35 minutes ago '),
                );
              }),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context , index){
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(index/3==0? 'asset/wasim.jpg':'asset/Fiverr.jpg'),
                ),
                title: Text(index/2==0 ? 'Wasim Janyaro':'tere pass'),
                subtitle: Text(index/2 == 0? 'miss call ahi hai ':'video call ahi hai '),
                trailing:  Icon(index/2 == 0? Icons.phone : Icons.video_call),
              );
            }),
            ],
          ),
        )
    );
  }
}
