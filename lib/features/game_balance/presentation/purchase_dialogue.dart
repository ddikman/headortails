import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/features/game_balance/state/game_balance_purchases_controller.dart';

class PurchaseDialogue extends StatelessWidget {
  const PurchaseDialogue({Key? key}) : super(key: key);

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const PurchaseDialogue(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (ctx, ref, _) {
        final gameBalancePurchase = ref.watch(gameBalancePurchaseProvider);
        return Wrap(
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
                  gameBalancePurchase.when(
                      data: (_) => ElevatedButton(onPressed: () => _purchase(context, ref.read(gameBalancePurchaseProvider.notifier)), child: const Text('Purchase')),
                      error: (_, __) => const Text('Failed to process purchase..'),
                      loading: () => const CircularProgressIndicator()
                  ),
                  const SizedBox(height: 16.0)
                ],
              ),
            )]
        );
      }
    );
  }

  _close(BuildContext context) {
    Navigator.of(context).pop();
  }

  _purchase(BuildContext context, GameBalancePurchasesController gameBalancePurchases) async {
    await gameBalancePurchases.purchaseGames(10);
    _close(context);
  }
}