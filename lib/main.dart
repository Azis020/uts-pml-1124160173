import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Nur Azis Gimnastiar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        colorSchemeSeed: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),

      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark),
      ),

      themeMode: ThemeMode.system,
      home: const ProfilePages(),
    );
  }
}

class ProfilePages extends StatelessWidget {
  const ProfilePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            tooltip: 'Lainnya',
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  CircleAvatar(
                    radius: 50,
                    child: Text(
                      'AZ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    ),
                  ),

                    const SizedBox(height: 16),
                    Text('Nur Azis Gimnastiar',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text('NIM: 1124160173',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 4),
                    Text('Software Engineering - Shift',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey,
                      ),
                    ),

                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 8.8, bottom: 4.0),
                            child: Text(
                              'Informasi Kontak',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),

                            Divider(),
                            InfoTile(
                              icon: Icons.email_outlined, 
                              label: 'Email', 
                              value: 'nurazisgimnastiar@gmail.com',
                              ),
                            InfoTile(
                              icon: Icons.phone_outlined, 
                              label: 'Nomor HP', 
                              value: '0895714243205',
                              ),
                            InfoTile(
                              icon: Icons.class_outlined, 
                              label: 'Kelas', 
                              value: 'Software Engineering Shift',
                              ),
                            InfoTile(
                              icon: Icons.code, 
                              label: 'Akun Github', 
                              value: 'https://github.com/Azis020',
                              ),
                        ],
                      ),
                      ),
                  ),

                  const SizedBox(height: 16),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(left: 16.0, top: 8.0, bottom: 4.0),
                            child: Text(
                              'Keahlian & Hobi',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            ),
                            Divider(),
                            InfoTile(
                            icon: Icons.phone_iphone, 
                            label: 'Mobile Development', 
                            value: 'Flutter & Dart',
                            ),
                            InfoTile(
                            icon: Icons.web, 
                            label: 'Web Development', 
                            value: 'PHP - SQL - CSS - Python',
                            ),
                            InfoTile(
                            icon: Icons.sports_soccer_outlined, 
                            label: 'Hobi', 
                            value: 'Futsal & Badminton',
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
              duration: Duration(seconds: 2),
              ),
              );
        },
        ),
    );
  }
}


class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
      title: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(value),
      dense: true,
    );
  }
}
