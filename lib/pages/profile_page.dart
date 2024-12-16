import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.red),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Foto Profil
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/images/user.jpg'), // Ganti dengan path gambar profil
          ),

          const SizedBox(height: 16),

          // Nama Pengguna
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Laura Andrea',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 8),
              Icon(
                Icons.edit,
                color: Colors.red,
                size: 20,
              ),
            ],
          ),

          const SizedBox(height: 24),

          // Menu Profil
          Expanded(
            child: ListView(
              children: [
                ProfileMenuItem(
                  icon: Icons.settings,
                  title: 'Pengaturan',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.lock,
                  title: 'Privasi',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.security,
                  title: 'Keamanan',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.notifications,
                  title: 'Notifikasi',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.help,
                  title: 'Pusat Bantuan',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.phone,
                  title: 'Hubungi HealthyPet',
                  onTap: () {},
                ),
                ProfileMenuItem(
                  icon: Icons.logout,
                  title: 'Keluar',
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/landing');
                  },
                  isLogout: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  final bool isLogout;

  const ProfileMenuItem({
    required this.icon,
    required this.title,
    required this.onTap,
    this.isLogout = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: isLogout ? Colors.red : Colors.grey,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: isLogout ? Colors.red : Colors.black,
        ),
      ),
      onTap: onTap,
    );
  }
}
