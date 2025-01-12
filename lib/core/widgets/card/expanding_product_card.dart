import 'package:flutter/material.dart';
import 'package:wasly_template/core/styles/custom_color_styles.dart';
import 'package:wasly_template/core/styles/custom_responsive_text_styles.dart';
import 'package:wasly_template/core/widgets/button/TextButton/custom_text_button_active.dart';
import 'package:wasly_template/core/widgets/rating/ratingContainer.dart';

class ExpandingProductCard extends StatefulWidget {
  final String name;
  final String imageUrl;
  final double price;
  final int itemCount;
  final String status;
  final double rate;
  final int numberOfRating;
  const ExpandingProductCard(
      {Key? key,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.itemCount,
      required this.numberOfRating,
      required this.rate,
      required this.status})
      : super(key: key);

  @override
  State<ExpandingProductCard> createState() => _ExpandingProductCardState();
}

class _ExpandingProductCardState extends State<ExpandingProductCard>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 0.05,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleExpanded,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        width: 300,
        height: _isExpanded ? 470 : 360,
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.backgroundAccent,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(_isExpanded ? 0.12 : 0.08),
              blurRadius: _isExpanded ? 12 : 8,
              offset: Offset(0, _isExpanded ? 4 : 2),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top row with rating and status/price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Rating container
                    Flexible(
                      child: Hero(
                        tag: 'rating_${widget.name}',
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                          alignment: Alignment.topLeft,
                          child: RatingcontainerLight(
                            padding: EdgeInsets.all(8.0),
                            rate: 5.0,
                            numberOfRating: 200,
                          ),
                        ),
                      ),
                    ),
                    if (_isExpanded)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF8B5CF6).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          'pending',
                          style:
                              CustomResponsiveTextStyles.buttonText1.copyWith(
                            color: AppColors.primaryBase,
                          ),
                        ),
                      )
                    else
                      Hero(
                        tag: 'price_${widget.name}',
                        child: Text(
                          '\$${widget.price}',
                          style: CustomResponsiveTextStyles.fieldText1.copyWith(
                            color: AppColors.textPrimaryBase,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Transform.rotate(
                          angle: _rotationAnimation.value,
                          child: Hero(
                              tag: 'image_${widget.name}',
                              child: Container(
                                alignment: Alignment.center,
                                height: 200,
                                decoration: BoxDecoration(
                                  color: AppColors.surfaceLight,
                                  borderRadius: BorderRadius.circular(12),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      offset: const Offset(0, 3),
                                      blurRadius: 10,
                                      spreadRadius: 0.5,
                                    ),
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.05),
                                      offset: const Offset(0, 6),
                                      blurRadius: 15,
                                      spreadRadius: 1,
                                    ),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Image.network(
                                    widget.imageUrl,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              )),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // Product name
                Hero(
                  tag: 'name_${widget.name}',
                  child: Text(
                    widget.name,
                    style: CustomResponsiveTextStyles.headingH5.copyWith(
                      color: AppColors.textPrimaryBase,
                    ),
                  ),
                ),
                if (_isExpanded) ...[
                  const SizedBox(height: 12),
                  // Price and item count
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${widget.price}',
                        style: CustomResponsiveTextStyles.fieldText4,
                      ),
                      Text(
                        'item count: ${widget.itemCount}',
                        style: CustomResponsiveTextStyles.fieldText4.copyWith(
                          color: AppColors.textSecondaryBase,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Re Add To Cart button
                  SizedBox(
                    width: double.infinity,
                    child: CustomTextButtonActive(
                      text: "Re Add To Cart",
                      onClick: () {},
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
