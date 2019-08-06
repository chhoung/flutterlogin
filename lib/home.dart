import 'package:flutter/material.dart';

import 'model/products_repository.dart';
import 'model/product.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  // TODO: Add a variable for Category (104)
  @override
  Widget build(BuildContext context) {
  // TODO: Return an AsymmetricView (104)
  // TODO: Pass Category variable to AsymmetricView (104)
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            print('Menu button');
          },
        ),
        title: Text('SHRINE'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: Icon(Icons.tune),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: AsymmetricView(products: ProductsRepository.loadProducts(Category.all)),
    );
  }
}




// import 'package:intl/intl.dart';
// import 'package:flutter/material.dart';

// import 'model/product.dart';
// import 'model/products_repository.dart';

// class HomePage extends StatelessWidget {
  

//  List<Card> _buildGridcards(BuildContext context) {
//     List<Product> products = ProductsRepository.loadProducts(Category.all);

//     if (products.isEmpty || products == null) {
//       return const <Card>[];
//     }

//     final ThemeData theme = Theme.of(context);
//     final NumberFormat formatter = NumberFormat.simpleCurrency(
//         locale: Localizations.localeOf(context).toString());

//     return products.map((product) {
//       return Card(
//         elevation: 0.0,
//         clipBehavior: Clip.antiAlias,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: <Widget>[
//             AspectRatio(
//               aspectRatio: 18.0 / 11.0,
//               child: Image.asset(
//                 product.assetName,
//                 package: product.assetPackage,
//                 fit: BoxFit.fitWidth,
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     Text(
//                       product == null? '' : product.name,
//                       style: theme.textTheme.button,
//                       softWrap: false,
//                       overflow: TextOverflow.ellipsis,
//                       maxLines: 1,
//                     ),
//                     SizedBox(height: 4.0),
//                     Text(
//                       product == null? '' : formatter.format(product.price),
//                       style: theme.textTheme.caption,
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       );
//     }).toList();
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       // TODO: Add app bar (102)
//       appBar: new AppBar(
//         leading: IconButton(
//           icon: Icon(
//             Icons.menu,
//             semanticLabel: 'menu',
//           ),
//           onPressed: (){
//             print('Menu Button pressed!');
//           },
//         ),
//         title: Text('SHRINE'),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.search,
//               semanticLabel: 'search',
//             ),
//             onPressed: (){
//               print('search button pressed!');
//             },
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.tune,
//               semanticLabel: 'fliter',
//             ),
//             onPressed:() {
//               print('fliter button pressed!');
//             },
//           )
//         ],
        
//       ),
//       // TODO: Add a grid view (102)
//       body: GridView.count(
//         crossAxisCount: 2,
//         padding: EdgeInsets.all(16),
//         childAspectRatio: 8.0/9.0,
//         children: _buildGridcards(context),
//       ),
//       resizeToAvoidBottomInset: false,
//     );
//   }
// }
