import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanze/view/home_screen.dart';
import 'package:kanze/view/widgets/custombutton.dart';

import 'navigation_Screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset('images/location.png',)),
            SizedBox(height: 20,),
            Text('Find Restaurants And Food Neaar You',
              style:TextStyle(
                fontSize: 18
              ),
              maxLines: 2,
              ),
            SizedBox(height: 100,),
            Custombutton(text: 'استخدم موقعك الحالي',
                color: Color(0xff2B3D16),
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationScreen()),
                  );

                }
            ),

          ],
        ),
      ),
    );
  }
}
