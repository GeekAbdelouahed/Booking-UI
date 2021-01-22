import 'package:flutter/material.dart';

import '../../../../entities/hotel.dart';
import '../../../components/buttons/favorite.dart';
import '../../../components/image.dart';
import '../../../components/indicator.dart';

class AppBarWidget extends StatefulWidget {
  final Hotel hotel;

  const AppBarWidget({Key key, @required this.hotel}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) => SliverAppBar(
        stretch: true,
        expandedHeight: MediaQuery.of(context).size.width,
        actions: [
          AppFavoriteButton(
            onFavoriteChanged: (isFavorite) {},
          ),
          const SizedBox(
            width: 20,
          ),
        ],
        flexibleSpace: FlexibleSpaceBar(
          stretchModes: [
            StretchMode.zoomBackground,
          ],
          background: Stack(
            children: [
              Positioned.fill(
                child: PageView(
                  controller: _controller,
                  children: widget.hotel.photos
                      .map((img) => AppImage(url: img))
                      .toList(),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 30,
                child: Center(
                  child: AppIndicator(
                    controller: _controller,
                    count: widget.hotel.photos.length,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
