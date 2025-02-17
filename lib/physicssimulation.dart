// import 'package:flutter/material.dart';
// import 'package:flutter/physics.dart';

// main() {
//   runApp(const MaterialApp(home: PhysicsCardDragDemo()));
// }

// class PhysicsCardDragDemo extends StatelessWidget {
//   const PhysicsCardDragDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Nextgen Tutorial'),
//         backgroundColor: Colors.blue,
//       ),
//       body: const DraggableCard(
//         child: FlutterLogo(
//           size: 140,
//         ),
//       ),
//     );
//   }
// }

// class DraggableCard extends StatefulWidget {
//   final Widget child;
//   const DraggableCard({super.key, required this.child});

//   @override
// State<DraggableCard> createState() => _DraggableCardState();

// }

// class _DraggableCardState extends State
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;

//   Alignment _dragAlignment = Alignment.center;

//   late Animation _animation;

//   void _runAnimation(Offset pixelsPerSecond, Size size) {
//     _animation = _controller.drive(
//       AlignmentTween(
//         begin: _dragAlignment,
//         end: Alignment.center,
//       ),
//     );
//     // evaluating velocity
//     final unitsPerSecondX = pixelsPerSecond.dx / size.width;
//     final unitsPerSecondY = pixelsPerSecond.dy / size.height;
//     final unitsPerSecond = Offset(unitsPerSecondX, unitsPerSecondY);
//     final unitVelocity = unitsPerSecond.distance;

//     const spring = SpringDescription(
//       mass: 30,
//       stiffness: 1,
//       damping: 1,
//     );

//     final simulation = SpringSimulation(spring, 0, 1, -unitVelocity);

//     _controller.animateWith(simulation);
//   }

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(vsync: this);

//     _controller.addListener(() {
//       setState(() {
//         _dragAlignment = _animation.value;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//     return GestureDetector(
//       onPanDown: (details) {
//         _controller.stop();
//       },
//       onPanUpdate: (details) {
//         setState(() {
//           _dragAlignment += Alignment(
//             details.delta.dx / (size.width / 2),
//             details.delta.dy / (size.height / 2),
//           );
//         });
//       },
//       onPanEnd: (details) {
//         _runAnimation(details.velocity.pixelsPerSecond, size);
//       },
//       child: Align(
//         alignment: _dragAlignment,
//         child: Card(
//           child: widget.child,
//         ),
//       ),
//     );
//   }
// }