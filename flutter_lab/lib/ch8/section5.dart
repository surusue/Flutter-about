import 'package:flutter/material.dart';

class ChildWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChildWidgetState();
  }
}

class _ChildWidgetState extends State<ChildWidget> {
  @override
  // State 객체가 생성되자마자 가장 먼저 최초에 한 번 호출
  void initState() {
    super.initState();
  }

  @override
  // initState() 함수 호출된 후에 이어서 호출
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  // 상태 객체를 소멸할 때 자동으로 호출 (최후에 한 번 호출)
  void dispose() {
    super.dispose();
  }

  @override
  // 상위 위젯에서 상태 변화에 따라
  void didUpdateWidget(covariant ChildWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  // State를 작성할 때 꼭 재정의해야 함
  Widget build(BuildContext context) {
    return MaterialApp(
        //
        );
  }
}
