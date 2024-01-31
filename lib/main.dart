 import 'package:flutter/material.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:vip/vip_app.dart';
 import 'package:vip/widgets/screen_util.dart';

 import 'helpers/Observer/app_bloc_observer.dart';
 import 'injection_container.dart';

 import 'package:carousel_slider/carousel_slider.dart';
 import 'package:flutter/material.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:smooth_page_indicator/smooth_page_indicator.dart';
 import 'common/consts/assets/app_images.dart';
 import 'common/style/app_style.dart';
 import 'features/presentaions/Home/widgets/category_card.dart';
bool isJustUiTest = false;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppBlocObserver();
  await setUpInitializeApp();


  runApp(  const ScreenUtilInitWidget(
      child: VipApp())  );
}
//


// Function to get the route at a specific index in the routes list of a Node
// String getRouteAtIndex(Node node, int index) {
//   return node.routes[index];
// }
//
//
// //

//
//   int _getListLength(Node<T> head) {
//     int length = 0;
//     Node<T>? current = head;
//     while (current != null) {
//       length++;
//       current = current.next;
//     }
//     return length;
//   }
//
//   Node<T>? _getNodeAt(Node<T> head, int index) {
//     Node<T>? current = head;
//     int currentIndex = 0;
//     while (current != null) {
//       if (currentIndex == index) {
//         return current;
//       }
//       currentIndex++;
//       current = current.next;
//     }
//     return null;
//   }
// }
//
// void main() {
//   runApp(MaterialApp(
//     routes:   {
//
//       '/second_screen': (context) => SecondScreen(),
//       '/first_screen': (context) => FirstScreen(),
//       '/third_screen': (context) => Third(),
//
//     },
//     home: Scaffold(
//       body: CategoryBody(
//         list: Node(
//           'Category 1',
//           'Item 1',
//           ['/first_screen', '/second_screen', '/third_screen'], // List of routes for Category 1
//           ModelT(data: 'Data for Category 1'), // Data model for Category 1
//         )
//           ..next = Node(
//             'Category 2',
//             'Item 2',
//             ['/second_screen', '/third_screen', '/first_screen'], // List of routes for Category 2
//             ModelT(data: 'Data for Category 2'), // Data model for Category 2
//           ),
//
//
//
//         // Define your linked list here...
//
//
//
//       ),
//     ),
//   ));
// }
//
// class FirstScreen<T> extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final ModelT data = ModalRoute.of(context)!.settings.arguments as ModelT;
//
//     return Scaffold(
//       appBar: AppBar(title: Text('First Screen')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(data.data), // Display data from the data model
//             ElevatedButton(
//               onPressed: () {
//                 // Navigate to the second screen with additional data
//                 Navigator.pushNamed(context, '/second_screen', arguments: 'Additional Data');
//               },
//               child: Text('Next Screen'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ModelT {
//   final String data;
//
//   ModelT({required this.data});
// }
//
//
//
//
// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second Screen')),
//       body: Center(child: Text('Second Screen')),
//     );
//   }
// }
//
//
//
// class First extends StatelessWidget {
//   const First({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text('First'),
//       ),
//     );
//   }
// }
//
// class Second extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text('Second'),
//       ),
//     );
//   }
// }
//
// class Third extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Text('Third'),
//       ),
//     );
//   }
// }
//
//
//
//
//
