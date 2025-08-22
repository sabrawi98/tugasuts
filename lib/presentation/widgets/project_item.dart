import 'package:flutter/material.dart';
import 'package:portofolio_alpha/models/project.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectItem extends StatelessWidget {
  final Project project;

  const ProjectItem({super.key, required this.project});

  void _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            project.imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(project.description),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 6,
                  children: project.technologies
                      .map((tech) => Chip(label: Text(tech)))
                      .toList(),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => _launchURL(project.githubUrl),
                  child: const Text('Lihat di GitHub'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
