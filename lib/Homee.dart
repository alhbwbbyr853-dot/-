import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'drawer.dart';
class Homee extends StatefulWidget {
  const Homee({super.key});

  @override
  State<Homee> createState() => _HomeeState();
}

class _HomeeState extends State<Homee> {
  File? _image;
  double _size = 150.0;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    final XFile? selected = await _picker.pickImage(source: ImageSource.gallery);
    if (selected != null) setState(() => _image = File(selected.path));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("عرض صورة")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          _image == null
              ? const Icon(Icons.image, size: 100)
              : Image.file(_image!, height: _size, width: _size, fit: BoxFit.cover),
          ElevatedButton(onPressed: _pickImage, child: const Text("اختر صورة")),
          const Spacer(),
          Slider(
            value: _size,
            min: 50,
            max: 300,
            onChanged: (val) => setState(() => _size = val),
          ),
          const SizedBox(height: 40),
        ],
      ),
    drawer: drawer(),);
  }
}