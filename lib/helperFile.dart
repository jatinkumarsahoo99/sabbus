// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';
import 'package:video_player/video_player.dart';





class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  final VlcPlayerController controller =  VlcPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://cdn.retosprime.com/ayna.php?id=27&e=.m3u8');
    await videoPlayerController.initialize();

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: true,
      additionalOptions: (context) {
        return <OptionItem>[
          OptionItem(
            onTap: () => debugPrint('Option 1 pressed!'),
            iconData: Icons.chat,
            title: 'Option 1',
          ),
          OptionItem(
            onTap: () =>
                debugPrint('Option 2 pressed!'),
            iconData: Icons.share,
            title: 'Option 2',
          ),
        ];
      },
    );
    setState(() {

    });
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
          title: const Text("Chewie Video Player"),
        ),
        /*body: chewieController!=null? Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Chewie(
          controller: chewieController!,
        ),
      ) : Center(
        child: CircularProgressIndicator(),
      ),*/

        body:SizedBox(
            height: 300,
            width: 300,
            child:  VlcPlayer(
              aspectRatio: 16 / 9,
              // options : VlcPlayeroptions(),
              controller: controller,
              placeholder: Center(child: CircularProgressIndicator()),
            )
        )
    );
  }
}
