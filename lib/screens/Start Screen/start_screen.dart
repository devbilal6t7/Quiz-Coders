import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../colors/colors.dart';
import '../DashBoard Screen/home_screen.dart';
import '../Home/home.dart';


class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final TextEditingController usernameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> saveUserName(String userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userName', userName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(builder: (BuildContext context, constraints) {
        final deviceWidth = constraints.maxWidth;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration:   const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/ob3.png'),fit: BoxFit.fitWidth,opacity: 0.6),
            gradient: LinearGradient(colors: [Colors.black,Colors.black],begin: Alignment.topRight,end: Alignment.topLeft),
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 70.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 70,
                    backgroundImage: AssetImage('assets/icons/man.png',),
                  ),
                  Text(
                      'Let\'s get you \nStarted!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,)
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Form(
                    key: _formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 6),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        textCapitalization: TextCapitalization.words,
                        controller: usernameController,
                        style: TextStyle(color: Colors.black87),
                        maxLength: 10,
                        validator: (value) {
                          if (value!.trim().isEmpty) {
                            return 'Please enter Your name';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          counterStyle: const TextStyle(color: Colors.white70),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          hintText: 'Enter Your Name',
                          hintStyle: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
                          filled: true,
                          fillColor: Colors.white70,
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Color(0xFF4e426f)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          border: OutlineInputBorder(
                            borderSide:
                            const BorderSide(color: Color(0xFF4e426f)),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(deviceWidth, 40),
                        backgroundColor: AppColor.appColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          await saveUserName(usernameController.text.trim());
                          if (context.mounted) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home(
                                        userName:
                                        usernameController.text.trim())));
                          }
                        }
                      },
                      child: Text(
                          'Get Started',
                          style: TextStyle(fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
