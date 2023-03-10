import 'package:flutter/material.dart';

import 'Dice.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice game',
      home: LogIn(),
    );
  }
}

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}
class _LogInState extends State<LogIn>{
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Log in'),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
        ),
        body: Builder(
          builder:(context) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/chef.gif'),
                      width: 170.0,
                      height: 190.0,
                    ),
                  ),
                  Form(
                      child: Theme(
                          data: ThemeData(
                              primaryColor: Colors.teal,
                              inputDecorationTheme: InputDecorationTheme(
                                  labelStyle: TextStyle(
                                      color: Colors.teal, fontSize: 15.0))),
                          child: Container(
                              padding: EdgeInsets.all(40.0),
                              child: Column(
                                children: [
                                  TextField(
                                    controller: controller,
                                    decoration:
                                    InputDecoration(labelText: 'Enter "dice"'),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                  TextField(
                                    controller: controller2,
                                    decoration: InputDecoration(
                                        labelText: 'Enter "passwd"'),
                                    keyboardType: TextInputType.text,
                                    obscureText: true,
                                  ),
                                  SizedBox(height: 40.0,),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (controller.text == 'dice' &&
                                          controller2.text == '1234') {
                                         Navigator.push(context,
                                         MaterialPageRoute(builder: (BuildContext context) =>  const Dice()));
                                      } else if (controller.text == 'dice' && controller2.text != '1234'){
                                       showSnackBar(context);
                                      } else if (controller.text != 'dice' && controller2.text == '1234') {
                                        showSnackBar2(context);
                                      } else {
                                        showSnackBar3(context);
                                      }
                                    },
                                    child: const Text('ElevateButton'),
                                  ),
                                ],
                              ))))
                ],
              ),
            );
          }
        ));
  }
}

void showSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('????????? ????????? ?????? ???????????????',
        textAlign: TextAlign.center,
      ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}
void showSnackBar2(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('????????? ????????? ?????? ???????????????',
        textAlign: TextAlign.center,
      ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}
void showSnackBar3(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content:
      Text('????????? ????????? ?????? ???????????????',
        textAlign: TextAlign.center,
      ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.blue,
      )
  );
}