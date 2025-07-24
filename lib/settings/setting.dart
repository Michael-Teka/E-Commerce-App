// settings_page.dart
import 'package:flutter/material.dart';

// ✅ Settings Page
class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("⚙️ Settings", style: TextStyle(fontSize: 24)),
    );
  }
}