import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB71C1C),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar and Avatar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Masukkan yang anda cari...',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.jpg'),
                    radius: 20,
                  ),
                ],
              ),
            ),

            // Welcome Text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi, Health! Laura Andrea',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Pantau kesehatan hewan peliharaanmu dengan mudah!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),

            // Categories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildCategoryItem(
                    context,
                    Icons.pets,
                    'Tumbuh Kembang',
                    '/tumbuhkembang',
                  ),
                  _buildCategoryItem(
                    context,
                    Icons.local_dining,
                    'NutriPets',
                    '/nutrition',
                  ),
                  _buildCategoryItem(
                    context,
                    Icons.store,
                    'PetShop',
                    '/petshop',
                  ),
                  _buildCategoryItem(
                    context,
                    Icons.vaccines,
                    'Vaksinasi',
                    '/vaccination',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Hot Promo Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hot Promo 🔥',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildPromoItem('Antibiotik', 'Rp. 149.000',
                          'assets/images/antibiotik.jpg'),
                      _buildPromoItem('Kandang Kucing', 'Rp. 126.000',
                          'assets/images/kandang.jpg'),
                      _buildPromoItem(
                          'Whiskas', 'Rp. 57.000', 'assets/images/whiskas.jpg'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            // Informasi Terkini
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Informasi Terkini',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoCard(
                    'Tips Hewan Tidak Gampang Sakit',
                    'Nano Nut',
                    'assets/images/berita1.jpg',
                  ),
                  _buildInfoCard(
                    'Siberian Husky Paling Drama',
                    'Dyah Ayu',
                    'assets/images/berita2.jpg',
                  ),
                ],
              ),
            ),

            const Spacer(),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFFB71C1C),
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        currentIndex:
            0, // Tambahkan currentIndex untuk menentukan item yang aktif
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/consultation');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/profile');
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Consule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(
      BuildContext context, IconData icon, String label, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, route),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: Icon(icon, color: const Color(0xFFB71C1C)),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }

  Widget _buildPromoItem(String title, String price, String imagePath) {
    return Column(
      children: [
        // Ganti Icon dengan Image
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(imagePath), // Alamat gambar
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          price,
          style: const TextStyle(color: Colors.yellow, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildInfoCard(String title, String author, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          // Gambar di sisi kiri
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath), // Ganti dengan alamat gambar
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 16), // Spasi antara gambar dan teks
          // Teks di sisi kanan
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'By $author',
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
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
