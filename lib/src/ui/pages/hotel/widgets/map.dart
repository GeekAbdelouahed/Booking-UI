import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong/latlong.dart';

import '../../../../utils/constants.dart';

class MapWidget extends StatelessWidget {
  final double latitude;
  final double longitude;

  const MapWidget({Key key, @required this.latitude, @required this.longitude})
      : super(key: key);

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1.2,
        child: FlutterMap(
          options: MapOptions(
            zoom: 15,
            center: LatLng(latitude, longitude),
            interactive: false,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: AppConstants.MAP_URL_TEMPLATE,
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  height: 40,
                  width: 40,
                  point: LatLng(latitude, longitude),
                  anchorPos: AnchorPos.align(AnchorAlign.top),
                  builder: (_) => Material(
                    elevation: 10,
                    borderRadius: BorderRadius.circular(100),
                    child: CircleAvatar(
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
