import 'dart:math';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../entities/hotel.dart';
import '../../../utils/extensions.dart';
import '../../components/buttons/rounded_button.dart';
import '../../components/dialogs/date_picker.dart';
import '../../components/dialogs/failure.dart';
import '../../components/dialogs/success.dart';
import '../../components/dialogs/waiting.dart';
import '../../components/rooms.dart';

class BookPage extends StatefulWidget {
  final Hotel hotel;

  const BookPage({Key? key, required this.hotel}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  PickerDateRange? _dateRange;

  void _book() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AppDialogWaiting(),
    );

    await Future.delayed(const Duration(seconds: 5));

    Navigator.pop(context);

    final isSuccess = Random().nextInt(2) == 1;

    if (isSuccess) {
      showDialog(
        context: context,
        builder: (_) => AppDialogSuccess(
          message: 'Hotel booked successfully',
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (_) => AppDialogFailure(
          message: 'Hotel booking failed!',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.hotel.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => AppDatePickerDialog(
                    onPickDateRange: (dateRange) {
                      setState(() {
                        _dateRange = dateRange;
                      });
                    },
                  ),
                );
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose date',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black87),
                      children: [
                        TextSpan(
                          text:
                              '${_dateRange?.startDate?.formatDate(pattern: 'dd MMM yyyy') ?? 'Depart'}',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(text: ' - '),
                        TextSpan(
                          text:
                              '${_dateRange?.endDate?.formatDate(pattern: 'dd MMM yyyy') ?? 'Return'}',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 50,
            ),
            Text(
              'Number of Rooms',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 13,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            AppRoomsWidget(
              onRoomsChanged: (room, adults, children) {},
            ),
            const Spacer(),
            AppRoundedButton(
              onPressed: _book,
              title: 'Book',
            ),
          ],
        ),
      ),
    );
  }
}
