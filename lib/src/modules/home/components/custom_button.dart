import 'package:flutter/material.dart';

class CustommButton extends StatefulWidget {
  final String label;
  final String text;
  const CustommButton({super.key, required this.label, required this.text});

  @override
  State<CustommButton> createState() => _CustommButtonState();
}

class _CustommButtonState extends State<CustommButton> {
  String selectedOption = "";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = widget.label;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff232A2E),
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: selectedOption == widget.label
                ? Colors.blue
                : Colors.transparent,
            width: 2.0,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 7),
              decoration: BoxDecoration(
                color: selectedOption == widget.label
                    ? Colors.blue
                    : Colors.transparent,
                border: Border.all(
                  color: selectedOption == widget.label
                      ? Colors.blue
                      : Colors.white,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Text(
                widget.label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 11,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                widget.text,
                style: const TextStyle(
                  fontSize: 11,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
