import '../models/project.dart';

final List<Project> sampleProjects = [
  Project(
    title: 'Portofolio Pribadi',
    description: 'Aplikasi mobile Flutter untuk menampilkan profil dan proyek saya.',
    imagePath: 'assets/foto.jpg', // Ganti dengan fotomu
    technologies: ['Flutter', 'Dart'],
    githubUrl: 'https://github.com/sabrawi98',
  ),

  Project(
    title: 'Aplikasi Booking Outdoor',
    description: 'Aplikasi untuk menyewa alat outdoor seperti tenda dan kompor.',
    imagePath: 'assets/foto.jpg', // Atau ganti dengan gambar lain
    technologies: ['Flutter', 'Provider'],
    githubUrl: 'https://github.com/sabrawi98',
  ),
];
