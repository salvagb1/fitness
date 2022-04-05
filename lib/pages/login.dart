import 'package:fitness/pages/create_account.dart';
import 'package:fitness/pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false;
  bool _agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            const SizedBox(
              child: Text(
                'Hey there,',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Welcome Back',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: email,
              decoration: InputDecoration(
                icon: SvgPicture.asset('assets/icons/message.svg'),
                hintText: 'Email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: _showPassword == false ? true : false,
              controller: passwordController,
              decoration: InputDecoration(
                icon: SvgPicture.asset('assets/icons/lock.svg'),
                hintText: 'Password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                suffixIcon: GestureDetector(
                  child: Icon(
                    _showPassword == false
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Colors.black,
                  ),
                  onTap: () {
                    setState(() {
                      _showPassword = !_showPassword;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: const Text('Forgot your password?'),
            ),
            const SizedBox(
              height: 200,
            ),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Welcome(),
                    )),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xff98BAFE)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              child: SvgPicture.asset('assets/icons/or.svg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 55,
                  width: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset('assets/icons/google.svg'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  height: 55,
                  width: 55,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: SvgPicture.asset('assets/icons/facebook.svg'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account yet? "),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount())),
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Color(0xffC58BF2)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
