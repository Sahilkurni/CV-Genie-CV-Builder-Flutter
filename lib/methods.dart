import 'package:flutter/material.dart';

Widget buildCourseField(
  Map file,
  Function submit,
  BuildContext context,
) {
  // Creating focus nodes for managing focus transitions
  var coursenameFocus = FocusNode();
  var certlinkFocus = FocusNode();
  var courseinstnameFocus = FocusNode();
  var complitiondateFocus = FocusNode();

  // Creating controllers for managing input text
  var coursenamectrl = TextEditingController(text: file['coursenamectrl']);
  var certlinkctrl = TextEditingController(text: file['certlinkctrl']);
  var courseinstnamectrl =
      TextEditingController(text: file['courseinstnamectrl']);
  var complitiondatectrl =
      TextEditingController(text: file['complitiondatectrl']);

  // Returning a row of input fields for a single course
  return Column(
    children: [
      SizedBox(height: 19),
      Row(
        children: [
          // Input field for "Course Name"
          Expanded(
            child: TextFormField(
              focusNode: coursenameFocus, // Setting focus node
              controller: coursenamectrl, // Connecting the controller
              onFieldSubmitted: (value) {
                submit({
                  "coursenamectrl": coursenamectrl.text,
                  "certlinkctrl": certlinkctrl.text,
                  "courseinstnamectrl": courseinstnamectrl.text,
                  "complitiondatectrl": complitiondatectrl.text,
                });
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Course Name',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20), // Adding space between fields

          // Input field for "Certification Link"
          Expanded(
            child: TextFormField(
              focusNode: certlinkFocus,
              controller: certlinkctrl,
              onFieldSubmitted: (value) {
                submit({
                  "coursenamectrl": coursenamectrl.text,
                  "certlinkctrl": certlinkctrl.text,
                  "courseinstnamectrl": courseinstnamectrl.text,
                  "complitiondatectrl": complitiondatectrl.text,
                });
                FocusScope.of(context).requestFocus(courseinstnameFocus);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Certification Link',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),

          // Input field for "Institute Name"
          Expanded(
            child: TextFormField(
              focusNode: courseinstnameFocus,
              controller: courseinstnamectrl,
              onFieldSubmitted: (value) {
                submit({
                  "coursenamectrl": coursenamectrl.text,
                  "certlinkctrl": certlinkctrl.text,
                  "courseinstnamectrl": courseinstnamectrl.text,
                  "complitiondatectrl": complitiondatectrl.text,
                });
                print('object');
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Institute Name',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),

          // Input field for "Completion Year and Month"
          Expanded(
            child: TextFormField(
              focusNode: complitiondateFocus,
              controller: complitiondatectrl,
              onFieldSubmitted: (value) {
                submit({
                  "coursenamectrl": coursenamectrl.text,
                  "certlinkctrl": certlinkctrl.text,
                  "courseinstnamectrl": courseinstnamectrl.text,
                  "complitiondatectrl": complitiondatectrl.text,
                });
                print('object');
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Completion Year and Month',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}

// Widget buildEducationfeild{

// }

Widget buildeducationfeild(
  Map file,
  Function submit,
  BuildContext context,
) {
  final FocusNode specializationFocus = FocusNode();
  final FocusNode degreeFocus = FocusNode();
  final FocusNode institueFocus = FocusNode();
  final FocusNode startedyearFocus = FocusNode();
  final FocusNode passingoutFocus = FocusNode();

  var degreectrl = TextEditingController(text: file['degreectrl']);
  var specializationctrl =
      TextEditingController(text: file['specializationctrl']);
  var instituectrl = TextEditingController(text: file['instituectrl']);
  var startedyearctrl = TextEditingController(text: file['startedyearctrl']);
  var passingoutctrl = TextEditingController(text: file['passingoutctrl']);
  return Column(
    children: [
      SizedBox(
        height: 10,
      ),
      Row(
        children: [
          Expanded(
            child: Form(
              child: TextFormField(
                focusNode: degreeFocus, // Focus control for this field
                controller: degreectrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Degree',
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(17, 45, 78, 1),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Oswald',
                  ),
                  // filled: true,
                  // fillColor: degreeFocus.hasFocus ? Colors.white : null
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                  ),
                ),
                style: const TextStyle(
                    fontSize: 18, color: Color.fromRGBO(17, 45, 78, 1)),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your degree';
                  }
                  return null;
                },
                onFieldSubmitted: (value) {
                  print("object");
                  submit({
                    "degreectrl": degreectrl.text,
                    "specializationctrl": specializationctrl.text,
                    "instituectrl": instituectrl.text,
                    "startedyearctrl": startedyearctrl.text,
                    "passingoutctrl": passingoutctrl.text,
                  });
                  // Move focus to Question
                  // Move focus to the next field

                  specializationFocus.requestFocus();
                },
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              focusNode: specializationFocus, // Focus control for this field
              controller: specializationctrl,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Specialization',
                labelStyle: const TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                // filled: true,
                // fillColor: specializationFocus.hasFocus ? Colors.white : null,
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
              style: const TextStyle(
                  fontSize: 18, color: Color.fromRGBO(17, 45, 78, 1)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your specialization';
                }
                return null;
              },
              onFieldSubmitted: (value) {
                submit({
                  "degreectrl": degreectrl.text,
                  "specializationctrl": specializationctrl.text,
                  "instituectrl": instituectrl.text,
                  "startedyearctrl": startedyearctrl.text,
                  "passingoutctrl": passingoutctrl.text,
                });
                // Move focus to Question
                FocusScope.of(context).requestFocus(institueFocus);
              },
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              focusNode: institueFocus, // Focus control for this field
              controller: instituectrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Institute/College Name',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
              style: const TextStyle(
                  fontSize: 18, color: Color.fromRGBO(17, 45, 78, 1)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Institute/College Name';
                }
                return null;
              },
              onFieldSubmitted: (value) {
                submit({
                  "degreectrl": degreectrl.text,
                  "specializationctrl": specializationctrl.text,
                  "instituectrl": instituectrl.text,
                  "startedyearctrl": startedyearctrl.text,
                  "passingoutctrl": passingoutctrl.text,
                });
                // Move focus to Question
                FocusScope.of(context).requestFocus(startedyearFocus);
              },
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              focusNode: startedyearFocus, // Focus control for this field
              controller: startedyearctrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Started Year',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
              style: const TextStyle(
                  fontSize: 18, color: Color.fromRGBO(17, 45, 78, 1)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your started year';
                }
                return null;
              },
              onFieldSubmitted: (value) {
                submit({
                  "degreectrl": degreectrl.text,
                  "specializationctrl": specializationctrl.text,
                  "instituectrl": instituectrl.text,
                  "startedyearctrl": startedyearctrl.text,
                  "passingoutctrl": passingoutctrl.text,
                });
                // Move focus to Question
                FocusScope.of(context).requestFocus(passingoutFocus);
              },
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: TextFormField(
              focusNode: passingoutFocus, // Focus control for this field
              controller: passingoutctrl,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Passing Out Year',
                labelStyle: TextStyle(
                  color: Color.fromRGBO(17, 45, 78, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oswald',
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(17, 45, 78, 1)),
                ),
              ),
              style: const TextStyle(
                  fontSize: 18, color: Color.fromRGBO(17, 45, 78, 1)),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Passing Out year';
                }
                return null;
              },
              onFieldSubmitted: (value) {
                submit({
                  "degreectrl": degreectrl.text,
                  "specializationctrl": specializationctrl.text,
                  "instituectrl": instituectrl.text,
                  "startedyearctrl": startedyearctrl.text,
                  "passingoutctrl": passingoutctrl.text,
                });
                // Move focus to Question
                FocusScope.of(context).requestFocus(specializationFocus);
              },
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
    ],
  );
}
