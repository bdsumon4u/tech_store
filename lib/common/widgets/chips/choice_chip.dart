import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/containers/rounded_container.dart';
import 'package:t_store/utils/constants/color.dart';
import 'package:t_store/utils/helper.dart';

class HChoiceChip extends StatelessWidget {
  const HChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final color = HelperH.getColor(text);
    final isColor = color != null;

    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? HColor.white : null),
        avatar: isColor ? HRoundedContainer(
          backgroundColor: color,
          width: 50,
          height: 50,
        ) : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0): null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: color,
      ),
    );
  }
}
