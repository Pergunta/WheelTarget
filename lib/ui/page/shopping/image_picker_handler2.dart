import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_uikit/ui/page/shopping/image_picker_dialog2.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerHandler2 {
  ImagePickerDialog2 imagePicker;
  AnimationController _controller;
  ImagePickerListener _listener;

  ImagePickerHandler2(this._listener, this._controller);

  openCamera() async {
    imagePicker.dismissDialog();
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    _listener.userImage(image);
  }

  openGallery() async {
    imagePicker.dismissDialog();
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    _listener.userImage(image);
  }

  void init() {
    imagePicker = new ImagePickerDialog2(_controller);
    imagePicker.initState();
  }

  showDialog(BuildContext context) {
    imagePicker.getImage(context);
  }
}

abstract class ImagePickerListener {
  userImage(File _image);
}