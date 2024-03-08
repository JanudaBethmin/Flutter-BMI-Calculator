import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    // You need to warp the container using a Scaffold then from the SafeArea.
    return Scaffold(
      body: SafeArea (
        child : Container(
          color: Colors.white,
          child: const Column(
            children: [
              Row(
                children: [
                  // Warpped by a padding widget
                  Padding( 
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        // You can use FontAwesome icons, Material icons etc. here
                        Icon(Icons.male, size: 150),
                        Text("Male"),
                      ],
                    ),
                  ),
                  Spacer(), // Creates a space between widgets while getting the maximum space as it can get.
                  // Warpped by a padding widget
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.female, size: 150),
                        Text("Female"),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
