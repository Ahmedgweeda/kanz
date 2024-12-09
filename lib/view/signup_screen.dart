import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanze/view/widgets/customTextformfield.dart';
import 'package:kanze/view/widgets/custombutton.dart';

import 'home_screen.dart';
import 'login_screen.dart';


class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  TextEditingController _fNameTextEditingController = TextEditingController();
  TextEditingController _lNameTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController = TextEditingController();
  TextEditingController _confPassTextEditingController = TextEditingController();
  TextEditingController _emailTextEditingController = TextEditingController();
  TextEditingController _phoneTextEditingController = TextEditingController();


  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Image.asset('images/Artboard.png')),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'التسجيل ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),Row(
                  children: [
                    Expanded(child: CustomTextFormField(
                      controller: _fNameTextEditingController,
                      labelText: "الاسم الاول",
            
                    ),),
                    SizedBox(width: 10,),
                    Expanded(child: CustomTextFormField(
                      controller: _lNameTextEditingController,
                      labelText: "الاسم الاخير",
            
                    ),),
                  ],
                ),
                SizedBox(height: 10,),
            
                CustomTextFormField(
                  controller: _phoneTextEditingController,
                  labelText: ' رقم الهاتف',
                ),
                SizedBox(
                  height: 15,
                ),
                CustomTextFormField(
                  controller: _emailTextEditingController,
                  labelText: "ادخل البريد الالكتروني",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10,),
            
                CustomTextFormField(
                  controller: _passwordTextEditingController,
                  labelText: "كلمه المرور",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10,),
                CustomTextFormField(
                  controller: _passwordTextEditingController,
                  labelText: "تاكيد كلمه المرور",
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 20,),

                SizedBox(height: 50,),
                Custombutton(text: 'التسجيل ',
                    color: Color(0xff2B3D16),
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
            
                    }
                ),
                SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
            
                  },
                  child: Center(
                      child: Text(
                        'Don’t have an account? Sign In',
                        style: TextStyle(fontSize: 16),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
