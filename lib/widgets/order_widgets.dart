import 'package:flutter/material.dart';

Widget buildOrderField(String label, String value, ValueChanged<String> onChanged) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        filled: true,
        fillColor: Colors.white,
      ),
      controller: TextEditingController(text: value),
    ),
  );
}

Widget buildDateField(DateTime selectedDate, ValueChanged<DateTime> onDateSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Row(
      children: [
        Expanded(
          child: Text(
            "Date: ${selectedDate.toLocal().toString().split(' ')[0]}",
            style: const TextStyle(color: Colors.white),
          ),
        ),
        TextButton(
          onPressed: () => onDateSelected(selectedDate),
          child: const Text(
            'Select Date',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    ),
  );
}
