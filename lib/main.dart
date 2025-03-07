import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite_v2/tflite_v2.dart';
import 'package:wwee/pages/ImagePickerDemo.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ImagePickerDemo(),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ImagePickerDemo(),
    );
  }
}

// class ImagePickerDemo extends StatefulWidget {
//   @override
//   _ImagePickerDemoState createState() => _ImagePickerDemoState();
// }

// class _ImagePickerDemoState extends State<ImagePickerDemo> {
//   final ImagePicker _picker = ImagePicker();
//   XFile? _image;
//   File? file;
//   var _recognitions;
//   var v = "";
//   // var dataList = [];
//   @override
//   void initState() {
//     super.initState();
//     loadmodel().then((value) {
//       setState(() {});
//     });
//   }

//   loadmodel() async {
//     await Tflite.loadModel(
//       model: "assets/model_unquant.tflite",
//       labels: "assets/labels.txt",
//     );
//   }

//   Future<void> _pickImage() async {
//     try {
//       final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//       setState(() {
//         _image = image;
//         file = File(image!.path);
//       });
//       detectimage(file!);
//     } catch (e) {
//       print('Error picking image: $e');
//     }
//   }

//   Future detectimage(File image) async {
//     int startTime = new DateTime.now().millisecondsSinceEpoch;
//     var recognitions = await Tflite.runModelOnImage(
//       path: image.path,
//       numResults: 6,
//       threshold: 0.05,
//       imageMean: 127.5,
//       imageStd: 127.5,
//     );
//     setState(() {
//       _recognitions = recognitions;
//       v = recognitions.toString();
//       // dataList = List<Map<String, dynamic>>.from(jsonDecode(v));
//     });
//     // print("//////////////////////////////////////////////////");
//     //print(_recognitions);
//     // print(dataList);
//     // print("//////////////////////////////////////////////////");
//     //int endTime = new DateTime.now().millisecondsSinceEpoch;
//     // print("Inference took ${endTime - startTime}ms");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Scan Garbadge'),
//         centerTitle: true,
//         backgroundColor: Color.fromARGB(255, 38, 219, 56),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (_image != null)
//               Image.file(
//                 File(_image!.path),
//                 height: 200,
//                 width: 200,
//                 fit: BoxFit.cover,
//               )
//             else
//               Text('No image selected'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 54, 214, 105),
//               ),
//               onPressed: _pickImage,
//               child: Text('Pick Image from Gallery'),
//             ),
//             SizedBox(height: 100),
//             Text(
//               v,
//               maxLines: 4,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
