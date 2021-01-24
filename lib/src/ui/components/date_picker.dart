import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../utils/extensions.dart';
import '../../utils/styles.dart';
import 'buttons/rounded_button.dart';

class AppDatePickerWidget extends StatefulWidget {
  final Function(PickerDateRange) onPickDateRange;

  const AppDatePickerWidget({Key key, @required this.onPickDateRange})
      : super(key: key);

  @override
  _AppDatePickerWidgetState createState() => _AppDatePickerWidgetState();
}

class _AppDatePickerWidgetState extends State<AppDatePickerWidget> {
  PickerDateRange _dateRange;

  @override
  Widget build(BuildContext context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Depart',
                        style: AppStyles.subtitleStyle.copyWith(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${_dateRange?.startDate?.formatDate() ?? ''}',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: VerticalDivider(),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Return',
                        style: AppStyles.subtitleStyle.copyWith(
                          color: Colors.black54,
                          fontSize: 15,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '${_dateRange?.endDate?.formatDate() ?? ''}',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SfDateRangePicker(
                    selectionMode: DateRangePickerSelectionMode.range,
                    onSelectionChanged: (selection) {
                      setState(() {
                        _dateRange = selection.value;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AppRoundedButton(
                    onPressed: () {
                      widget.onPickDateRange?.call(_dateRange);
                      Navigator.of(context).pop(_dateRange);
                    },
                    title: 'Apply',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
