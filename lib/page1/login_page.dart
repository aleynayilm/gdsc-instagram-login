import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Image.asset(ImageItems().instagramText, height: 85),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Phone number, username or email',
                  fillColor: Color.fromRGBO(240, 240, 240, 1),
                  filled: true),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: TextField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: _showPassword ? Colors.blue : Colors.grey,
                    ),
                    onPressed: () {
                      setState(() => _showPassword = !_showPassword);
                    },
                  ),
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Password',
                  fillColor: const Color.fromRGBO(240, 240, 240, 1),
                  filled: true),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 400,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blue)),
                      onPressed: () {},
                      child: const Text(
                        'Log In',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Divider(
              color: Colors.grey,
              thickness: 0.6,
              height: 20.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('Continue as Dave Johnson',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ),
          const Spacer(),
          const Divider(
            color: Colors.grey,
            thickness: 0.6,
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account? ",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Sign Up.',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String instagramText =
      "assets/2d409f3c-7d40-4fa4-b976-6a2b7242f64b.png";
}
