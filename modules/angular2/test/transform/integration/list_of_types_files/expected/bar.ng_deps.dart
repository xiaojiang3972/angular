library bar.ng_deps.dart;

import 'bar.dart';
import 'package:angular2/src/core/annotations/annotations.dart';
import 'foo.dart';
import 'foo.ng_deps.dart' as i0;
import 'package:angular2/src/core/annotations/annotations.ng_deps.dart' as i1;

bool _visited = false;
void setupReflection(reflector) {
  if (_visited) return;
  _visited = true;
  reflector
    ..registerType(MyComponent, {
      'factory': (MyContext c) => new MyComponent(c),
      'parameters': const [const [MyContext]],
      'annotations':
          const [const Component(componentServices: const [MyContext])]
    });
  i0.setupReflection(reflector);
  i1.setupReflection(reflector);
}
