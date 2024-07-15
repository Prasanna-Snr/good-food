import 'package:flutter/material.dart';

class UploadProducts extends StatefulWidget {
  const UploadProducts({super.key});

  @override
  State<UploadProducts> createState() => _UploadProductsState();
}

class _UploadProductsState extends State<UploadProducts> {
  String? selectedMart;

  List<String> marts = [
    "mart 1", "mart 2", "mart 3", "mart 4", "mart 5"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Good Food",
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mart"),
            SizedBox(height: 8.0),
            DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: DropdownButton<String>(
                  value: selectedMart,
                  hint: Text("Select Mart"),
                  items: marts.map((String valueItem) {
                    return DropdownMenuItem<String>(
                      value: valueItem,
                      child: Text(valueItem),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedMart = newValue;
                    });
                  },
                  underline: SizedBox(), // Removes the default underline
                  isExpanded: true, // Makes the DropdownButton fill the width
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
