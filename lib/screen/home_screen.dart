import 'package:flutter/material.dart';
import 'package:navigate_route/screen/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/detail';
  const HomeScreen({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,
                  arguments: {'itemId': 'Item-456','message': 'ข้อมูลผ่าน argument'
                  },
                );
                print('ได้ค่ากลับมาคือ: $result');
              },
              child: const Text("Go to Detail Screen"),
            ),
          ],
        ),
      ),
    );
  }
}