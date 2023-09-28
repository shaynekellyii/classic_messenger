import 'package:flutter/material.dart';

class CmScaffold extends StatelessWidget {
  const CmScaffold({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            child: const SizedBox.expand(),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF76bfea), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: const SizedBox.expand(),
          ),
          SafeArea(
            child: Container(
              color: Colors.transparent,
              child: child,
            ),
          )
        ],
      ),
    );
  }
}
