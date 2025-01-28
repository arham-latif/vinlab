// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// class VideoMessage extends StatelessWidget {
//   final ChatMessage message;
//   VideoMessage({required this.message});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(message.sender),
//       subtitle: FutureBuilder(
//         future: _initializeVideoPlayer(message.fileId),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             return VideoPlayer(snapshot.data);
//           } else {
//             return CircularProgressIndicator();
//           }
//         },
//       ),
//     );
//   }
//
//   Future<VideoPlayerController> _initializeVideoPlayer(String fileId) async {
//     final controller =
//         VideoPlayerController.network('http://yourserver.com/file/$fileId');
//     await controller.initialize();
//     return controller;
//   }
// }
