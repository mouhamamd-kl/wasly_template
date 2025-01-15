import 'package:flutter/material.dart';
import 'package:wasly_template/wasly_template.dart';

class PriceRangeSlider extends StatefulWidget {
  final double min;
  final double max;
  final RangeValues initialValues;
  final void Function(RangeValues)? onChanged;

  const PriceRangeSlider({
    super.key,
    required this.min,
    required this.max,
    required this.initialValues,
    this.onChanged,
  });

  @override
  State<PriceRangeSlider> createState() => _PriceRangeSliderState();
}

class _PriceRangeSliderState extends State<PriceRangeSlider> {
  late RangeValues _currentRangeValues;
  final int barCount = 10;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = widget.initialValues;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$${_currentRangeValues.start.toStringAsFixed(0)}',
                style: const TextStyle(fontWeight: FontWeight.bold)),
            Text('\$${_currentRangeValues.end.toStringAsFixed(0)}',
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 100,
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(barCount, (index) {
                  final barValue =
                      (index * (widget.max - widget.min) / (barCount - 1)) +
                          widget.min;
                  final isActive = barValue >= _currentRangeValues.start &&
                      barValue <= _currentRangeValues.end;

                  return Container(
                    width: 15,
                    height: 40 + (index % 3) * 20.0,
                    decoration: BoxDecoration(
                      color: isActive
                          ? AppColors.primaryBase
                          : AppColors.primaryBase.withValues(alpha: 0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  );
                }),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SliderTheme(
                  data: SliderThemeData(
                    rangeThumbShape: const RoundRangeSliderThumbShape(
                      enabledThumbRadius: 6,
                    ),
                    activeTrackColor: Colors.transparent,
                    inactiveTrackColor: Colors.transparent,
                    rangeTrackShape: const RoundedRectRangeSliderTrackShape(),
                    thumbColor: AppColors.primaryBase,
                    overlayColor: AppColors.primaryBase.withOpacity(0.6),
                  ),
                  child: RangeSlider(
                    values: _currentRangeValues,
                    min: widget.min,
                    max: widget.max,
                    onChanged: (RangeValues values) {
                      setState(() {
                        _currentRangeValues = values;
                      });
                      widget.onChanged?.call(values);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
