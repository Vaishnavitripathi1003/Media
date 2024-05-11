import 'package:flutter/material.dart';
import 'package:mydiary/Entity/MasterData.dart';

class VideoProvider extends ChangeNotifier {
  List<MasterData> _videoList = [];
  String _currentVideoId = '';

  List<MasterData> get videoList => _videoList;
  String get currentVideoId => _currentVideoId;

  void setVideoList(List<MasterData> newList) {
    _videoList = newList;
    notifyListeners();
  }

  void setCurrentVideoId(String newVideoId) {
    _currentVideoId = newVideoId;
    notifyListeners();
  }
}