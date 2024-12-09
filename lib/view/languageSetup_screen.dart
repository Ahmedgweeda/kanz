import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanze/view/login_screen.dart';
import 'package:kanze/view/widgets/custombutton.dart';

class LanguagesetupScreen extends StatefulWidget {
  const LanguagesetupScreen({super.key});

  @override
  State<LanguagesetupScreen> createState() => _LanguagesetupScreenState();
}

class _LanguagesetupScreenState extends State<LanguagesetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('images/Artboard.png'),
              SizedBox(height: 50,),
              SizedBox(
                height: 170,
                child: Row(
                  children: [
                    Expanded(
                        child:Container(
                          height: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffFEFCE0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/english.png'),
                              SizedBox(height: 10,),
                              Text('English',
                                  style:TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                  )

                              ),
                            ],
                          ),
                        ) ),
                    SizedBox(width: 10,),
                    //arabic
                    Expanded(
                        child:Container(
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffFEFCE0)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('images/arabic.png'),
                              SizedBox(height: 10,),
                              Text('عربي',
                                style:TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold
                                ),),



                            ],
                          ),
                        )
                    ),
                  ],
                ),

              ),



            ],
          ),
        ),
      ),
      bottomNavigationBar:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Custombutton(
            text: 'حفظ',
            color: Color(0xff2B3D16),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );

        }),
      ) ,
    );
  }
}
