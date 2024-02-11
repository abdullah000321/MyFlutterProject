import 'package:flutter/material.dart';

// import 'HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  // @override
  // void initState() {
  //   super.initState();
  //   navigateToHome();
  // }
  //   navigateToHome() async {
  //     await Future.delayed(Duration(seconds: 2));
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Color(0xFF11113D),
          ),
          Positioned.fill(
            child: Image.asset(
              'assets/images/bgpng.png',
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 400,
                  width: 250,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Welcome!',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'welcome back you’ve been missed!',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Color(0xFFB72656),
                                  width: 2,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            prefix: Icon(
                              Icons.email,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                       keyboardType: TextInputType.text,
                       obscureText: true,
                       obscuringCharacter: '*',
                        decoration: InputDecoration(
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.white),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 2,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Color(0xFFB72656),
                                  width: 2,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 2,
                                )),
                            prefix: Icon(
                              Icons.lock,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
