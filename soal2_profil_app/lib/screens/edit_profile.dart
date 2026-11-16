import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatefulWidget {
  final Profile profile;
  const EditProfilePage({super.key, required this.profile});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;


  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.profile.name);
    _emailController = TextEditingController(text: widget.profile.email);
    _phoneController = TextEditingController(text: widget.profile.phone);
  }

  void _simpan() {
    if (_formKey.currentState!.validate()) {
      final dataBaru = Profile(
        name: _nameController.text,
        nim: widget.profile.nim,
        major: widget.profile.major,
        classRoom: widget.profile.classRoom,
        bio: widget.profile.bio,
        email: _emailController.text,
        phone: _phoneController.text,
        github: widget.profile.github,
        imagePath: widget.profile.imagePath,
      );
      Navigator.pop(context, dataBaru);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profil'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama Lengkap', prefixIcon: Icon(Icons.person)),
                validator: (val) => val == null || val.trim().isEmpty ? 'Nama wajib diisi' : null, // [BARU] Validasi nama
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email)),
                validator: (val) {
                  if (val == null || val.trim().isEmpty) return 'Email wajib diisi';
                  if (!val.contains('@')) return 'Email tidak valid';
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(labelText: 'Nomor HP', prefixIcon: Icon(Icons.phone)),
                validator: (val) {
                  if (val == null || val.trim().isEmpty) return 'Nomor HP wajib diisi';
                  if (!RegExp(r'^\d{10,13}$').hasMatch(val)) return 'Nomor HP hanya angka 10-13 digit';
                  return null;
                }, 
              ),
              const SizedBox(height: 28),
              ElevatedButton(onPressed: _simpan, child: const Text('Simpan')),
            ],
          ),
        ),
      ),
    );
  }
}