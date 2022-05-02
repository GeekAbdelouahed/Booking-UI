import 'package:flutter/material.dart';

import '../../entities/category.dart';
import '../../utils/styles.dart';
import 'image.dart';

class CategoryItemWidget extends StatelessWidget {
  final Category category;

  const CategoryItemWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppImage(
          url: category.photo,
          height: 65,
          width: 65,
          radius: 100,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          category.title,
          style: AppStyles.subtitleStyle.copyWith(
            color: Colors.grey[600],
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
