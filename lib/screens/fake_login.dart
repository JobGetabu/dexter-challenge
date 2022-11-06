import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:dexter_todo/screens/home.dart';
import 'package:dexter_todo/screens/note_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/bouncing_entrances/bounce_in_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../constants/colors.dart';

class FakeLogin extends StatefulWidget {
  const FakeLogin({Key? key}) : super(key: key);

  @override
  State<FakeLogin> createState() => _FakeLoginState();
}

class _FakeLoginState extends State<FakeLogin> {
  String? name;
  String? shift;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/images/hospital.jpg', height: 250),
              Center(
                child: Text(
                  'Welcome to Dexter Hospital',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              NoteFormWidget(
                  description: name,
                  hint: 'Enter your name',
                  onChangedDescription: (name) {
                    setState(() => this.name = name);
                  }),

              Center(
                child: Text(
                  'Select your shift for today',
                  style:  GoogleFonts.lato(
                      color: Colors.black.withOpacity(0.3), fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              CustomRadioButton(
                buttonTextStyle: ButtonTextStyle(
                  selectedColor: Colors.white,
                  unSelectedColor: Colors.black,
                  textStyle: TextStyle(
                    fontSize: 16,
                  ),
                ),
                autoWidth: true,
                enableButtonWrap: true,
                wrapAlignment: WrapAlignment.center,
                unSelectedColor: Theme.of(context).canvasColor,
                buttonLables: [
                  "morning shift (6:30 am - 2:00 pm)",
                  "evening shift ( 2:00pm - 9:30 pm)",
                  "night shift (9:30 pm - 6:30 am)",
                ],
                buttonValues: [
                  "morning",
                  "evening",
                  "night",
                ],
                radioButtonValue: (values) {
                  print(values);
                },

                horizontal: false,
                width: 120,
                // hight: 50,
                selectedColor: Theme.of(context).colorScheme.secondary,
                padding: 5,
                enableShape: true,
              ),

            ],
          ),
        ),
      ),
        floatingActionButton:  BounceInUp(
          child: Container(
            margin: EdgeInsets.only(
              bottom: 20,
              right: 20,
            ),
            child: ElevatedButton(
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                await Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade, child: Home()));
                //_addToDoItem(_todoController.text);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: Size(60, 60),
                elevation: 10,
              ),
            ),
          ),
        )
    );
  }
}
