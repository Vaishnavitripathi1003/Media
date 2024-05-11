
class DataBaseEntity{

  static const String masterTable = 'master_table';
  static const String topSliderId = 'TopSlider_Id';
  static const String topSliderContent = 'TopSlider_Content';
  static const String description = 'Description';
  static const String Video_ID = 'Video_ID';
  static const String imagesPath = 'imagespath';

  static const String createTableMaster =
      'CREATE TABLE ' + masterTable + '(' +
          topSliderId + ' INTEGER PRIMARY KEY, ' +
          topSliderContent + ' TEXT, ' +
          description + ' TEXT, ' +
          Video_ID + ' TEXT, ' +
          imagesPath + ' TEXT' +
          ')';

}