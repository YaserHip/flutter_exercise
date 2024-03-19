import 'package:flutter/material.dart';

class WidgetPlaceHolderProfileButton extends StatelessWidget {
  const WidgetPlaceHolderProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                shape: BoxShape.circle),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            children: [
              Container(
                height: 8,
                width: 70,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    borderRadius: const BorderRadius.all(Radius.circular(3))),
              ),
              const SizedBox(
                height: 6,
              ),
              Container(
                height: 10,
                width: 70,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    borderRadius: const BorderRadius.all(Radius.circular(3))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
