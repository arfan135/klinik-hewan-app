import 'package:flutter/material.dart';

class ConsultationPage extends StatelessWidget {
  const ConsultationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Konsultasi',
          style: TextStyle(
            color: Colors.red,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari dokter, specialis atau gejala',
                prefixIcon: const Icon(Icons.search, color: Colors.red),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // List of Doctors
            Expanded(
              child: ListView(
                children: const [
                  DoctorCard(
                    name: 'Dokter Nicholas Saputra',
                    specialization: 'Dokter Ikan',
                    experience: '10 Tahun',
                    rating: '98%',
                    price: 'Rp 153.000',
                    image: 'assets/images/nicholas.jpg', // Path gambar Nicholas
                  ),
                  DoctorCard(
                    name: 'Dokter Dian Sastrowardoyo',
                    specialization: 'Dokter Kucing',
                    experience: '12 Tahun',
                    rating: '98%',
                    price: 'Rp 213.000',
                    image: 'assets/images/diansas.jpg', // Path gambar Dian
                  ),
                  DoctorCard(
                    name: 'Dokter Amanda R.',
                    specialization: 'Dokter Unggas',
                    experience: '3 Tahun',
                    rating: '96%',
                    price: 'Rp 87.000',
                    image: 'assets/images/amanda.jpg', // Path gambar Amanda
                  ),
                  DoctorCard(
                    name: 'Dokter Indah Permata',
                    specialization: 'Dokter Kucing',
                    experience: '5 Tahun',
                    rating: '98%',
                    price: 'Rp 102.000',
                    image: 'assets/images/indah.jpg', // Path gambar Indah
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialization;
  final String experience;
  final String rating;
  final String price;
  final String image;

  const DoctorCard({
    required this.name,
    required this.specialization,
    required this.experience,
    required this.rating,
    required this.price,
    required this.image, // Add the image parameter
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Doctor's Image
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage(image), // Use the image parameter
            ),
            const SizedBox(width: 16),

            // Doctor's Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(specialization),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Text('$experience • '),
                      Text('$rating Kepuasan'),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),

            // Chat Button
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text('Chat'),
            ),
          ],
        ),
      ),
    );
  }
}
