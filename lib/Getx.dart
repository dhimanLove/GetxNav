import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Routed.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nav Page',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.light_mode),
                onPressed: () {
                  Get.changeTheme(ThemeData.light());
                },
              ),
              const SizedBox(width: 10),
              IconButton(
                icon: const Icon(Icons.dark_mode),
                onPressed: () {
                  Get.changeTheme(ThemeData.dark());
                },
              ),
            ],
          ),
        )
      ],),
      body: Container(
        color: Color(0xff001310),
        child: Column(
          children: [
            Container(
              height: 200,
              color: Color(0xff001310),
              child: Center(
                child: InkWell(
                  child: const Text(
                    'Top Se Snack Bar',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  onTap: () {
                    Get.snackbar(
                      'Tapped!',
                      'Ye raha Top se Snack Bar!',
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.white,
                      colorText: Colors.black,
                    );
                  },
                ),
              ),
            ),
            Container(
              height: 200,
              color: Color(0xff001310),
              child: Center(
                child: InkWell(
                  child: const Text(
                    'Bottom Se Snack Bar',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  onTap: () {
                    Get.snackbar(
                      'Tapped!',
                      'Ye raha Bottom se Snack Bar!',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.white,
                      colorText: Colors.black,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 100),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {
                Get.to(const Routed(),duration: 1.seconds,transition: Transition.cupertino);

              },
              child: const Text('Navigate to Routed Page',style: TextStyle(fontSize: 20),),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    width: double.infinity,
                    color:Colors.black,
                    child: Column(
                      children: [
                        Center(child: Column(
                          children: [
                            Text(
                                'Welcome To the Getx BottomSheet',
                                style: TextStyle(fontSize: 25,
                                    color:Colors.white
                                ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Getx is a powerful state management library for Flutter',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        )],
                    ),
                  ),
                );
              },
              child: const Text('Bottomsheet'),
            ),],
        ),
      ),
    );
  }
}
