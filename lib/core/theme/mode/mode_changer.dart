// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mycareer/core/theme/mode/dark_mode.dart';
// import 'package:mycareer/core/theme/mode/light_mode.dart';
// import 'package:mycareer/cubit/darkmode_cubit/darkmode_cubit.dart';

// class ModeChanger extends StatelessWidget {
//   const ModeChanger({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<DarkmodeCubit, DarkmodeState>(
//       builder: (context, state) {
//         DarkmodeCubit logic = context.watch<DarkmodeCubit>();
//         return logic.isDark ? lightThemeData() : darkThemeData();
//       },
//     );
//   }
// }
