import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game_balance/state/game_balance_controller.dart';

class PurchaseDialogue extends StatefulWidget {
  const PurchaseDialogue({Key? key}) : super(key: key);

  @override
  State<PurchaseDialogue> createState() => _PurchaseDialogueState();

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const PurchaseDialogue(),
    );
  }
}

class _PurchaseDialogueState extends State<PurchaseDialogue> {
  // This feels off, like it should be a state or provider of its own
  // like a gameBalancePurchaseController, that way controlling the button would be easy
  // and I can avoid using setState
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (ctx, ref, _) => Wrap(
        children: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(child: Text('Buy credits', style: TextStyle(fontSize: 18.0))),
                  TextButton(onPressed: () => _close(context),
                  child: const Text('Cancel'))
                ],
              ),
              const Text("Please note that this is just an example modal, it won't charge you or anything."),
              const SizedBox(height: 32.0),
              loading ? const CircularProgressIndicator() : OutlinedButton(onPressed: () => _purchase(context, ref.read(gameBalanceStateProvider.notifier)), child: const Text('Purchase')),
              const SizedBox(height: 16.0)
            ],
          ),
        )]
      ),
    );
  }

  _close(BuildContext context) {
    Navigator.of(context).pop();
  }

  _purchase(BuildContext context, GameBalanceController read) async {
    if (loading) return;
    setState(() {
      loading = true;
    });
    await read.increase(10);
    if (!mounted) return;
    setState(() {
      loading = false;
    });
    _close(context);
  }
}