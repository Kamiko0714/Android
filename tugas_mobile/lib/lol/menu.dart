import 'package:flutter/material.dart';
import 'package:tugas_mobile/main.dart';

class LolMenu extends StatelessWidget {
  const LolMenu({super.key});

  static const appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData.dark(),
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
          backgroundColor: Colors.black,
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
                      backgroundColor: Colors.black),
                ),
              ),
              ListTile(
                title: const Text(
                  'Home',
                ),
                textColor: Colors.white70,
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp(),),);},
              ),
              ListTile(
                title: const Text(
                  'League Of Legends',
                ),
                textColor: Colors.white70,
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const LolMenu(),),);},
              ),
              ListTile(
                title: const Text('League Of Legends: Wild Rift'),
                textColor: Colors.white70,
                onTap: () {},
              )
            ],
          ),
        ),
        body: SizedBox.expand(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                _CardItem(
                  onTap: () {},
                  imagePath: "assets/pc/Update_LOL_13-8_Highlights.jpg",
                ),
                const SizedBox(height: 16),
                _CardItem(
                  onTap: () {},
                  imagePath: "assets/pc/Champions_VGU_2021_Banner.jpg",
                ),
                const SizedBox(height: 16),
                _CardItem(
                  onTap: () {},
                  imagePath: "assets/pc/Mythic-Item-1068x601.jpg",
                ),
                const SizedBox(height: 16),
                _CardItem(
                  onTap: () {},
                  imagePath: "assets/pc/R.jpeg",
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