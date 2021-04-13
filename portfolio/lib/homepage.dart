import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: Stack(
        children: [
          FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: kHeroImage.toString(),
            width: size.width,
            height: size.height,
            fit: BoxFit.fitWidth,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height,
                ),
                Container(
                  height: size.height,
                  width: size.width,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text(
                      'PallelEffect',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

const kHeroImage =
    'https://images.unsplash.com/photo-1508092008654-30a973ac4efe?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTZ8fGhpbGwlMjBpbWFnZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60';
