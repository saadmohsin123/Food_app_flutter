import 'package:flutter/material.dart';
import 'package:food_app/size_config.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({super.key});

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  List<String> deliveryLocations = [
    'Green Way 3000, Sylhet',
    'Dhoraji colony',
    'Dalmia'
  ];
  String? selectedAddress = 'Green Way 3000, Sylhet';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedAddress,
      items: deliveryLocations.map((item) {
        final isItemSelected = item == selectedAddress;
        return DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: isItemSelected
                  ? Colors.white
                  : Colors.black, // Ternary operator for color
            ),
          ),
        );
      }).toList(),
      onChanged: (item) => setState(() => selectedAddress = item),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      underline: Container(),
      style: TextStyle(
        color: Colors.white, // Change the text color of the selected item
        fontSize: getProportionateScreenWidth(14),
      ),
    );
  }
}

class DropDownListTime extends StatefulWidget {
  const DropDownListTime({super.key});

  @override
  State<DropDownListTime> createState() => _DropDownListTimeState();
}

class _DropDownListTimeState extends State<DropDownListTime> {
  List<String> deliveryTimes = ['1 Hour', '2 Hours', '3 Hours'];
  String? selectedTime = '1 Hour';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedTime,
      items: deliveryTimes.map((item) {
        final isItemSelected = item == selectedTime;
        return DropdownMenuItem<String>(
          value: item,
          child: Text(
            item,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: isItemSelected
                  ? Colors.white
                  : Colors.black, // Ternary operator for color
            ),
          ),
        );
      }).toList(),
      onChanged: (item) => setState(() => selectedTime = item),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.white,
      ),
      underline: Container(),
    );
  }
}
