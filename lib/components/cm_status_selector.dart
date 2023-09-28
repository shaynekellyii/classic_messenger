import 'package:flutter/material.dart';

class CmStatusSelector extends StatefulWidget {
  const CmStatusSelector({super.key});

  @override
  State<CmStatusSelector> createState() => _CmStatusSelectorState();
}

class _CmStatusSelectorState extends State<CmStatusSelector> {
  CmStatus status = const AvailableCmStatus();

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _showStatusPicker(context),
      style: TextButton.styleFrom(padding: EdgeInsets.zero),
      child: CmStatusBadge(status: status),
    );
  }

  void _showStatusPicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Sign in as'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AvailableCmStatus(),
            const InvisibleCmStatus(),
            const AwayCmStatus(),
            const BusyCmStatus()
          ]
              .map(
                (s) => GestureDetector(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    width: double.infinity,
                    child: CmStatusBadge(status: s),
                  ),
                  onTap: () {
                    setState(() => status = s);
                    Navigator.of(context).pop();
                  },
                ),
              )
              .toList(),
        ),
        actions: [
          TextButton(
              onPressed: Navigator.of(context).pop, child: const Text('Cancel'))
        ],
      ),
    );
  }
}

class CmStatusBadge extends StatelessWidget {
  const CmStatusBadge({
    super.key,
    required this.status,
  });

  final CmStatus status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
            color: status.color,
            border: Border.all(color: Colors.grey),
          ),
        ),
        const SizedBox(width: 5.0),
        Text(status.label),
      ],
    );
  }
}

@immutable
sealed class CmStatus {
  const CmStatus();

  String get label => switch (this) {
        AvailableCmStatus() => 'Available',
        InvisibleCmStatus() => 'Invisible',
        AwayCmStatus() => 'Away',
        BusyCmStatus() => 'Busy',
      };

  Color get color => switch (this) {
        AvailableCmStatus() => const Color(0xFF6ACE3F),
        InvisibleCmStatus() => Colors.transparent,
        _ => Colors.red,
      };
}

class AvailableCmStatus extends CmStatus {
  const AvailableCmStatus();
}

class InvisibleCmStatus extends CmStatus {
  const InvisibleCmStatus();
}

class AwayCmStatus extends CmStatus {
  const AwayCmStatus();
}

class BusyCmStatus extends CmStatus {
  const BusyCmStatus();
}
