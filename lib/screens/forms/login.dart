import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/splash.png",
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Log in",
                style: GoogleFonts.raleway(
                  fontSize: 54,
                  color: const Color.fromRGBO(127, 132, 147, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Enter your username',
                        contentPadding: EdgeInsets.only(bottom: 0.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(127, 132, 147, 1),
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(127, 132, 147, 1),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Enter your password',
                        contentPadding: EdgeInsets.only(bottom: 0.0),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromRGBO(127, 132, 147, 1),
                          ),
                        ),
                        labelStyle: TextStyle(
                          color: Color.fromRGBO(127, 132, 147, 1),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          const Size(double.infinity, 58),
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')));
                          SystemChannels.textInput.invokeMethod('TextInput.hide');
                        }
                      },
                      child: const Text('Submit'),
                    ),
                    const Row(
                      children: [
                        Text("Don't have an account? Then "),
                        TextButton(onPressed: () {}, child: child)
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}