import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../entities/hotel.dart';
import '../../../../utils/styles.dart';

class InformationWidget extends StatefulWidget {
  final Hotel hotel;

  const InformationWidget({Key? key, required this.hotel}) : super(key: key);

  @override
  _InformationWidgetState createState() => _InformationWidgetState();
}

class _InformationWidgetState extends State<InformationWidget> {
  bool _isReadMore = false;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.hotel.title!,
                        style: AppStyles.titleStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '${widget.hotel.address!.city!.name}, ${widget.hotel.address!.country!.name}',
                            style: AppStyles.subtitleStyle.copyWith(
                              color: Colors.grey[500],
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            FontAwesomeIcons.mapMarkerAlt,
                            color: Theme.of(context).primaryColor,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            '2 Km to city',
                            style: AppStyles.subtitleStyle.copyWith(
                              color: Colors.grey[500],
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${widget.hotel.price}',
                    style: AppStyles.titleStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    '/per night',
                    style: AppStyles.subtitleStyle.copyWith(
                      color: Colors.grey[500],
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 50,
            color: Colors.grey[400],
          ),
          Text(
            'Summery',
            style: AppStyles.subtitleStyle.copyWith(
              color: Colors.grey[500],
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                _isReadMore = !_isReadMore;
              });
            },
            child: RichText(
              text: TextSpan(
                text:
                    '${widget.hotel.description!.substring(0, _isReadMore ? null : 100)} ${_isReadMore ? '' : '...'}',
                style: TextStyle(
                  color: Colors.black87,
                ),
                children: [
                  TextSpan(
                    text: ' Read ${_isReadMore ? 'less' : 'more'}',
                    style: AppStyles.titleStyle.copyWith(
                      color: Theme.of(context).primaryColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
}
