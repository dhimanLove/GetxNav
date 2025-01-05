import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Routed extends StatefulWidget {
  const Routed({super.key});

  @override
  State<Routed> createState() => _NavPageState();
}

class _NavPageState extends State<Routed> {
   TextEditingController controller = TextEditingController();
    List<String> items = [];

  void addItem() {
    if (controller.text.isNotEmpty) {
      setState(() {
        items.add(controller.text);
        controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nav Page'),
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
        ],

      ),
      body: Container(
        color: Color(0xff001310),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                labelText: 'Enter item',
                labelStyle: TextStyle(color: Colors.white),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orangeAccent),
                ),
              ),
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: addItem,
              child: const Text('Add Item'),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      items[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                  },
              ),
            ),
           Text(Get.parameters['name']??"",style: TextStyle(color: Colors.yellow,fontSize: 30),),
           Text(Get.arguments,style: TextStyle(color: Colors.white70,fontSize: 20),),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: Get.back,
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
