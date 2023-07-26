import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildProfileImage(context),
          _buildProfileDetails(context),
          _buildActions(context)
        ],
      ),
    );
  }

  Widget _buildProfileImage(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: ClipOval(
        child: Image.asset('assets/dog.jpg', fit: BoxFit.fitWidth),
      ),
    );
  }

  Widget _buildProfileDetails(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Wolfram Barkovich',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            _buildDetailsRow('Age', '4'),
            _buildDetailsRow('Status', 'GoodBoy')
          ],
        ));
  }

  Widget _buildDetailsRow(String heading, String value) {
    return Row(
      children: [
        Text(
          '$heading',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(value)
      ],
    );
  }

  Widget _buildActions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIcon(Icons.restaurant, 'Feed'),
        _buildIcon(Icons.favorite, 'Pet'),
        _buildIcon(Icons.directions_walk, 'Walk')
      ],
    );
  }

  Widget _buildIcon(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [Icon(icon, semanticLabel: '40'), const Text('text')],
      ),
    );
  }
}
