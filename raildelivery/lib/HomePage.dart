import 'package:flutter/material.dart';

class TopSection extends StatefulWidget {
  const TopSection({super.key});

  @override
  State<TopSection> createState() => _TopSectionState();
}

class _TopSectionState extends State<TopSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Burger Menu
        IconButton(
            onPressed: () {},
            icon: const Icon(
                Icons.menu
            )
        ),

        // Gap
        const Spacer(),

        // Title
        const Text(
          "RailDelivery",
          style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.grey
          ),
        ),

        // Gap
        const Spacer(),

        // Shopping cart button
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange
            ),
          ),
        ),
      ],
    );
  }
}


class BottomSection extends StatefulWidget {
  const BottomSection({super.key});

  @override
  State<BottomSection> createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15, top: 30),
      child: Column(
          children: [
            // Message
            Row(
              children: [
                Text(
                  "Special ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21
                  )
                ),

                Text(
                  "food for you!",
                  style: TextStyle(
                  fontSize: 21
                )
              )
            ]
          ),

          // Text field
          Padding(
            padding: EdgeInsets.only(right: 15, top: 15),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Search Here',
                hintStyle: TextStyle(
                  fontSize: 18
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0)
                  ),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1.0
                  )
                )
              )
            )
          )
        ]
      )
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopSection(),
            BottomSection()
          ]
        )
      )
    );
  }
}
