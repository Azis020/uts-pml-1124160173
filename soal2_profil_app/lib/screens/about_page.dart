import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tentang Saya',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
        children: [
          Text(
            'Keahlian & Hobi',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.code,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'Mobile Development (Flutter & Dart)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(
                    Icons.web,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'Web Development (PHP, SQL, CSS, Python)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(
                    Icons.sports_soccer,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'Hobi: Futsal & Badminton',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Text(
            'Riwayat Pendidikan',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'SDN Kutabumi I (2012 - 2018)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'Mts Nurul Falah Kutabumi (2017 - 2019)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'SMKN 2 Kab. Tangerang (2019 - 2021)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
                const Divider(height: 1, indent: 16, endIndent: 16),
                ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  title: const Text(
                    'Global Institut - Software Engineering (2024 - Sekarang)',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}