import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildSectionHeader(BuildContext context, String title) {
  return Padding(
    padding: const EdgeInsets.only(top: 24.0, bottom: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const Divider(),
      ],
    ),
  );
}

InputDecoration buildInputDecoration({
  required String label,
  required IconData icon,
}) {
  return InputDecoration(
    labelText: label,
    prefixIcon: Icon(icon),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
  );
}
