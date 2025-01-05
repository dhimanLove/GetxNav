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
              //  Get.toNamed('/Routed?name=Getx Parameter&Value=3.14 Prameter',); this is for named route with parameters
                Get.to(const Routed(),duration: 1.seconds,
                    transition: Transition.cupertino,
                    popGesture:true,
                   // preventDuplicates: false,
                    curve: Curves.easeInOut, // smoothness of transition
                    arguments: 'Getx se Navpage ka argument Data');
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

//Get.off(Routed()); isse kya hoga ke piche wala pag ayega hi nai stack me dobara se
//Get.offAll(Routed()); issse ye hoga ke while we reached 21th page, we can't go back to 1st page,and sb ht jayege piche se stack se
//Get.to(Routed()); isse kya hoga ke piche wala page bhi stack me rahega
//Get.to(Routed(),fullscreenDialog: true); isse kya hoga ke piche wala page bhi stack me rahega, but fullscreen dialog me khulega
//Get.to(Routed(),duration: 1.seconds,transition: Transition.cupertino,popGesture:true,curve: Curves.easeInOut,arguments: 'Getx se Navpage ka transferred Data');
// isse kya hoga ke piche wala page bhi stack me rahega, but duration 1 second me transition hoga, popGesture enable hoga, curve smooth hoga, and arguments bhi pass hoga
//Get.toNamed('/routed'); isse kya hoga ke piche wala page bhi stack me rahega, but named route se navigation hoga
//Get.toNamed('/routed',arguments: 'Getx se Navpage ka transferred Data'); isse kya hoga ke piche wala page bhi stack me rahega, but named route se navigation hoga, and arguments bhi pass hoga
//Get.toNamed('/routed',arguments: 'Getx se Navpage ka transferred Data',parameters: {'name':'Getx'}); isse kya hoga ke piche wala page bhi stack me rahega, but named route se navigation hoga, and arguments bhi pass hoga, and parameters bhi pass hoga
//Get.toNamed('/routed',arguments: 'Getx se Navpage ka transferred Data',parameters: {'name':'Getx'},id: 1); isse kya hoga ke piche wala page bhi stack me rahega, but named route se navigation hoga, and arguments bhi pass hoga, and parameters bhi pass hoga, and id bhi pass hoga
//Get.toNamed('/routed',arguments: 'Getx se Navpage ka transferred Data',parameters: {'name':'Getx'},id: 1,preventDuplicates: false); isse kya hoga ke piche wala page bhi stack me rahega, but named route se navigation hoga, and arguments bhi pass hoga, and parameters bhi pass hoga, and id bhi pass hoga, and preventDuplicates bhi pass hoga

