import 'package:flutter/material.dart';

import '../../../../../dummy_data/categories.dart';
import '../../../components/category.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: AppCategories.data.length,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemBuilder: (_, index) => CategoryItemWidget(
          category: AppCategories.data[index],
        ),
        separatorBuilder: (_, __) => const SizedBox(
          width: 10,
        ),
      );
}
