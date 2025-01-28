import 'dart:convert';
import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

class VideoPreview extends StatefulWidget {
  const VideoPreview({super.key, required this.base64Video});

  final String base64Video; // Pass the Base64 string here.

  @override
  State<VideoPreview> createState() => _VideoPreviewState();
}

class _VideoPreviewState extends State<VideoPreview> {
  VideoPlayerController? _controller;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initializeVideo();
  }

  Future<void> _initializeVideo() async {
    try {
      // Decode the Base64 string into bytes.
      final videoBytes = base64Decode(widget.base64Video);

      // Save the video to a temporary file.
      final tempDir = await getTemporaryDirectory();
      final tempVideoPath = '${tempDir.path}/temp_video.mp4';
      final tempVideoFile = File(tempVideoPath);
      await tempVideoFile.writeAsBytes(videoBytes);

      // Initialize the video controller with the temporary file.
      _controller = VideoPlayerController.file(tempVideoFile);
      await _controller!.initialize();

      // Initialize the Chewie controller.
      chewieController = ChewieController(
        videoPlayerController: _controller!,
        autoPlay: true,
        looping: false,
      );

      setState(() {});
    } catch (e) {
      debugPrint('Error initializing video: $e');
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_controller?.value.isInitialized ?? false) {
      return Chewie(
        controller: chewieController!,
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
