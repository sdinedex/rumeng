import 'package:flutter/material.dart';

import 'package:rumeng/values.dart';

class TitleSection extends StatefulWidget {
  const TitleSection({super.key});

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*2*/
              const Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
          const Expanded(child: Text("")),
          /*3*/
          // Icon(
          //   Icons.star,
          //   color: Colors.red[500],
          // ),
          // const Text('41'),
          Container(
            padding: const EdgeInsets.all(0),
            child: IconButton(
              padding: const EdgeInsets.all(0),
              alignment: Alignment.centerRight,
              icon: (values.isFavorited
                  ? const Icon(Icons.star)
                  : const Icon(Icons.star_border)),
              color: Colors.red[500],
              onPressed: () {
                if (values.isFavorited) {
                  values.favoriteCount -= 1;
                  values.isFavorited = false;
                } else {
                  values.favoriteCount += 1;
                  values.isFavorited = true;
                }
                setState(() {});
              },
            ),
          ),
          SizedBox(
            width: 18,
            child: SizedBox(
              child: Text(values.favoriteCount.toString()),
            ),
          ),
        ],
      ),
    );
  }
}
