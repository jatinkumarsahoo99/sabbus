// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
// import 'package:pod_player/pod_player.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  // PodPlayerController? podController;

  // final VlcPlayerController controller =  VlcPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
  final VlcPlayerController controller = VlcPlayerController.network(
      "https://team.toxic-in.online/apix/z5/index.php?type=live&id=0-9-zing",
      // "https://www.nandighoshatvlive.com/hls/stream/index.m3u8"
  );

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://team.toxic-in.online/apix/z5/index.php?type=live&id=0-9-zing',
        videoPlayerOptions: VideoPlayerOptions(
          allowBackgroundPlayback: true,
          mixWithOthers: true,
        ),
        formatHint: VideoFormat.hls,
        // 'https://www.nandighoshatvlive.com/hls/stream/index.m3u8'
    );
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      isLive: true,
      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: () => debugPrint('Option 1 pressed!'),
            iconData: Icons.chat,
            title: 'Option 1',
          ),
          OptionItem(
            onTap: () => debugPrint('Option 2 pressed!'),
            iconData: Icons.share,
            title: 'Option 2',
          ),
        ];
      },
    );

   /* podController = PodPlayerController(
      playVideoFrom:
          PlayVideoFrom.youtube('https://www.nandighoshatvlive.com/hls/stream/index.m3u8'),
    )..initialise();*/

    setState(() {});
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" "),
      ),
     /* body: chewieController != null
          ? Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Chewie(
                controller: chewieController!,
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),*/

      body: (controller != null)? Center(
          child:

          VlcPlayer(
            aspectRatio: 16 / 9,
            // options : VlcPlayeroptions(),
            controller: controller,
            placeholder: Center(child: CircularProgressIndicator()),
          ),
        ):Container()
    );
  }
}
