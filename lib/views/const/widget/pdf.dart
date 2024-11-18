// import 'package:pdf/pdf.dart';
// import 'package:pdf/widgets.dart' as pw;
// import 'package:printing/printing.dart';

// // Inside your _NewMortgageSearchPageDetailsState class

// void createPDF() async {
//   final pdf = pw.Document();

//   pdf.addPage(
//     pw.Page(
//       build: (pw.Context context) {
//         return pw.Column(
//           children: [
//             pw.Text('New Mortgage Details', style: pw.TextStyle(fontSize: 24)),
//             pw.SizedBox(height: 20),
//             pw.Text('Name: ${widget.name}'),
//             pw.Text('Address: ${widget.address}'),
//             pw.Text('Phone: ${widget.phone}'),
//             pw.Text('Date: ${widget.date}'),
//             pw.Text('Weight: ${widget.totalWeight}'),
//             pw.Text('Money: ${widget.totalMoney} TK'),
//             pw.Text('Mortgage: ${widget.parcent} % 100'),
//             pw.SizedBox(height: 20),
//             // Add more details as needed
//             pw.Text('Gold Details:', style: pw.TextStyle(fontSize: 18)),
//             // Example for one gold item
//             if (widget.firstVori != "0") 
//               pw.Text('1. ${widget.firstGoldName}: ${widget.firstVori} Vori'),
//             // Repeat for other gold items...
//           ],
//         );
//       },
//     ),
//   );

//   // Save the PDF file
//   await Printing.sharePdf(bytes: await pdf.save(), filename: 'mortgage_details.pdf');
// }