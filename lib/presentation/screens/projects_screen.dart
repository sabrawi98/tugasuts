import 'package:flutter/material.dart';
import '../../data/project_data.dart';
import '../widgets/project_item.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: sampleProjects.length,
      itemBuilder: (context, index) {
        return ProjectItem(project: sampleProjects[index]);
      },
    );
  }
}
