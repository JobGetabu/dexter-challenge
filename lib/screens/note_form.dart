import 'package:dexter_todo/animations/fade_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteFormWidget extends StatelessWidget {
  final String? description;
  final String? hint;
  final ValueChanged<String> onChangedDescription;

  const NoteFormWidget(
      {Key? key, this.description = "", required this.onChangedDescription, required this.hint})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return FadeAnimation(
      delay: 0.3,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: TextFormField(
          // initialValue: widget.note?.description,
          initialValue: description,
          onChanged: onChangedDescription,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: GoogleFonts.lato(
                color: Colors.black.withOpacity(0.3), fontSize: 27),
          ),
          style: GoogleFonts.lato(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27),
        ),
      ),
    );
  }
}