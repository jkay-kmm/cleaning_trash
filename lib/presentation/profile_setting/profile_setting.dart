import 'dart:io';
import 'package:cleaning_trash/presentation/profile_setting/widgets/avatar_section.dart';
import 'package:cleaning_trash/presentation/profile_setting/widgets/input_section.dart';
import 'package:cleaning_trash/presentation/profile_setting/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class ProfileSetting extends StatefulWidget {
  @override
  _ProfileSettingState createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void _showImagePickerDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Chọn ảnh'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: Icon(Icons.photo),
              title: Text('Chọn từ thư viện'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Chụp ảnh'),
              onTap: () {
                Navigator.pop(context);
                _pickImage(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _saveProfile() {
    print('Tên: ${nameController.text}');
    print('SĐT: ${phoneController.text}');
    print('Địa chỉ: ${addressController.text}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Thông tin đã được lưu')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cài đặt hồ sơ'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.go('/profile'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AvatarSection(
              imageFile: _imageFile,
              onTap: _showImagePickerDialog,
            ),
            SizedBox(height: 20),
            InputSection(
              nameController: nameController,
              phoneController: phoneController,
              addressController: addressController,
            ),
            SizedBox(height: 230,),
            SaveButton(onPressed: _saveProfile),
          ],
        ),
      ),
    );
  }
}
