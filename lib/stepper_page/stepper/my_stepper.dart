import 'package:flutter/material.dart';
import 'package:play/styles/mainStyle.dart';

class MyStepper extends StatelessWidget {
  final int totalQty;
  final int current;
  const MyStepper({Key? key, this.totalQty = 8, this.current = 0});

  @override
  Widget build(BuildContext context) {
    List<Widget> childs = [];

    for (int i = 0; i < totalQty; i++) {
      childs.add(buildStepLine(context, i));
    }
    return Row(children: childs);
  }
  /*
    return Row(
      children: List.filled(totalQty, null)
          .asMap()
          .map((index, _) => MapEntry(index, buildStepLine(index)))
          .values
          .toList(),
    );
     */

  Widget buildStepLine(BuildContext context, int index) {
    ThemeData theme = Theme.of(context);

    return Expanded(
      child: Column(
        children: [
          Text(
            current == index ? "Шаг ${current + 1}/$totalQty" : ' ',
            style: TextStyle(fontSize: 8),
          ),
          SizedBox(height: 7),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              height: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: current == index
                      ? theme.colorScheme.primary
                      : GlobalStyles.disabledColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(3),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
