import 'package:flutter/material.dart';
import 'package:resume_builder_pdf/methods.dart';
// import 'package:resume_builder_pdf/methods.dart';
import 'package:resume_builder_pdf/pdf_api.dart';

class FormUi extends StatefulWidget {
  const FormUi({super.key});

  @override
  State<FormUi> createState() => _FormUiState();
}

class _FormUiState extends State<FormUi> {
  final List _courseFields = [
    {
      "coursenamectrl": "",
      "certlinkctrl": "",
      "courseinstnamectrl": "",
      "complitiondatectrl": "",
    }
  ];
  final List educationdata = [
    {
      "degreectrl": "",
      "specializationctrl": "",
      "instituectrl": "",
      "complitiondatectrl": "",
      "passingoutctrl": "",
    }
  ];

  Map coursedata = {};
  // Declare focus nodes for each TextFormField
  final FocusNode firstNameFocus = FocusNode();
  final FocusNode lastNameFocus = FocusNode();
  final FocusNode middleNameFocus = FocusNode();
  final FocusNode adressFocus = FocusNode();
  final FocusNode cityFocus = FocusNode();
  final FocusNode stateFocus = FocusNode();
  final FocusNode countryFocus = FocusNode();
  final FocusNode emailFocus = FocusNode();
  final FocusNode subjectFocus = FocusNode();
  final FocusNode questionFocus = FocusNode();
  final FocusNode emailidFocus = FocusNode();
  final FocusNode contactnoFocus = FocusNode();
  final FocusNode linkedinFocus = FocusNode();
  final FocusNode githubFocus = FocusNode();
  final FocusNode careerobjectiveFocus = FocusNode();
  final FocusNode degreeFocus = FocusNode();
  final FocusNode specializationFocus = FocusNode();
  final FocusNode institueFocus = FocusNode();
  final FocusNode startedyearFocus = FocusNode();
  final FocusNode passingoutFocus = FocusNode();
  final FocusNode plskill1Focus = FocusNode();
  final FocusNode plskill2Focus = FocusNode();
  final FocusNode plskill3Focus = FocusNode();
  final FocusNode plskill4Focus = FocusNode();
  final FocusNode plskill5Focus = FocusNode();
  final FocusNode tfskill1Focus = FocusNode();
  final FocusNode tfskill2Focus = FocusNode();
  final FocusNode tfskill3Focus = FocusNode();
  final FocusNode tfskill4Focus = FocusNode();
  final FocusNode tfskill5Focus = FocusNode();
  var coursenameFocus = FocusNode();
  var courseinstnameFocus = FocusNode();
  var complitiondateFocus = FocusNode();
  var certlinkFocus = FocusNode();

  var firstNamectrl = TextEditingController();
  var lastNamectrl = TextEditingController();
  var middleNamectrl = TextEditingController();
  var adressctrl = TextEditingController();
  var cityctrl = TextEditingController();
  var statectrl = TextEditingController();
  var countryctrl = TextEditingController();
  var emailctrl = TextEditingController();
  var subjectctrl = TextEditingController();
  var questionctrl = TextEditingController();
  var emailidctrl = TextEditingController();
  var contactnoctrl = TextEditingController();
  var linkedinctrl = TextEditingController();
  var githubctrl = TextEditingController();
  var careerobjectivebctrl = TextEditingController();
  var degreectrl = TextEditingController();
  var specializationctrl = TextEditingController();
  var instituectrl = TextEditingController();
  var startedyearctrl = TextEditingController();
  var passingoutctrl = TextEditingController();
  var plskill1ctrl = TextEditingController();
  var plskill2ctrl = TextEditingController();
  var plskill3ctrl = TextEditingController();
  var plskill4ctrl = TextEditingController();
  var plskill5ctrl = TextEditingController();
  var tfskill1ctrl = TextEditingController();
  var tfskill2ctrl = TextEditingController();
  var tfskill3ctrl = TextEditingController();
  var tfskill4ctrl = TextEditingController();
  var tfskill5ctrl = TextEditingController();
  var coursenamectrl = TextEditingController();
  var courseinstnamectrl = TextEditingController();
  var complitiondatectrl = TextEditingController();
  var certlinkctrl = TextEditingController();

  final _formKey = GlobalKey<FormState>(); // Form key for form validation
  bool isSubmitting = false; // Tracks if the form is being submitted

  // Function to handle form submission
  void handleSubmit() {
    if (_formKey.currentState!.validate()) {
      // Validate the form fields
      setState(() {
        isSubmitting = true; // Show loading spinner and disable button
      });

      // Simulate a delay to represent an API call or data processing
      Future.delayed(Duration(seconds: 2), () {
        setState(() {
          isSubmitting = false; // Re-enable the button after submission
        });

        // Show a success message using a SnackBar
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Form submitted successfully!')),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(219, 226, 239, 1),
      appBar: AppBar(
        title: const Text(
          "CV Genie",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(17, 45, 78, 1),
            fontFamily: 'Oswald',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          height: height,
          width: width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    // Allows scrolling if content overflows
                    child: Column(
                      children: [
                        Form(
                          key: _formKey, // Attach the form key for validation
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, // Align children to the start
                            mainAxisAlignment: MainAxisAlignment
                                .spaceEvenly, // Distribute space evenly
                            children: [
                              // Header Text
                              const Text(
                                "Enter Following Details For Your CV", // Form title
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text(
                                "Personal Details And Career Objective", // Form title
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const Divider(
                                thickness: 4,
                                color: Color.fromRGBO(17, 45, 78, 1),
                              ),
                              const SizedBox(height: 20),

                              // Row for First Name and Last Name
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Space fields apart
                                children: [
                                  // First Name TextFormField
                                  Expanded(
                                    child: TextFormField(
                                      controller: firstNamectrl,
                                      focusNode:
                                          firstNameFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border:
                                            OutlineInputBorder(), // Add border around the field
                                        labelText: 'First Name',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(17, 45, 78,
                                                  1)), // White border when focused
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78,
                                              1)), // Input text style
                                      validator: (value) {
                                        // Validate input
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your first name'; // Show error if empty
                                        }
                                        return null; // Validation passes
                                      },
                                      onFieldSubmitted: (_) {
                                        // When Enter is pressed, move focus to Last Name
                                        FocusScope.of(context)
                                            .requestFocus(middleNameFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 20), // Space between fields
                                  Expanded(
                                    child: TextFormField(
                                      controller: middleNamectrl,

                                      focusNode:
                                          middleNameFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border:
                                            OutlineInputBorder(), // Add border around the field
                                        labelText: 'Middle Name',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(17, 45, 78,
                                                  1)), // White border when focused
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78,
                                              1)), // Input text style
                                      validator: (value) {
                                        // Validate input
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your first name'; // Show error if empty
                                        }
                                        return null; // Validation passes
                                      },
                                      onFieldSubmitted: (_) {
                                        // When Enter is pressed, move focus to Last Name
                                        FocusScope.of(context)
                                            .requestFocus(lastNameFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 20), // Space between fields
                                  // Last Name TextFormField
                                  Expanded(
                                    child: TextFormField(
                                      controller: lastNamectrl,
                                      focusNode:
                                          lastNameFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Last Name',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        // Validate input
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your last name';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Country
                                        FocusScope.of(context)
                                            .requestFocus(adressFocus);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20), // Space between rows
                              // Row for Country and Email
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Country TextFormField
                                  Expanded(
                                    child: TextFormField(
                                      controller: adressctrl,
                                      focusNode:
                                          adressFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Addressline',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your country';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Email
                                        FocusScope.of(context)
                                            .requestFocus(cityFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      controller: cityctrl,
                                      focusNode:
                                          cityFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'City',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your country';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Email
                                        FocusScope.of(context)
                                            .requestFocus(stateFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      controller: statectrl,
                                      focusNode:
                                          stateFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'State',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your country';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Email
                                        FocusScope.of(context)
                                            .requestFocus(countryFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  // Email TextFormField
                                  Expanded(
                                    child: TextFormField(
                                      controller: countryctrl,
                                      focusNode:
                                          countryFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Country',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        } else if (!RegExp(r'\S+@\S+\.\S+')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid email address';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Subject
                                        FocusScope.of(context)
                                            .requestFocus(emailidFocus);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween, // Space fields apart
                                children: [
                                  // First Name TextFormField
                                  Expanded(
                                    child: TextFormField(
                                      controller: emailidctrl,
                                      focusNode:
                                          emailidFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border:
                                            OutlineInputBorder(), // Add border around the field
                                        labelText: 'Email Id',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(17, 45, 78,
                                                  1)), // White border when focused
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78,
                                              1)), // Input text style
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your email';
                                        } else if (!RegExp(r'\S+@\S+\.\S+')
                                            .hasMatch(value)) {
                                          return 'Please enter a valid email address';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // When Enter is pressed, move focus to Last Name
                                        FocusScope.of(context)
                                            .requestFocus(contactnoFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 20), // Space between fields
                                  Expanded(
                                    child: TextFormField(
                                      controller: contactnoctrl,

                                      focusNode:
                                          contactnoFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border:
                                            OutlineInputBorder(), // Add border around the field
                                        labelText: 'Contact No',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(17, 45, 78,
                                                  1)), // White border when focused
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78,
                                              1)), // Input text style
                                      validator: (value) {
                                        // Validate input
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your contact no'; // Show error if empty
                                        }
                                        return null; // Validation passes
                                      },
                                      onFieldSubmitted: (_) {
                                        // When Enter is pressed, move focus to Last Name
                                        FocusScope.of(context)
                                            .requestFocus(linkedinFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                      width: 20), // Space between fields
                                  // Last Name TextFormField
                                  Expanded(
                                    child: TextFormField(
                                      controller: linkedinctrl,
                                      focusNode:
                                          linkedinFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Linkedin profile URL',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        // Validate input
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Linkedin profile URL';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Country
                                        FocusScope.of(context)
                                            .requestFocus(githubFocus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      controller: githubctrl,
                                      focusNode:
                                          githubFocus, // Focus control for this field
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'GitHUb Profile URL',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your GitHUb Profile URL';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Email
                                        FocusScope.of(context)
                                            .requestFocus(careerobjectiveFocus);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20), // Space between rows
                              TextFormField(
                                focusNode:
                                    careerobjectiveFocus, // Focus control for this field
                                controller: careerobjectivebctrl,
                                maxLines: 4, // Allows multi-line input
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Career Objective',
                                  labelStyle: TextStyle(
                                    color: Color.fromRGBO(17, 45, 78, 1),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Oswald',
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color.fromRGBO(17, 45, 78, 1)),
                                  ),
                                ),
                                style: const TextStyle(
                                    fontSize: 18,
                                    color: Color.fromRGBO(17, 45, 78, 1)),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your career Objective';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 40),

                              const Text(
                                "Education Details", // Form title
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const Divider(
                                thickness: 4,
                                color: Color.fromRGBO(17, 45, 78, 1),
                              ),

                              const SizedBox(height: 20),
                              // Subject TextFormField
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          focusNode:
                                              degreeFocus, // Focus control for this field
                                          controller: degreectrl,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Degree',
                                            labelStyle: TextStyle(
                                              color:
                                                  Color.fromRGBO(17, 45, 78, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Oswald',
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      17, 45, 78, 1)),
                                            ),
                                          ),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your degree';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (value) {
                                            // Move focus to Question
                                            FocusScope.of(context).requestFocus(
                                                specializationFocus);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: TextFormField(
                                          focusNode:
                                              specializationFocus, // Focus control for this field
                                          controller: specializationctrl,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Specialization',
                                            labelStyle: TextStyle(
                                              color:
                                                  Color.fromRGBO(17, 45, 78, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Oswald',
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      17, 45, 78, 1)),
                                            ),
                                          ),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your specialization';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (_) {
                                            // Move focus to Question
                                            FocusScope.of(context)
                                                .requestFocus(institueFocus);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: TextFormField(
                                          focusNode:
                                              institueFocus, // Focus control for this field
                                          controller: instituectrl,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Institute/College Name',
                                            labelStyle: TextStyle(
                                              color:
                                                  Color.fromRGBO(17, 45, 78, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Oswald',
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      17, 45, 78, 1)),
                                            ),
                                          ),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your Institute/College Name';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (_) {
                                            // Move focus to Question
                                            FocusScope.of(context)
                                                .requestFocus(startedyearFocus);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: TextFormField(
                                          focusNode:
                                              startedyearFocus, // Focus control for this field
                                          controller: startedyearctrl,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Started Year',
                                            labelStyle: TextStyle(
                                              color:
                                                  Color.fromRGBO(17, 45, 78, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Oswald',
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      17, 45, 78, 1)),
                                            ),
                                          ),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your started year';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (_) {
                                            // Move focus to Question
                                            FocusScope.of(context)
                                                .requestFocus(passingoutFocus);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                      Expanded(
                                        child: TextFormField(
                                          focusNode:
                                              passingoutFocus, // Focus control for this field
                                          controller: passingoutctrl,
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Passing Out Year',
                                            labelStyle: TextStyle(
                                              color:
                                                  Color.fromRGBO(17, 45, 78, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Oswald',
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color.fromRGBO(
                                                      17, 45, 78, 1)),
                                            ),
                                          ),
                                          style: const TextStyle(
                                              fontSize: 18,
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please enter your Passing Out year';
                                            }
                                            return null;
                                          },
                                          onFieldSubmitted: (_) {
                                            // Move focus to Question
                                            FocusScope.of(context)
                                                .requestFocus(passingoutFocus);
                                          },
                                        ),
                                      ),
                                      const SizedBox(width: 20),
                                    ],
                                  ),
                                  ...educationdata
                                      .map((e) => buildeducationfeild(e, (tr) {
                                            setState(() {
                                              e['degreectrl'] =
                                                  tr['degreectrl'];
                                              e['specializationctrl'] =
                                                  tr['specializationctrl'];
                                              e['instituectrl'] =
                                                  tr['instituectrl'];
                                              e['startedyearctrl'] =
                                                  tr['startedyearctrl'];
                                              e['passingoutctrl'] =
                                                  tr['passingoutctrl'];
                                            });
                                            // print(_courseFields);
                                          }, context)),
                                  const SizedBox(height: 19),
                                  ElevatedButton(
                                      onPressed: () {
                                        print(educationdata);
                                        setState(() {
                                          educationdata.add({
                                            "degreectrl": "",
                                            "specializationctrl": "",
                                            "instituectrl": "",
                                            "startedyearctrl": "",
                                            "passingoutctrl": "",
                                          });
                                          // _courseFields.length;
                                        });
                                      },
                                      child: Text("add more education"))
                                ],
                              ),
                              const SizedBox(height: 20),

                              const Text(
                                "Skills",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const Divider(
                                thickness: 4,
                                color: Color.fromRGBO(17, 45, 78, 1),
                              ),

                              const SizedBox(height: 20),
                              const Text(
                                "Technologies and FrameWorks :",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          tfskill1Focus, // Focus control for this field
                                      controller: tfskill1ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 1',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Technologies and FrameWorks skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(tfskill2Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          tfskill2Focus, // Focus control for this field
                                      controller: tfskill2ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 2',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Technologies and FrameWorks skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(tfskill3Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          tfskill3Focus, // Focus control for this field
                                      controller: tfskill3ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 3',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Technologies and FrameWorks';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(tfskill4Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          tfskill4Focus, // Focus control for this field
                                      controller: tfskill4ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 4',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your programing language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(tfskill5Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          tfskill5Focus, // Focus control for this field
                                      controller: tfskill5ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 5',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your programing language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(tfskill1Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                ],
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Programming Languages :",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          plskill1Focus, // Focus control for this field
                                      controller: plskill1ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 1',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your programing language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(plskill2Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          plskill2Focus, // Focus control for this field
                                      controller: plskill2ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 2',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your programing language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(plskill3Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          plskill3Focus, // Focus control for this field
                                      controller: plskill3ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 3',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your pograming language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(plskill4Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          plskill4Focus, // Focus control for this field
                                      controller: plskill4ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 4',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your programing language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(plskill5Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: TextFormField(
                                      focusNode:
                                          plskill5Focus, // Focus control for this field
                                      controller: plskill5ctrl,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelText: 'Skill 5',
                                        labelStyle: TextStyle(
                                          color: Color.fromRGBO(17, 45, 78, 1),
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color.fromRGBO(
                                                  17, 45, 78, 1)),
                                        ),
                                      ),
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: Color.fromRGBO(17, 45, 78, 1)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your programing language skill';
                                        }
                                        return null;
                                      },
                                      onFieldSubmitted: (_) {
                                        // Move focus to Question
                                        FocusScope.of(context)
                                            .requestFocus(tfskill1Focus);
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                ],
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                "Courses",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(17, 45, 78, 1),
                                  fontFamily: 'Oswald',
                                ),
                              ),
                              const Divider(
                                thickness: 4,
                                color: Color.fromRGBO(17, 45, 78, 1),
                              ),

                              Column(
                                children: [
                                  SizedBox(height: 19),
                                  ..._courseFields
                                      .map((e) => buildCourseField(e, (tr) {
                                            setState(() {
                                              e['coursenamectrl'] =
                                                  tr['coursenamectrl'];
                                              e['certlinkctrl'] =
                                                  tr['certlinkctrl'];
                                              e['courseinstnamectrl'] =
                                                  tr['courseinstnamectrl'];
                                              e['complitiondatectrl'] =
                                                  tr['complitiondatectrl'];
                                            });
                                            print(_courseFields);
                                          })),
                                  const SizedBox(height: 19),
                                  ElevatedButton(
                                      onPressed: () {
                                        setState(() {
                                          _courseFields.add({
                                            "coursenamectrl": "",
                                            "certlinkctrl": "",
                                            "courseinstnamectrl": "",
                                            "complitiondatectrl": "",
                                          });
                                          // _courseFields.length;
                                        });
                                      },
                                      child: Text("add more courses"))
                                ],
                              ),

                              const SizedBox(height: 30), // Space before button
                              // Submit Button
                              Row(
                                children: [
                                  SizedBox(
                                    width: 200, // Button width
                                    child: isSubmitting
                                        ? CircularProgressIndicator() // Show loading spinner while submitting
                                        : ElevatedButton(
                                            onPressed:
                                                handleSubmit, // Call handleSubmit on click
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromRGBO(
                                                      63, 114, 175, 1),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 15,
                                                      horizontal: 30),
                                            ),
                                            child: const Text(
                                              'Send Your Message',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Oswald',
                                              ),
                                            ),
                                          ),
                                  ),
                                  const SizedBox(width: 20),
                                  SizedBox(
                                    width: 200, // Button width
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        final firstname = firstNamectrl.text;
                                        final middlename = middleNamectrl.text;
                                        final lastname = lastNamectrl.text;
                                        final adress = adressctrl.text;
                                        final city = cityctrl.text;
                                        final state = statectrl.text;
                                        final country = countryctrl.text;

                                        final pdfFile = await PdfApi.genratecv(
                                            firstname: firstname,
                                            middlename: middlename,
                                            lastname: lastname,
                                            adressline: adress,
                                            city: city,
                                            state: state,
                                            country: country,
                                            emailid: emailidctrl.text,
                                            contactno: contactnoctrl.text,
                                            linkedin: linkedinctrl.text,
                                            github: githubctrl.text,
                                            careerobjective:
                                                careerobjectivebctrl.text,
                                            degree: degreectrl.text,
                                            specialization:
                                                specializationctrl.text,
                                            institue: instituectrl.text,
                                            startedyear: startedyearctrl.text,
                                            passingout: passingoutctrl.text,
                                            plskills: [
                                              plskill1ctrl.text,
                                              plskill2ctrl.text,
                                              plskill3ctrl.text,
                                              plskill4ctrl.text,
                                              plskill5ctrl.text
                                            ],
                                            tfskills: [
                                              tfskill1ctrl.text,
                                              tfskill2ctrl.text,
                                              tfskill3ctrl.text,
                                              tfskill4ctrl.text,
                                              tfskill5ctrl.text
                                            ],
                                            coursedata: _courseFields);
                                        await PdfApi.openFile(pdfFile);
                                      },
                                      // Call handleSubmit on click
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            Color.fromRGBO(63, 114, 175, 1),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 15, horizontal: 30),
                                      ),
                                      child: const Text(
                                        'Genrate Your Cv',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Oswald',
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
