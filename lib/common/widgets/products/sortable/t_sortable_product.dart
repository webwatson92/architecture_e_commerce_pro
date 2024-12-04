import 'package:e_commerce_pro/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce_pro/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce_pro/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSortableProduct extends StatelessWidget {
  const TSortableProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Dropdown
        DropdownButtonFormField<String>(
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
          onChanged: (value) {},
          items: ['Kante', 'Alima', 'Adoré', 'Amour']
              .map((option) => DropdownMenuItem(
                    value: option, // Ajout de la valeur
                    child: Text(option),
                  ))
              .toList(),
        ),
        // DropdownButtonFormField<String>(
        //   value: 'default', // Valeur initiale
        //   items: const [
        //     DropdownMenuItem(value: 'default', child: Text('Par défaut')),
        //     DropdownMenuItem(value: 'name', child: Text('Nom')),
        //     DropdownMenuItem(value: 'price', child: Text('Prix')),
        //   ],
        //   decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        //   onChanged: (value){},
        // ),
    
        const SizedBox(height: TSizes.spaceBtwSections,),
    
        ///Products
        TGridLayout(itemCount: 4, itemBuilder: (__, index) => const TProductCardVertical())
      ],
    );
  }
}