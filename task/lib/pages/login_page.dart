import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/pages/registration_page.dart';



class LoginPage extends StatefulWidget {
  static const String routeName = '/login';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();
  final passController = TextEditingController();
  bool showText = false;

  @override
  void dispose() {
    nameController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 250,
                child: Center(
                  child: Card(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(150),
                          child: Image.asset(
                            'images/person.png',
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                child: Column(
                  children: [
                    //username
                    TextField(
                        keyboardType: TextInputType.text,
                        controller: nameController,
                        decoration:
                        const InputDecoration(labelText: 'Username')),
                    SizedBox(
                      height: 10,
                    ),
                    //password
                    TextField(
                        keyboardType: TextInputType.text,
                        controller: passController,
                        obscureText: !showText,
                        decoration: const InputDecoration(
                            hintStyle: TextStyle(color: Colors.blue),
                            labelText: 'Password')),
                    SizedBox(
                      height: 5,
                    ),
                    //checkbox
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Checkbox(value: showText, onChanged: _showpass),
                        const Text(
                          'click to show password',
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    //Sign In Button
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.blue,
                        ),
                        height: 50,
                        width: double.maxFinite,
                        child: Center(
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                        onTap: (){},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.blue),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, RegistrationPage.routeName);
                        },
                        child: const Text(
                          'Registration here',
                          style: TextStyle(color: Colors.blue),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showpass(bool? newValue) {
    if (newValue != null) {
      setState(() {
        showText = newValue;
      });
    }
  }
}
