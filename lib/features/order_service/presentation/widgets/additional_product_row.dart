// Edited by: nadeen mohamed
// Edited at date: 24/10/2024
// Edit note: remove views folder and move widgets folder in presentation folder and
// Use the correct imports
import 'package:car_wash_mobile_app/core/constants/app_text_styles.dart';
import 'package:car_wash_mobile_app/core/models/all_services_model/all_services_model.dart';
// Edited by: Nadeen Mohamed
// Edited at date: 31/10/2024
// Edit note: remove unused import
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AdditionalProductRow extends StatelessWidget {
  const AdditionalProductRow({
    super.key,
    // Edited by:Nadeen Mohamed
    // Edited at date: 5/11/2024
    // Edit note: put product in the constructor
    required this.product,
  });
  // Edited by: Nadeen Mohamed
  // Edited at date: 5/11/2024
  // Edit note: Create AdditionalProduct object
  final AdditionalProduct product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          // Edited by: nadeen mohamed
          // Edited at date: 17/10/2024
          // Edit note: change width and height for the image to be responsive
          SizedBox(
            height: 32.h,
            // Edited by: nadeen mohamed
            // Edited at date: 24/10/2024
            // Edit note: Use Image.network to display product image from api
            child: SizedBox(
              width: 48.w,
              height: 30.h,
              child: Image.network(
                // Edited by: Nadeen Mohamed
                // Edited at date: 5/15/2024
                // Edit note: display the first image in the products
                product.images[0],
                // Edited by: Nadeen Mohamed
                // Edited at date: 27/10/2024
                // Edit note: use errorBuilder to show icon if image not found
                fit: BoxFit.contain, // Edited by: nadeen at 5/11/2024 (change BoxFit to contain)
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.broken_image,
                    size: 32.h,
                    color: Colors.grey,
                  ); // Handle image load errors
                },
              ),
            ),
          ),
          // Edited by: Nadeen Mohamed
          // Edited at date: 27/10/2024
          // Edit note: add sizedBox between image and texts
          SizedBox(width: 10.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 24/10/2024
                  // Edit note: use productModel to display name of product
                  product.name,
                  style: AppTextStyles.kBlack12FontW700,
                ),
                // Edited by: Nadeen Mohamed
                // Edited at datr: 27/10/2024
                // Edit note: Add sizedbox between product name and product price
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  // Edited by: Nadeen Mohamed
                  // Edited at date: 24/10/2024
                  // Edit note: use productModel to display price of the product
                  '${product.price} ${'rial'.tr}',
                  // additionalProductPrice,
                  style: AppTextStyles.kBlack12FontW400,
                ),
              ],
            ),
          ),
          const Spacer(),
          // Edited by: Nadeen Mohamed
          // Edited at date: 31/10/2024
          // Edit note: comment circular add container
          // const CircularAddContainer(),
        ],
      ),
    );
  }
}
