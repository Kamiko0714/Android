import 'package:flutter/material.dart';
import 'package:tugas_mobile/lol/menu.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black38),
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Colors.black87,
        ),
        drawer: Drawer(
          backgroundColor: Colors.black87,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Color.fromARGB(101, 0, 0, 0)),
                child: Text(
                  'Shortcut Selection : ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      ),
                ),
              ),
              ListTile(
                title: const Text(
                  'Home',
                ),
                textColor: Colors.white70,
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp(),),);
                  },
              ),
              ExpansionTile(
                    title: const Text("League Of Legends"), collapsedTextColor: Colors.white70,
                    children: [
                      ListTile(
                        title: const Text("   # Patch"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      ListTile(
                        title: const Text("   # Champions"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      ListTile(
                        title: const Text("   # Items"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      ListTile(
                        title: const Text("   # Spotlight"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
                  ExpansionTile(
                    title: const Text("League Of Legends : Wild Rift"), collapsedTextColor: Colors.white70,
                    children: [
                      ListTile(
                        title: const Text("   # Patch"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),
                      ListTile(
                        title: const Text("   # Champions"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      ListTile(
                        title: const Text("   # Items"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      ListTile(
                        title: const Text("   # Spotlight"), textColor: Colors.white70,
                        onTap: (){
                          //action on press
                        },
                      ),

                      //more child menu
                    ],
                  ),
            ],
          ),
        ),
        body: SizedBox.expand(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _CardItem(
                  onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LolMenu(),),);},
                  imagePath: "assets/lol.jpg",
                ),
                const SizedBox(height: 16),
                _CardItem(
                  onTap: () {},
                  imagePath: "assets/WR.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  const _CardItem({
    Key? key,
    required this.onTap,
    required this.imagePath,
  }) : super(key: key);

  final void Function() onTap;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 250,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}