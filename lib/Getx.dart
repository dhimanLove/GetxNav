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
      appBar: AppBar(title: const Text('Nav Page')),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.black,
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
              color: Colors.black,
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
            const SizedBox(height: 200),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(20),
              ),
              onPressed: () {
                Get.to(const Routed());
              },
              child: const Text('Navigate to Routed Page',style: TextStyle(fontSize: 20),),
            ),],
        ),
      ),
    );
  }
}
