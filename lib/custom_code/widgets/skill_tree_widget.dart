// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:skill_tree/skill_tree.dart';

class SkillTreeWidget extends StatefulWidget {
  const SkillTreeWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _SkillTreeWidgetState createState() => _SkillTreeWidgetState();
}

class _SkillTreeWidgetState extends State<SkillTreeWidget> {
  @override
  Widget build(BuildContext context) {
    return SkillTree<void, void, String>.layered(
      delegate: LayeredTreeDelegate(
        mainAxisSpacing: 32.0,
        crossAxisSpacing: 48.0,
      ),
      graph: LayeredGraph(
        layout: [
          ['0', '1', '2', null],
          ['3', '4', '5', null],
          ['6', '7', '8', null],
          [null, '9', '10', null],
          ['11', '12', null, '13'],
          [null, null, '14', null],
          [null, '15', '16', null],
        ],
        edges: [
          Edge(from: '7', to: '9', data: null),
          Edge(from: '10', to: '14', data: null),
          Edge(from: '12', to: '15', data: null),
        ],
        nodes: [
          Node(id: '0', data: null),
          Node(id: '1', data: null),
          Node(id: '2', data: null),
          Node(id: '3', data: null),
          Node(id: '4', data: null),
          Node(id: '5', data: null),
          Node(id: '6', data: null),
          Node(id: '7', data: null),
          Node(id: '8', data: null),
          Node(id: '9', data: null),
          Node(id: '10', data: null),
          Node(id: '11', data: null),
          Node(id: '12', data: null),
          Node(id: '13', data: null),
          Node(id: '14', data: null),
          Node(id: '15', data: null),
          Node(id: '16', data: null),
        ],
      ),
    );
  }
}
