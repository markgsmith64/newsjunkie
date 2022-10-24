import 'package:flutter/material.dart';

class JournalistProfileTile extends StatelessWidget {
  const JournalistProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(14, 0, 4, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "MaryOReilly",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700, color: Colors.white),
              ),
              Text(
                "Mayo, Ireland",
                style: TextStyle(fontSize: 9, fontWeight: FontWeight.w300, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              shape: StadiumBorder(),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap, // Set this
              padding: EdgeInsets.fromLTRB(8, 4, 8, 2), // and this
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () => null,
            child: const Text(
              "Follow +",
              style: TextStyle(fontSize: 9),
            ),
          ),
        ],
      ),
    );
  }
}
