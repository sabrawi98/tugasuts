import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Tidak bisa membuka $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/profile.jpg'), // pastikan file ini ada
          ),
          const SizedBox(height: 16),
          const Text(
            'SABRAWI',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text('Mobile Developer'),
          const SizedBox(height: 24),
          const Text(
            'Saya adalah seorang developer Flutter yang fokus pada pembuatan aplikasi mobile dengan tampilan menarik dan performa optimal.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 32),

          const Text(
            'Temui saya di:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.web),
                tooltip: 'CV',
                onPressed: () {
                  _launchURL('https://your-cv-link.com'); // ganti dengan link CV
                },
              ),
              IconButton(
                icon: const Icon(Icons.code),
                tooltip: 'GitHub',
                onPressed: () {
                  _launchURL('https://github.com/sabrawi98'); // ganti dengan link GitHub
                },
              ),
              IconButton(
                icon: const Icon(Icons.camera_alt),
                tooltip: 'Instagram',
                onPressed: () {
                  _launchURL('https://instagram.com/username'); // ganti dengan link Instagram
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
