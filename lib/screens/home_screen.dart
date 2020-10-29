import 'package:currency_exchanger_5/blocs/currency_bloc.dart';
import 'package:currency_exchanger_5/blocs/display_bloc.dart';
import 'package:currency_exchanger_5/models/currency.dart';
import 'package:currency_exchanger_5/utils/filter_utils.dart';
import 'package:currency_exchanger_5/widgets/currency_card.dart';
import 'package:flutter/material.dart';

// TODO (1): Create a file under lib called constants.dart

// Within lib/constants.dart
// TODO (2): Create constant for kDefaultMargin = 20.0
// TODO (3): Create constant for kDefaultBorderRadius = 20.0

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MapEntry<String, double>> quotes = [];
  TextEditingController controller = TextEditingController();

  _downloadExchangeRates() async {}

  @override
  void initState() {
    super.initState();
    _downloadExchangeRates();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Filter ...',
                labelText: 'Filter',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onChanged: (text) =>
                  FilterUtils.filterQuotes(context, text, quotes),
            ),
            Text('1 USD equals ...',
                style: Theme.of(context).textTheme.headline6),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {

                    // TODO (4): Return CurrencyCard()

                    return null;
                  },
                  itemCount: 1),
            ),
          ],
        ),
      ),
    );
  }
}
