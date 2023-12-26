import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  File? _image;

  // Future getImage() async {
  //   final image = await ImagePicker().pickImage(source: ImageSource.gallery);

  //   if (image == null) return;

  //   final imageTemporary = File(image.path);
  //   final imagePermanent =
  //       await saveImagePermanently(imageTemporary.readAsBytesSync());
  //   setState(() {
  //     _image = imagePermanent;
  //   });
  // }

  // Future<File> saveImagePermanently(List<int> imageBytes) async {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final path = directory.path;
  //   final file = File('$path/image.png');

  //   return file.writeAsBytes(imageBytes);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7E30E1),
        leading: InkWell(
            onTap: () {
              Navigator.pushNamed(context as BuildContext, '/uploadImage');
            },
            child: Icon(
              Icons.arrow_back,
              color: Color.fromRGBO(255, 255, 255, 1),
            )),
        title: Text('Hasil'),
        titleTextStyle:
            TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 1)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null ? Text('No image selected.') : Image.file(_image!),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
