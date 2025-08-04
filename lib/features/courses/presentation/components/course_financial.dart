import 'package:courses/helper/text_feilds.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CourseFinancial extends StatelessWidget {
  const CourseFinancial({
    super.key,
    required this.priceController,
    required this.firstPaymentController,
    required this.teacherSalaryController,
  });
  final TextEditingController priceController;
  final TextEditingController firstPaymentController;
  final TextEditingController teacherSalaryController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildSectionHeader(context, 'Financials'),
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: priceController,
                decoration: buildInputDecoration(
                  label: 'Total Price',
                  icon: Icons.price_change_outlined,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: TextFormField(
                controller: firstPaymentController,
                decoration: buildInputDecoration(
                  label: 'First Payment',
                  icon: Icons.payment_outlined,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        TextFormField(
          controller: teacherSalaryController,
          decoration: buildInputDecoration(
            label: "Teacher's Salary",
            icon: Icons.wallet_outlined,
          ),
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          validator: (v) => (v == null || v.isEmpty) ? 'Required' : null,
        ),
      ],
    );
  }
}
