import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:dexter_todo/bloc/user_cubit/user_cubit.dart';
import 'package:dexter_todo/screens/home.dart';
import 'package:dexter_todo/screens/note_form.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/widgets/bouncing_entrances/bounce_in_up.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

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
          child: SingleChildScrollView(
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
                      description: '',
                      hint: 'Enter your name',
                      onChangedDescription: (name) {
                        setState(() => this.name = name);
                      }),
                  Center(
                    child: Text(
                      'Select your shift for today',
                      style: GoogleFonts.lato(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
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
                      Fimber.d(values);
                      setState(() => this.shift = values);
                    },
                    horizontal: false,
                    width: 120,
                    selectedColor: Theme.of(context).colorScheme.secondary,
                    padding: 5,
                    enableShape: true,
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildSubmitButton());
  }

  Widget _buildSubmitButton() {
    return BlocProvider(
      create: (context) => UserCubit(FirebaseFirestore.instance),
      child: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          state.maybeWhen(
              success: (user) async {
                await Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade,
                    child: Home(user: user)));
              },
              error: (error) {
                Fluttertoast.showToast(
                    msg: error,
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 5,
                    textColor: Colors.red,
                    fontSize: 14.0);
              },
              orElse: () => false);
        },
        builder: (context, state) {
          var isLoading =
              state.maybeWhen(loading: () => true, orElse: () => false);

          return BounceInUp(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 20,
                right: 20,
              ),
              child: ElevatedButton(
                child: isLoading == false
                    ? const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30,
                      )
                    : SizedBox(
                        height: 30,
                        width: 30,
                        child: SpinKitFadingCircle(
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                onPressed: () async {

                  if(name == null){
                    Fluttertoast.showToast(
                        msg: 'Please add your name',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.white,
                        fontSize: 14.0);
                    return;
                  }

                  if(shift == null){
                    Fluttertoast.showToast(
                        msg: 'Please select your shit',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 5,
                        textColor: Colors.white,
                        fontSize: 14.0);
                    return;
                  }

                  context.read<UserCubit>().registerNewUser('$name', '$shift');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  minimumSize: Size(60, 60),
                  elevation: 10,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
