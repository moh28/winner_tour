// import 'package:flutter/material.dart';

// class AppInput extends StatelessWidget {
//   final void Function(String?)? onChanged;
//   final void Function()? onTap;
//   final void Function(String?)? onSubmitted;
//   final void Function(String?)? onSaved;
//   final String? Function(String?)? validate;
//   final bool? read;
//   final Widget? prefixIcon;
//   final int? maxLines;
//   final Widget? suffixIcon;
//   final double? start;
//   final double? end;
//   final double? top;
//   final double? bottom;
//   final TextInputType? inputType;
//   final String? label;
//   final String? hint;
//   final bool? secureText;
//   final bool? isEnabled;
//   final bool? autofocus;
//   final Color? color;
//   final Color? hintColor;
//   final Color? iconColor;
//   final TextEditingController? controller;
//   final Color? borderColor;
//   final double? contentLeft;
//   final double? contentRight;
//   final double? contentTop;
//   final double? contentBottom;
//   final Color? outLineInputColorColor;
//   final Color? enabledBorderColor;
//   final Color? disableBorderColor;
//   final Color? errorBorderColor;
//   final Color? focusedBorderColor;
//   final Color? focusedErrorBorderColor;
//   final double? border;
//   const AppInput(
//       {Key? key,
//       this.onChanged,
//       this.validate,
//       this.prefixIcon,
//       this.suffixIcon,
//       this.inputType,
//       this.label,
//       this.hint,
//       this.secureText,
//       this.onSubmitted,
//       this.isEnabled = true,
//       this.controller,
//       this.color,
//       this.onSaved,
//       this.autofocus,
//       this.iconColor,
//       this.borderColor,
//       this.contentLeft,
//       this.contentRight,
//       this.contentTop,
//       this.contentBottom,
//       this.start,
//       this.end,
//       this.top,
//       this.bottom,
//       this.enabledBorderColor,
//       this.maxLines,
//       this.border,
//       this.outLineInputColorColor,
//       this.disableBorderColor,
//       this.errorBorderColor,
//       this.focusedBorderColor,
//       this.focusedErrorBorderColor,
//       this.read,
//       this.hintColor,
//       this.onTap})
//       : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsetsDirectional.only(
//           start: start ?? 0, end: end ?? 0, top: top ?? 0, bottom: bottom ?? 0),
//       child: TextFormField(
//         onTap: onTap,
//         readOnly: read ?? false,
//         maxLines: maxLines ?? 1,
//         enabled: isEnabled ?? true,
//         autovalidateMode: AutovalidateMode.onUserInteraction,
//         controller: controller,
//         onFieldSubmitted: onSubmitted,
//         style: const TextStyle(
//             //  color:hintColor?? primaryColor,
//             //  fontSize: 16.sp,
//             //   fontFamily: FontFamily.almaraiRegular
//             ),
//         obscureText: secureText ?? false,
//         keyboardType: inputType ?? TextInputType.text,
//         validator: validate,
//         onSaved: onSaved,
//         autofocus: autofocus ?? false,
//         decoration: InputDecoration(
//           enabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(border ?? 10),
//             borderSide: BorderSide(
//               width: .1,
//               color: enabledBorderColor ?? const Color(0xff707070),
//             ),
//           ),
//           focusedBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(border ?? 10),
//             borderSide: BorderSide(color: focusedBorderColor ?? Colors.white),
//           ),
//           errorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(border ?? 10),
//             borderSide: BorderSide(color: errorBorderColor ?? Colors.white),
//           ),
//           focusedErrorBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(border ?? 10),
//             borderSide:
//                 BorderSide(color: focusedErrorBorderColor ?? Colors.white),
//           ),
//           disabledBorder: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(border ?? 10),
//             borderSide: BorderSide(
//                 color: disableBorderColor ?? const Color(0xff707070)),
//           ),
//           contentPadding: EdgeInsets.only(
//               right: contentRight ?? 0,
//               top: contentTop ?? 0,
//               bottom: contentBottom ?? 0.0,
//               left: contentLeft ?? 0),
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(border ?? 10),
//             borderSide:
//                 BorderSide(color: outLineInputColorColor ?? Colors.white),
//           ),
//           filled: true,
//           fillColor: color ?? const Color(0xffD4EAF7),
//           prefixIcon: prefixIcon,
//           prefixIconConstraints: const BoxConstraints(maxHeight: 35, maxWidth: 45),
//           suffixIcon: suffixIcon,
//           suffixIconConstraints: const BoxConstraints(maxHeight: 35, maxWidth: 45),
//           labelText: label,
//           labelStyle: const TextStyle(
//             fontSize: 16,
//             //  color: primaryColor,
//             //  fontFamily: FontFamily.almaraiRegular),
//           ),
//           hintStyle: const TextStyle(
//               // fontSize: 16.sp,
//               //   color: hintColor ?? Colors.white,
//               // fontFamily: FontFamily.almaraiRegular),
//               ),
//           hintText: hint,
//         ),
//         onChanged: onChanged,
//       ),
//     );
//   }
// }
