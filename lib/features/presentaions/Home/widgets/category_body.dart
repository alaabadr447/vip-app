






import 'package:flutter/cupertino.dart';
import 'package:vip/features/presentaions/Home/widgets/category_card.dart';

class CategoryBody<T> extends StatelessWidget {
   final   List x;

  const CategoryBody({Key? key,   required this.x}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: x.length,
      itemBuilder: (context, index) {
        // Node<T>? currentNode = _getNodeAt(list, index);
        // if (currentNode == null) {
        //   return const SizedBox();
        // }
        return CategoryCard(currentCat: x[index]);
      },
    );
  }
  }