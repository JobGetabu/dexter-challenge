import 'package:dexter_todo/animations/fade_animation.dart';
import 'package:dexter_todo/screens/note_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Note_Task extends StatefulWidget {

  const Note_Task({Key? key,}) : super(key: key);

  @override
  _Note_TaskState createState() => _Note_TaskState();
}

class _Note_TaskState extends State<Note_Task> {
  late String description;

  bool Ison = false;
  final _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    description = ''; // for get null or value
  }

  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffF4F6FD),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: he * 0.05, left: we * 0.73),
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
                child: Container(
                    width: 47,
                    height: 47,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xffF4F6FD),
                    ),
                    child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                          size: 20,
                        ))),
              ),
              NoteFormWidget(
                  description: description,
                  hint: 'Enter new task',
                  onChangedDescription: (description) {
                    setState(() => this.description = description);
                  }),
              NoteFormWidget(
                  description: description,
                  hint: 'Task owner name',
                  onChangedDescription: (description) {
                    setState(() => this.description = description);
                  }),

              NoteFormWidget(
                  description: description,
                  hint: 'Resident name',
                  onChangedDescription: (description) {
                    setState(() => this.description = description);
                  }),

              SizedBox(height: 16),
            ],
          ),
        ),
      ),
      floatingActionButton: FadeAnimation(
          delay: 0.4,
          child: null == null
              ? _buildButtonCreate(context)
              : _buildButtonSave(context)),
    );
  }

  // TODO Update button ...
  Widget _buildButtonCreate(BuildContext contex) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Container(
      width: we * 0.4,
      height: 50,
      margin: EdgeInsets.only(left: we * 0.45),
      child: ElevatedButton(
          onPressed: addNote,
          style: ElevatedButton.styleFrom(
              primary: const Color(0xFF002FFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "New task",
                style: GoogleFonts.lato(color: Colors.white),
              ),
              SizedBox(
                width: we * 0.03,
              ),
              const Icon(
                Icons.expand_less_outlined,
                color: Colors.white,
              )
            ],
          )),
    );
  }

  // TODO Save button ..
  Widget _buildButtonSave(BuildContext contex) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Container(
      width: we * 0.4,
      height: 50,
      margin: EdgeInsets.only(left: we * 0.45),
      child: ElevatedButton(
          onPressed: updateNote,
          style: ElevatedButton.styleFrom(
              primary: const Color(0xFF002FFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Save",
                style: GoogleFonts.lato(color: Colors.white),
              ),
              SizedBox(
                width: we * 0.03,
              ),
              const Icon(
                Icons.edit,
                color: Colors.white,
              )
            ],
          )),
    );
  }

  // Todo add note in db
  Future addNote() async {
    Navigator.of(context).pop();
  }

  // Todo update note in db
  Future updateNote() async {
    Navigator.of(context).pop();
  }
}