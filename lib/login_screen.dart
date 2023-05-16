import 'package:flutter/material.dart';

TextEditingController mobileController = TextEditingController();

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.lightBlueAccent],
              begin: Alignment.centerLeft,
              end: Alignment.bottomCenter),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100))),
                child: Image.network(
                    'https://media.licdn.com/dms/image/C560BAQHzazenshqA5Q/company-logo_200_200/0/1672984731246?e=2147483647&v=beta&t=Dsd43sRCLTLG4CN05BzKozN_Owd_hhTkR5_D7jQg8mY'),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                    controller: mobileController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        labelText: 'Mobile Number',
                        labelStyle: TextStyle(color: Colors.blue))),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        minimumSize: Size(300, 40),
                        shape: BeveledRectangleBorder()),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 0,
                ),
                child: Text(
                  'By signing in you agree to our',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 10),
                child: Text(
                  'Terms Of Service & Privacy Policy',
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ]),
      ),
    );
  }
}
