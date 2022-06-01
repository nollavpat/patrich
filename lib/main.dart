import 'package:flutter/material.dart';

import 'components/credit/credit.dart';
import 'components/expandable_fab/action_button.dart';
import 'components/expandable_fab/expandable_fab.dart';
import 'components/home/home.dart';

void main() {
  runApp(
    const MaterialApp(
      home: App(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PatRich'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        itemCount: 25,
        itemBuilder: (context, index) {
          return Home(isBig: index.isOdd);
        },
      ),
      floatingActionButton: ExpandableFab(
        distance: 112.0,
        children: [
          ActionButton(
            color: Colors.amber,
            icon: const Icon(Icons.format_list_numbered_rounded,
                color: Colors.white),
            onPressed: () => () {},
          ),
          ActionButton(
              color: Colors.blue,
              icon: const Icon(Icons.credit_card_rounded, color: Colors.white),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Credit()),
                );
              },
              size: 40.0),
          ActionButton(
            color: Colors.green,
            icon: const Icon(Icons.account_balance_wallet_rounded,
                color: Colors.white),
            onPressed: () => () {},
          ),
        ],
      ),
    );
  }
}
