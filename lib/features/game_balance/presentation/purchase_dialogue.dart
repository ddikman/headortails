import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:headortails/app/presentation/alerts/show_snackbar.dart';
import 'package:headortails/features/game_balance/state/game_balance_purchases_controller.dart';

class PurchaseDialogue extends StatefulWidget {
  final GameBalancePurchasesController purchasesController;

  const PurchaseDialogue._({Key? key, required this.purchasesController}) : super(key: key);

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => Consumer(builder: (ctx, ref, _) {
        final purchasesController = ref.read(gameBalancePurchaseProvider.notifier);
        return PurchaseDialogue._(purchasesController: purchasesController);
      }),
    );
  }

  @override
  State<PurchaseDialogue> createState() => _PurchaseDialogueState();
}

class _PurchaseDialogueState extends State<PurchaseDialogue> {
  bool isProcessing = false;

  @override
  Widget build(BuildContext context) {
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
              isProcessing ? const _ProcessingButton() : ElevatedButton(onPressed: () => _purchase(context, widget.purchasesController), child: const Text('Purchase')),
              const SizedBox(height: 16.0)
            ],
          ),
        )]
    );
  }

  _close(BuildContext context) {
    Navigator.of(context).pop();
  }

  _purchase(BuildContext context, GameBalancePurchasesController gameBalancePurchases) async {
    setState(() => isProcessing = true);
    try {
     await gameBalancePurchases.purchaseGames(10);
    } catch (err) {
      showSnackBar(context, "Failed to purchase: $err");
    }
    _close(context);
  }
}

class _ProcessingButton extends StatelessWidget {
  const _ProcessingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: null, child: Row(children: const [Text('Processing'), SizedBox(width: 8.0), SizedBox(height: 12.0, width: 12.0, child: CircularProgressIndicator(color: Colors.grey, strokeWidth: 2))], mainAxisSize: MainAxisSize.min));
  }
}