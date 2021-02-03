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

  const BookPage({Key key, @required this.hotel}) : super(key: key);

  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  PickerDateRange _dateRange;

  // ignore: unused_field
  int _room = 1;
  // ignore: unused_field
  int _adults = 1;
  // ignore: unused_field
  int _children = 0;

  void _book() async {
    // ignore: unawaited_futures
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AppDialogWaiting(),
    );

    await Future.delayed(const Duration(seconds: 5));

    Navigator.pop(context);

    final isSuccess = Random().nextInt(2) == 1;

    if (isSuccess) {
      // ignore: unawaited_futures
      showDialog(
        context: context,
        builder: (_) => AppDialogSuccess(
          message: 'Hotel booked successfully',
        ),
      );
    } else {
      // ignore: unawaited_futures
      showDialog(
        context: context,
        builder: (_) => AppDialogFailure(
          message: 'Hotel booking failed!',
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
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
                    Text(
                      '${_dateRange?.startDate?.formatDate(pattern: 'yyyy MMM dd') ?? 'Depart'} - ${_dateRange?.endDate?.formatDate(pattern: 'yyyy MMM dd') ?? 'Return'}',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
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
                onRoomsChanged: (room, adults, children) {
                  _room = room;
                  _adults = adults;
                  _children = children;
                },
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
