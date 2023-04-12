import 'dart:io';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:resum_app/Menu_Screen/personal_info/Show_info/dataModal.dart';

// final image = pw.MemoryImage(File(Global.image as String).readAsBytesSync());

Future<Uint8List> generatePdf(DataModal d) async {
  final pdf = pw.Document();

  pw.TextStyle titleStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 22,
    // color: PdfColors.white
  );

  pw.TextStyle textStyle = pw.TextStyle(
    fontWeight: pw.FontWeight.bold,
    fontSize: 16,
    // color: PdfColors.white
  );

  pw.TextStyle dispTextStyle = pw.TextStyle(
    fontSize: 14,
    // color: PdfColors.white
  );

  pdf.addPage(pw.Page(
      margin: pw.EdgeInsets.all(24),
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          children: [
            pw.Stack(
              children: [
                pw.Column(
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Container(
                        width: double.infinity,
                        height: 250,
                        color: PdfColors.brown100,
                      )
                    ]),
                pw.Container(
                  // color: PdfColors.blue,
                  padding: pw.EdgeInsets.only(top: 140, left: 200),
                  child: pw.Column(
                    children: [
                      pw.ClipOval(
                        child: pw.Image(
                          pw.MemoryImage(File("${d.path}").readAsBytesSync()),
                          height: 160,
                          width: 160,
                          fit: pw.BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            pw.Row(
              children: [
                pw.Column(children: [
                  pw.SizedBox(height: 20),
                  pw.Text("Name", style: titleStyle),
                  pw.Text("${d.name}", style: textStyle),
                  pw.SizedBox(height: 20),
                  pw.Text("Contact No", style: titleStyle),
                  pw.Text("${d.cno}", style: textStyle),
                  pw.SizedBox(height: 20),
                  pw.Text("Email", style: titleStyle),
                  pw.Text("${d.email}", style: textStyle),
                  pw.SizedBox(height: 20),
                  pw.Text("Address", style: titleStyle),
                  pw.Text("${d.add}", style: textStyle),
                  pw.SizedBox(height: 20),
                  pw.Text("Hobies", style: titleStyle),
                  pw.Text("${d.Hobies}\n Dancing", style: textStyle),
                  pw.SizedBox(height: 20),
                  pw.Text("language", style: titleStyle),
                  pw.Text("Gujarati\nEnglish", style: textStyle),
                ]),
                pw.Column(
                  children: [
                    pw.Padding(padding: pw.EdgeInsets.only(left: 70,top: 20)),
                    pw.Container(height: 50, width: 1, color: PdfColors.black),
                    pw.Container(height: 80, width: 1, color: PdfColors.black),
                    pw.Container(height: 80, width: 1, color: PdfColors.black),
                    pw.Container(height: 80, width: 1, color: PdfColors.black),
                    pw.Container(height: 80, width: 1, color: PdfColors.black),
                  ],
                ),
                pw.Column(
                  children: [
                    pw.Text("Profile", style: titleStyle),
                    pw.Container(
                      width: 240,
                      height: 200,
                      child: pw.Text(
                          "In this advancement of technology.i have a jumped in the IT field with an ambition regarding become a IT expert.In addtion for enhancing my IT related skill as well as to gain vast amount of experience I want to enroll in a IT company.In order I want to take more experience.",
                          style: textStyle),
                    ),
                    pw.SizedBox(height: 20),
                    pw.Text("Education", style: titleStyle),
                    pw.Text("${d.edu}in Computer engineering", style: textStyle),
                    pw.SizedBox(height: 20),
                    pw.Text("Skill", style: titleStyle),
                    pw.Text("       ${d.skill}\n    c language\n c++ language", style: textStyle),
                  ],
                ),
              ],
            ),
          ],
        );
      }));

  return await pdf.save();
}
