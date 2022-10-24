import 'package:flutter/material.dart';

class NewItemSummaryTile extends StatelessWidget {
  const NewItemSummaryTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 4, 4),
      child: RichText(
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        text: const TextSpan(
          text: 'Hello ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 16,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'italic',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, color: Colors.white)),
            TextSpan(
                text:
                    ' Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi'),
          ],
        ),
      ),
    );
  }
}
