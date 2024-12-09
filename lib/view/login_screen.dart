import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanze/view/location_screen.dart';
import 'package:kanze/view/signup_screen.dart';
import 'package:kanze/view/widgets/customTextformfield.dart';
import 'package:kanze/view/widgets/custombutton.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _phoneTextEditingController = TextEditingController();
  TextEditingController _passwordTextEditingController =
      TextEditingController();
  bool? isChecked=false;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset('images/Artboard.png')),
              SizedBox(
                height: 50,
              ),
              Text(
                'تسجيل الدخول',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextFormField(
                controller: _phoneTextEditingController,
                labelText: ' رقم الهاتف',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                controller: _passwordTextEditingController,
                labelText: "كلمه المرور",
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20,),
              Row(children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0,color: Colors.grey),

                  shape: BoxShape.rectangle
                ),),
                SizedBox(width: 20,),
                Text('Remember Me',
                  style: TextStyle(fontSize: 16),
                ),
                Spacer(),
                Text('هل نسيت كلمه المرور؟',
                  style: TextStyle(
                    fontSize: 16
                  ),
                ),


              ]),
              SizedBox(height: 100,),
              Custombutton(text: 'تسجيل الدخول',
                  color: Color(0xff2B3D16),
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LocationScreen()),
                    );

                  }
                  ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );

                },
                child: Center(
                    child: Text(
                        'Don’t have an account? sign Up',
                    style: TextStyle(fontSize: 16),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
