import 'package:bmicalculator/constants.dart';
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
          // We can either wrap the Colum with a padding widget or 
          // We can simply use the padding property of the Container
          padding: const EdgeInsets.symmetric(horizontal: 16),
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
              // You can't add a spacer here. Flutter can't identify how mush space it as.
              // So we use a Sized box. It is a constant space that has a fixed size. Use height to make space vertically.
              SizedBox(height: 50),
              Row(
                children: [
                  // Warpped by a padding widget
                  Padding( 
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Height"),
                        // Added styles for the Text using style: TextStyle()
                        Text("176", 
                        style: kInputLabelStyle
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.remove, size: 40)
                            ),
                            SizedBox(width: 20), // You can't add a spacer here. Flutter can't identify how mush space it as.
                            // So we use a Sized box. It is a constant space that has a fixed size. Use width to make space horizonatlly.
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.add, size: 40)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(), // Creates a space between widgets while getting the maximum space as it can get.
                  // Warpped by a padding widget
                  Padding( 
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text("Weight"),
                        // Added styles for the Text using style: TextStyle()
                        Text("70", 
                        style: kInputLabelStyle 
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.remove, size: 40)
                            ),
                            SizedBox(width: 20), // You can't add a spacer here. Flutter can't identify how mush space it as.
                            // So we use a Sized box. It is a constant space that has a fixed size.
                            FloatingActionButton(
                              onPressed: null,
                              child: Icon(Icons.add, size: 40)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Column(
                children: [
                  Text("BMI"),
                  Text("22.22",
                  style: kOutputLabelStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
