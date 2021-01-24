import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

import '../../../../entities/hotel.dart';
import '../../../../utils/constants.dart';
import '../../../components/image.dart';
import 'results.dart';

class MapWidget extends StatefulWidget {
  final List<Hotel> hotels;

  MapWidget({Key key, @required this.hotels}) : super(key: key);

  @override
  _MapWidgetState createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  final MapController _controller = MapController();

  int _selectedHotelIndex = 0;

  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Positioned.fill(
            child: FlutterMap(
              mapController: _controller,
              options: MapOptions(),
              layers: [
                TileLayerOptions(
                  urlTemplate: AppConstants.MAP_URL_TEMPLATE,
                ),
                MarkerLayerOptions(
                  markers: widget.hotels
                      .map(
                        (hotel) => Marker(
                          height: 50,
                          width: 50,
                          point: LatLng(
                            hotel.address.latitude,
                            hotel.address.longitude,
                          ),
                          builder: (_) => Card(
                            elevation: 10,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              side: BorderSide(
                                width: 3,
                                color:
                                    hotel == widget.hotels[_selectedHotelIndex]
                                        ? Theme.of(context).primaryColor
                                        : Colors.white,
                              ),
                            ),
                            child: AppImage(
                              url: hotel.photos[0],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 20,
            child: AspectRatio(
              aspectRatio: 2.5,
              child: ResultsWidget(
                onSelectHotel: (index) {
                  setState(() {
                    _selectedHotelIndex = index;
                  });
                  final hotel = widget.hotels[index];
                  _controller.move(
                    LatLng(
                      hotel.address.latitude,
                      hotel.address.longitude,
                    ),
                    15,
                  );
                },
                hotels: widget.hotels,
              ),
            ),
          ),
        ],
      );
}
