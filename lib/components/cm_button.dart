import 'package:flutter/material.dart';

class CmButton extends StatefulWidget {
  const CmButton({
    required this.label,
    required this.onTap,
    this.leading,
    super.key,
  });

  final String label;
  final VoidCallback onTap;
  final Widget? leading;

  @override
  State<CmButton> createState() => _CmButtonState();
}

class _CmButtonState extends State<CmButton> {
  bool isTappedDown = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => isTappedDown = true),
      onTapUp: (_) => setState(() => isTappedDown = false),
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFEEEEEE), Color(0xFFDDDDDD)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          border: Border.all(
              color: isTappedDown ? const Color(0xFF72D4F9) : Colors.black38),
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        height: 40.0,
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
        child: Row(
          children: [
            if (widget.leading != null) ...[
              widget.leading!,
              const SizedBox(width: 10.0),
            ],
            Text(
              widget.label,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
