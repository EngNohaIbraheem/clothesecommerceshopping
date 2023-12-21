import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/asset.dart';
import '../../../../../core/utils/navigation.dart';
import '../details_view.dart';
import 'cart_list.dart';
import 'cart_total.dart';


class Cart extends StatelessWidget {

  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black,),
    onPressed: () {
      returnBack(context);
    },
        ),
        title: const Text("Cart", style: TextStyle(color: Colors.black, fontSize: 40,
            fontWeight:FontWeight.bold),),
      ),
      // bottomSheet: const CartTotal(),
      // body: const Column(
      //     children: [
      //       Expanded(child: CartList()),
      //
      //     ]),
    );
  }
}





















//   const Cart({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         // backgroundColor: productModel.color,
//         elevation: 0,
//         leading: IconButton(
//           onPressed: () {
//             returnBack(context);
//           },
//           icon: SvgPicture.asset(
//             AssetData.kBack,
//             colorFilter: const ColorFilter.mode(
//               Colors.white,
//               BlendMode.srcIn,
//             ),
//           ),
//         ),
//         title: const Text("Cart", style: TextStyle(color: Colors.black, fontSize: 40,
//             fontWeight:FontWeight.bold),),
//       ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: SvgPicture.asset(
//               AssetData.kSearch,
//               colorFilter: const ColorFilter.mode(
//                 Colors.white,
//                 BlendMode.srcIn,
//               ),
//             ),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: SvgPicture.asset(
//               AssetData.kCart,
//               colorFilter: const ColorFilter.mode(
//                 Colors.white,
//                 BlendMode.srcIn,
//               ),
//             ),
//           ),
//
//           const SizedBox(
//             width: kDefaultPadding / 2,
//           ),
//         ],
//       ),
//     );
//
//
//
//
//   }
// }