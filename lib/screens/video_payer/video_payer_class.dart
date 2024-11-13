import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sotuv_app/core/fonts.dart';
import 'package:video_player/video_player.dart';

import '../../core/colors.dart';
import '../../core/icons.dart';
import '../../core/sizeConfig.dart';

class VideoPayerClass extends StatefulWidget {
  const VideoPayerClass({super.key});

  @override
  State<VideoPayerClass> createState() => _VideoPayerClassState();
}

class _VideoPayerClassState extends State<VideoPayerClass> {
  late VideoPlayerController _controller;
  late bool _isSeek = false;
  bool _isMuted = false;
  bool _isSpeed = false;
  double _playbackSpeed = 1.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset("assets/videos/video.mp4")
      ..initialize().then((_) {
        setState(() {});
        _controller.addListener(() {
          setState(() {});
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _seekForward() async {
    final currentPosition = await _controller.position;
    final newPosition = currentPosition! + Duration(seconds: 10);
    _controller.seekTo(newPosition);
  }

  void _seekBackward() async {
    final currentPosition = await _controller.position;
    final newPosition = currentPosition! - Duration(seconds: 10);
    _controller.seekTo(newPosition);
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = duration.inHours;
    final minutes = duration.inMinutes.remainder(60);
    final seconds = duration.inSeconds.remainder(60);
    return [
      if (hours > 0) twoDigits(hours),
      twoDigits(minutes),
      twoDigits(seconds),
    ].join(':');
  }

  void seek() {
    setState(() {
    _isSeek = !_isSeek;
    });
  }

  void _toggleMute() {
    setState(() {
      _isMuted = !_isMuted;
      _controller.setVolume(_isMuted ? 0 : 1);
    });
  }

  void showSpeed() {
    setState(() {
      _isSpeed = !_isSpeed;
    });
  }

  void _changePlaybackSpeed(double speed) {
    setState(() {
      _playbackSpeed = speed;
      _controller.setPlaybackSpeed(speed);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(wi(14), he(12), wi(6) , he(10)),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(child: SvgPicture.asset(AppIcons.back, width: wi(6), height: he(15), color: Colors.white,)),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                _toggleMute();
              },
              child: Container(
                height: he(30),
                width: wi(30),
                margin: EdgeInsets.only(right: wi(20)),
                decoration: BoxDecoration(
                  color: _isMuted ? Colors.transparent : AppColors.blueColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(child: SvgPicture.asset(
                  _isMuted ? AppIcons.volumeOf : AppIcons.sound,
                  width: wi(6), height: he(15),
                  color: Colors.white,)),
              ),
            )
          ],
        ),
        body: Center(
          child: _controller.value.isInitialized
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Kirish", style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                      ),),
                    ),
                    SizedBox(height: he(180),),
                    Stack(
                      children: [
                        AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                        Positioned(
                          top: he(70),
                            left: wi(75),
                            child: _isSeek ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  icon: Icon(Icons.replay_10, color: Colors.white, size: 60,),
                                  onPressed: _seekBackward, // 10 soniyaga orqaga
                                ),
                                IconButton(
                                  icon: Icon(
                                    _controller.value.isPlaying
                                        ? Icons.pause
                                        : Icons.play_arrow,
                                    color: Colors.white,
                                    size: 60,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _controller.value.isPlaying
                                          ? _controller.pause()
                                          : _controller.play();
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.forward_10, color: Colors.white, size: 60,),
                                  onPressed: _seekForward, // 10 soniyaga oldinga
                                ),
                              ],
                            ) : Container()
                        ),
                        Positioned(
                            top: he(50),
                            left: wi(110),
                            child: _isSpeed ? Column(
                              children: [
                                Text("Tezlikni tanlang", style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: AppFonts.montserrat5
                                ),),
                                IconButton(
                                  icon: Text('Normal', style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppFonts.montserrat5
                                  ),),
                                  onPressed: () => _changePlaybackSpeed(1.0),
                                ),
                                IconButton(
                                  icon: Text('1.5x', style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: AppFonts.montserrat5
                                  ),),
                                  onPressed: () => _changePlaybackSpeed(1.5),
                                ),
                                IconButton(
                                  icon: Text('2x', style: TextStyle(
                                      fontSize: 23,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: AppFonts.montserrat5
                                  ),),
                                  onPressed: () => _changePlaybackSpeed(2.0),
                                ),
                              ],
                            ) : Container(),
                        )
                      ],
                    ),
                  ],
                )
              : CircularProgressIndicator(),
        ),
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: he(80),
        margin: EdgeInsets.only(left: wi(20), right: wi(20)),
                child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatDuration(_controller.value.position),
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontFamily: AppFonts.montserrat5,
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  _formatDuration(_controller.value.duration),
                  style: const TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontFamily: AppFonts.montserrat5,
                      fontWeight: FontWeight.w600
                  ),
                ),
              ],
            ),
            Container(
              height: he(8),
                // margin: EdgeInsets.only(left: wi(20), right: wi(20)),
                child: VideoProgressIndicator(
                  _controller,
                  allowScrubbing: true,
                  colors: const VideoProgressColors(
                    playedColor: Colors.blue,
                    bufferedColor: Colors.grey,
                    backgroundColor: Colors.black12,
                  ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(
                    _controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _controller.value.isPlaying
                          ? _controller.pause()
                          : _controller.play();
                    });
                  },
                ),
                SizedBox(width: wi(50),),
                IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.unlock)),
                IconButton(onPressed: (){
                    seek();
                }, icon: SvgPicture.asset(AppIcons.skip)),
                IconButton(onPressed: (){
                  showSpeed();
                }, icon: SvgPicture.asset(AppIcons.speed, height: he(20),)),
                IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.hd)),
                IconButton(onPressed: (){}, icon: SvgPicture.asset(AppIcons.expand)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
