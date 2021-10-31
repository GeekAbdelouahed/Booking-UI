import 'package:booking/src/entities/hotel.dart';
import 'package:flutter/material.dart';

import '../../../components/deal.dart';

class ResultsWidget extends StatefulWidget {
  final List<Hotel> hotels;
  final Function(int)? onSelectHotel;

  const ResultsWidget({Key? key, required this.hotels, this.onSelectHotel})
      : super(key: key);

  @override
  _ResultsWidgetState createState() => _ResultsWidgetState();
}

class _ResultsWidgetState extends State<ResultsWidget> {
  final _controller = PageController(viewportFraction: .8);

  @override
  Widget build(BuildContext context) => PageView.builder(
        onPageChanged: widget.onSelectHotel,
        controller: _controller,
        itemCount: widget.hotels.length,
        itemBuilder: (_, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.5),
          child: FittedBox(
            child: DealItemWidget(
              elevation: 5,
              shadowColor: Colors.black87,
              hotel: widget.hotels[index],
            ),
          ),
        ),
      );
}
