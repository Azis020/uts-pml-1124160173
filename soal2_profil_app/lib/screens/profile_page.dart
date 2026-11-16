import 'package:flutter/material.dart';
import '../models/profile.dart';
import 'edit_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final Profile _profile = Profile(
    name: 'Nur Azis Gimnastiar',
    nim: '1124160173',
    major: 'Software Engineering',
    classRoom: 'Shift',
    bio: 'Mahasiswa Semester 5 yang aktif belajar pengembangan aplikasi.',
    email: 'nurazisgimnastiar@gmail.com',
    phone: '0895714243205',
    github: 'https://github.com/Azis020',
    imagePath: 'images/profile.jpeg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil', style: TextStyle(fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(_profile.imagePath),
              ),
              const SizedBox(height: 18),
              Text(_profile.name, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 6),
              Text('NIM: ${_profile.nim}', style: TextStyle(color: Theme.of(context).colorScheme.primary, fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text('Program Studi: ${_profile.major} • Kelas: ${_profile.classRoom}', style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 12),
              Text(_profile.bio, textAlign: TextAlign.center),
              const SizedBox(height: 24),
              Card(
                child: Column(
                  children: [
                    ListTile(leading: const Icon(Icons.email), title: const Text('Email'), subtitle: Text(_profile.email)),
                    ListTile(leading: const Icon(Icons.phone), title: const Text('Nomor HP'), subtitle: Text(_profile.phone)),
                    ListTile(leading: const Icon(Icons.code), title: const Text('Akun GitHub'), subtitle: Text(_profile.github)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}