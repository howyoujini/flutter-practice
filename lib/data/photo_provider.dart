// InheritedWidget의 기본 코드

// import 'package:flutter/material.dart';
//
// class PhotoProvider extends InheritedWidget {
//   const PhotoProvider({Key? key, required Widget child})
//       : super(key: key, child: child);
//
//   @override
//   bool updateShouldNotify(covariant InheritedWidget oldWidget) {
//     // TODO : implement updateShouldNotify
//     throw UnimplementedError();
//   }
// }

import 'package:flutter/material.dart';
import 'package:image_search/ui/home_view_model.dart';

class PhotoProvider extends InheritedWidget {
  final HomeViewModel viewModel;

  const PhotoProvider({
    Key? key,
    required Widget child,
    required this.viewModel,
  }) : super(key: key, child: child);

  static PhotoProvider of(BuildContext context) {
    final PhotoProvider? result =
        context.dependOnInheritedWidgetOfExactType<PhotoProvider>();

    assert(result != null, "No PixabayApi found in context");
    return result!;
    // null 임을 보증하는 느낌표를 붙인다. 결국 null 을 리턴한다는 뜻.
  }

  @override
  bool updateShouldNotify(PhotoProvider oldWidget) {
    return true;
  }
}
