import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     title: 'Awesome Dialogue',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Awesome Dialogue'),
        ),
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            AnimatedButton(
              text: 'Warning Dialogue',
              color: Colors.orange,
              pressEvent: (){
                AwesomeDialog(
                context: context,
                  barrierColor: Colors.transparent,
                  dialogBackgroundColor: Colors.cyanAccent,
                  useRootNavigator: true,
                  dialogType: DialogType.warning,
                  animType: AnimType.topSlide,
                  showCloseIcon: true,
                  title: 'Warning',
                  desc: 'This the description of awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();

              },
            ),
            SizedBox(height: 20,),
            AnimatedButton(
              text: 'Error Dialogue',
              color: Colors.red,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.error,
                  animType: AnimType.bottomSlide,
                  showCloseIcon: true,
                  title: 'Error',
                  desc: 'This the description of Error in awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();

              },
            ),
            SizedBox(height: 20,),
            AnimatedButton(
              text: 'Info Dialogue',
              color: Colors.blue,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.info,
                  animType: AnimType.leftSlide,
                  showCloseIcon: true,
                  title: 'Error',
                  desc: 'This the description of Information in awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();

              },
            ),
            SizedBox(height: 20,),
            AnimatedButton(
              text: 'Question Dialogue',
              color: Colors.yellow,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.question,
                  animType: AnimType.leftSlide,
                  showCloseIcon: true,
                  title: 'Question?',
                  desc: 'This the description of Question in awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();
              },

            ),
            SizedBox(height: 20,),
            AnimatedButton(
              text: 'Success Dialogue',
              color: Colors.red,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.success,
                  animType: AnimType.rightSlide,
                  showCloseIcon: true,
                  title: 'Success',
                  desc: 'This the description of Success in awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();

              },
            ),
            SizedBox(height: 20,),
            AnimatedButton(
              text: 'Info Reversed Dialogue',
              color: Colors.red,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.infoReverse,
                  animType: AnimType.bottomSlide,
                  showCloseIcon: true,
                  title: 'Info Reversed',
                  desc: 'This the description of Info Reversed in awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();

              },

            ),
            SizedBox(height: 20,),
            AnimatedButton(
              text: 'No Header Dialogue',
              color: Colors.red,
              pressEvent: (){
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.noHeader,
                  animType: AnimType.bottomSlide,
                  showCloseIcon: true,
                  title: 'No header Dialogue',
                  desc: 'This the description of No header in awesome dialogue box',
                  btnCancelOnPress: (){},
                  btnOkOnPress: (){},
                ).show();

              },
            ),
          ],
        ),
      ),
    )
    );
  }
}


