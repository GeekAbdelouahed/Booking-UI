import 'package:flutter/material.dart';

import '../../utils/styles.dart';
import 'buttons/rounded_button.dart';

class AppFilterWidget extends StatefulWidget {
  @override
  _AppFilterWidgetState createState() => _AppFilterWidgetState();
}

class _AppFilterWidgetState extends State<AppFilterWidget> {
  double _minPrice = 0;
  double _maxPrice = 1000;

  bool _freeBreakfast = false;
  bool _freeParking = false;
  bool _pool = false;
  bool _petFriendly = false;
  bool _freeWifi = false;

  double _distance = 10;

  bool _all = true;
  bool _apartment = false;
  bool _home = false;
  bool _villa = false;
  bool _hotel = false;
  bool _resort = false;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Filters'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          children: [
            Text(
              'Price (for 1 night)',
              style: AppStyles.subtitleStyle.copyWith(
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RangeSlider(
              min: 0,
              max: 1000,
              divisions: 100,
              values: RangeValues(_minPrice, _maxPrice),
              labels: RangeLabels('\$$_minPrice', '\$$_maxPrice'),
              onChanged: (rangeValues) {
                setState(() {
                  _minPrice = rangeValues.start;
                  _maxPrice = rangeValues.end;
                });
              },
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Popular filters',
              style: AppStyles.subtitleStyle.copyWith(
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CheckboxListTile(
              title: Text('Free Breakfast'),
              value: _freeBreakfast,
              onChanged: (isChecked) {
                setState(() {
                  _freeBreakfast = isChecked;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            CheckboxListTile(
              title: Text('Free Parking'),
              value: _freeParking,
              onChanged: (isChecked) {
                setState(() {
                  _freeParking = isChecked;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            CheckboxListTile(
              title: Text('Pool'),
              value: _pool,
              onChanged: (isChecked) {
                setState(() {
                  _pool = isChecked;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            CheckboxListTile(
              title: Text('Pet Friendly'),
              value: _petFriendly,
              onChanged: (isChecked) {
                setState(() {
                  _petFriendly = isChecked;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            CheckboxListTile(
              title: Text('Free Wifi'),
              value: _freeWifi,
              onChanged: (isChecked) {
                setState(() {
                  _freeWifi = isChecked;
                });
              },
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Distance from city center',
              style: AppStyles.subtitleStyle.copyWith(
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Slider.adaptive(
              min: 0,
              max: 50,
              divisions: 10,
              label: 'Less than ${_distance}Km',
              value: _distance,
              onChanged: (value) {
                setState(() {
                  _distance = value;
                });
              },
            ),
            Divider(
              height: 40,
              color: Colors.grey[800],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Type if Accommodation',
              style: AppStyles.subtitleStyle.copyWith(
                color: Colors.grey[800],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SwitchListTile(
              title: Text('All'),
              value: _all,
              onChanged: (value) {
                setState(() {
                  _all = value;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            SwitchListTile(
              title: Text('Apartment'),
              value: _apartment,
              onChanged: (value) {
                setState(() {
                  _apartment = value;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            SwitchListTile(
              title: Text('Home'),
              value: _home,
              onChanged: (value) {
                setState(() {
                  _home = value;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            SwitchListTile(
              title: Text('Villa'),
              value: _villa,
              onChanged: (value) {
                setState(() {
                  _villa = value;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            SwitchListTile(
              title: Text('Hotel'),
              value: _hotel,
              onChanged: (value) {
                setState(() {
                  _hotel = value;
                });
              },
            ),
            const Divider(
              height: 1,
            ),
            SwitchListTile(
              title: Text('Resort'),
              value: _resort,
              onChanged: (value) {
                setState(() {
                  _resort = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            AppRoundedButton(
              onPressed: () {},
              title: 'Apply',
            ),
          ],
        ),
      );
}
