import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int height = 150;
  int weight = 70;

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
          child: Column(
            children: [
              const Row(
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
              const SizedBox(height: 50),
              Row(
                children: [
                  // Warpped by a padding widget
                  Padding( 
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Height"),
                        // Added styles for the Text using style: TextStyle()
                        // We need to use $ to add variables for Text
                        Text("$height", 
                        style: kInputLabelStyle
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              // Instead of defining functions we can use anonymous functions
                              // We need a void function here (We need to passing the function - Do not call the function)
                              onPressed: () {
                                // For changing the UI we need to put these under setState()
                                setState(() {
                                  height--;
                                });
                                print(height);
                              },
                              child: const Icon(Icons.remove, size: 40)
                            ),
                            const SizedBox(width: 20), // You can't add a spacer here. Flutter can't identify how mush space it as.
                            // So we use a Sized box. It is a constant space  that has a fixed size. Use width to make space horizonatlly.
                            FloatingActionButton(
                              // Instead of defining functions we can use anonymous functions
                              // We need a void function here (We need to passing the function - Do not call the function)
                              onPressed: () {
                                // For changing the UI we need to put these under setState()
                                setState(() {
                                  height++;
                                });
                                print(height);
                              },
                              child: const Icon(Icons.add, size: 40)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(), // Creates a space between widgets while getting the maximum space as it can get.
                  // Warpped by a padding widget
                  Padding( 
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text("Weight"),
                        // Added styles for the Text using style: TextStyle()
                        Text("$weight", 
                        style: kInputLabelStyle 
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              // Instead of defining functions we can use anonymous functions
                              // We need a void function here (We need to passing the function - Do not call the function)
                              onPressed: () {
                                // For changing the UI we need to put these under setState()
                                setState(() {
                                  weight--;
                                });
                                print(weight);
                              },
                              child: const Icon(Icons.remove, size: 40)
                            ),
                            const SizedBox(width: 20), // You can't add a spacer here. Flutter can't identify how mush space it as.
                            // So we use a Sized box. It is a constant space that has a fixed size.
                            FloatingActionButton(
                              // Instead of defining functions we can use anonymous functions
                              // We need a void function here (We need to passing the function - Do not call the function) 
                              onPressed: () {
                                // For changing the UI we need to put these under setState()
                                setState(() {
                                  weight++;
                                });
                                print(weight);
                              },
                              child: const Icon(Icons.add, size: 40)
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              const Column(
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
