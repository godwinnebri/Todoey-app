// import 'package:flutter/material.dart';
// import 'package:todoey_two/constants/color_constants.dart';

// class taskNameField extends StatefulWidget {
//   final String fieldName;
//   final String hintText;

//   taskNameField({
//     required this.fieldName,
//     required this.hintText,
//     // required this.onChanged,
//   });
//   @override
//   State<taskNameField> createState() => _taskNameFieldState();
// }

// class _taskNameFieldState extends State<taskNameField> {
//   //final TextEditingController inputController;
//   //late FocusNode _focusNode;

//   // //focusNode init and dispose
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _focusNode = FocusNode();
//   // }

//   // @override
//   // void dispose() {
//   //   _focusNode.dispose();
//   //   super.dispose();
//   // }

//   // void _requestFocus() {
//   //   setState(() {
//   //     FocusScope.of(context).requestFocus(_focusNode);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final String newTaskTitle = '';
//     //final onChanged;

//     return Container(
//       height: 54,
//       child: TextFormField(
//         // autofocus: true,
//         //focusNode: _focusNode,
//         //  onTap: _requestFocus,
//         // controller: inputController,
//         onChanged: (newText) {
//           newText = newTaskTitle;
//         },
//         keyboardType: TextInputType.text,
//         style: const TextStyle(fontSize: 16, color: Colors.black),
//         decoration: InputDecoration(
//           label: Text(widget.fieldName),
//           labelStyle: const TextStyle(
//               // color: _focusNode.hasFocus ? primaryColor : grey,
//               fontSize: 16),

//           // prefixIcon: Icon(Icons.email),
//           filled: false,
//           //fillColor: accentColor,
//           hintText: widget.hintText,
//           hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
//           contentPadding:
//               const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18.0),
//           border: const OutlineInputBorder(
//             borderSide: BorderSide(color: grey, width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           ),
//           focusedBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: primaryColor, width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           ),
//           errorBorder: const OutlineInputBorder(
//             borderSide: BorderSide(color: Colors.red, width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           ),
//           enabledBorder: OutlineInputBorder(
//             borderSide: BorderSide(color: grey.withOpacity(0.2), width: 1.0),
//             borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           ),
//         ),
//       ),
//     );
//   }
// }
