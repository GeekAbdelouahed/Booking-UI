import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../../../../utils/extensions.dart';
import '../../../components/dialogs/date_picker.dart';
import '../../../components/dialogs/rooms.dart';
import '../../../components/fields/search.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  PickerDateRange _dateRange;

  int _rooms = 1;
  int _adults = 1;
  int _children = 0;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          AppSearchField(),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
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
                        '${_dateRange?.startDate?.formatDate(pattern: 'dd MMM') ?? ''} - ${_dateRange?.endDate?.formatDate(pattern: 'dd MMM') ?? ''}',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: const VerticalDivider(),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AppRoomsDialog(
                        onSelectRooms: (rooms, adults, children) {
                          setState(() {
                            _rooms = rooms;
                            _adults = adults;
                            _children = children;
                          });
                        },
                      ),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                      Text(
                        '$_rooms Rooms - $_adults Adults - $_children Children',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      );
}
