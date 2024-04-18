class MasterData{
  String TopSlider_Id="";
  String TopSlider_Content="";
  String  Description="";
  String Video_Url="";
  String imagespath="";

  MasterData(this.TopSlider_Id, this.TopSlider_Content, this.Description,
      this.Video_Url, this.imagespath);

  factory MasterData.fromMap(Map<String, dynamic> data) {
    return MasterData(
      data['TopSlider_Id'],
      data['TopSlider_Content'],
      data['Description'],
      data['Video_Url'],
      data['imagespath'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'TopSlider_Id':TopSlider_Id,
      'TopSlider_Content':TopSlider_Content,
      'Description':Description,
      'Video_Url':Video_Url,
      'imagespath':imagespath,
    };
  }
}
