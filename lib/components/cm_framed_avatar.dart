import 'package:classic_messenger/components/components.dart';
import 'package:flutter/material.dart';

class CmFramedAvatar extends StatelessWidget {
  const CmFramedAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black38),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Stack(
          children: [
            Container(
              width: (MediaQuery.of(context).size.width / 2.5) + 20,
              height: (MediaQuery.of(context).size.width / 2.5) + 20,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFDCEFD3), Color(0xFF79CA52)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFFF2F2F2), Color(0xFFB6C0C9)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(color: Colors.black38),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                width: MediaQuery.of(context).size.width / 2.5,
                height: MediaQuery.of(context).size.width / 2.5,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(CmImages.icAvatarOnline),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
