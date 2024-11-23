import 'dart:io'; // File operations
// import 'dart:ui';
// import 'package:flutter/material.dart' as dt;
import 'package:flutter/services.dart'; // Loading fonts
import 'package:path_provider/path_provider.dart'; // Access directories
import 'package:pdf/widgets.dart'; // For creating PDFs
import 'package:open_file/open_file.dart'; // To open files on any platform
import 'package:flutter/foundation.dart' show kIsWeb;

class PdfApi {
  static Future<File> genratecv({
    required String firstname,
    required String middlename,
    required String lastname,
    required String adressline,
    required String city,
    required String state,
    required String country,
    required String emailid,
    required String contactno,
    required String linkedin,
    required String github,
    required String careerobjective,
    required String degree,
    required String specialization,
    required String institue,
    required String startedyear,
    required String passingout,
    required List plskills,
    required List tfskills,
    required List coursedata,
  }) async {
    final pdf = Document();

    // Load custom font
    final fontData = await rootBundle.load("assets/Oswald-Bold.ttf");
    final ttf = Font.ttf(fontData);

    pdf.addPage(MultiPage(
        build: (Context context) => <Widget>[
              Header(
                child: Column(children: [
                  Center(
                    child: Text('$firstname $middlename $lastname',
                        style: TextStyle(font: ttf, fontSize: 30)),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('$adressline $city $state $country',
                              style: TextStyle(font: ttf)),
                          Text(emailid, style: TextStyle(font: ttf)),
                          Text(contactno, style: TextStyle(font: ttf))
                        ]),
                  ),
                  SizedBox(height: 10),
                  Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                        UrlLink(
                            child: Text("Linkedin Profile",
                                style: TextStyle(font: ttf)),
                            destination: linkedin),
                        UrlLink(
                            child: Text("GitHub Profile",
                                style: TextStyle(font: ttf)),
                            destination: linkedin)
                      ]))
                ]),
              ),
              Text("Career Objective", style: TextStyle(font: ttf)),
              Divider(
                thickness: 2,
              ),
              Paragraph(text: careerobjective),
              SizedBox(height: 10),
              Text("Education", style: TextStyle(font: ttf)),
              Divider(
                thickness: 2,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(degree + "(" + specialization + ")",
                    style: TextStyle(font: ttf)),
                Text(startedyear + ' / ' + passingout)
              ]),
              Text(institue),
              SizedBox(height: 10),
              Text("Skills", style: TextStyle(font: ttf)),
              Divider(
                thickness: 2,
              ),
              Text("Technologies and FrameWorks :",
                  style: TextStyle(font: ttf)),
              Text(tfskills.join(', ')),
              Text("Programming Languages :", style: TextStyle(font: ttf)),
              Text(plskills.join(', ')),
              SizedBox(height: 10),
              Text("Courses", style: TextStyle(font: ttf)),
              Divider(
                thickness: 2,
              ),
              Column(
                children: coursedata.map((course) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(course['coursenamectrl']! + "\n",
                            style: TextStyle(font: ttf)),
                        Text(course['courseinstnamectrl'])
                        // UrlLink(
                        //     child:
                        //         Text("🔗 Link"), // Use a Unicode link character
                        //     destination: course['certlinkctrl'])
                      ]),
                      Text('${course['complitiondatectrl']}',
                          style: TextStyle(font: ttf)),
                    ],
                  );
                }).toList(),
              ),
            ]));

    return PdfApi.saveDocument(name: "$firstname.pdf", pdf: pdf);
  }

  static Future<File> saveDocument({
    required String name,
    required Document pdf,
  }) async {
    if (kIsWeb) {
      throw UnsupportedError('File system is not supported on Web.');
    }

    final bytes = await pdf.save();
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/$name');
    await file.writeAsBytes(bytes);
    print("PDF saved at: ${file.path}");
    return file;
  }

  /// Opens a PDF file
  static Future<void> openFile(File file) async {
    try {
      final result = await OpenFile.open(file.path);
      if (result.type != ResultType.done) {
        print("Failed to open file: ${result.message}");
      }
    } catch (e) {
      print("Error opening file: $e");
    }
  }
}
