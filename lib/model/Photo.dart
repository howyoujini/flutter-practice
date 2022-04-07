/// id : 7050884
/// pageURL : "https://pixabay.com/photos/clouds-sky-atmosphere-blue-sky-7050884/"
/// type : "photo"
/// tags : "clouds, sky, atmosphere"
/// previewURL : "https://cdn.pixabay.com/photo/2022/03/06/05/30/clouds-7050884_150.jpg"
/// previewWidth : 150
/// previewHeight : 100
/// webformatURL : "https://pixabay.com/get/g4116eeae46577dfc60934e852840448412a88e7a62fe77546f4d683d3e1df8b0f70d8304e9f09b42c0a86e466fa917a714c90ac0b4f940eb3b0dad9e7d76f248_640.jpg"
/// webformatWidth : 640
/// webformatHeight : 427
/// largeImageURL : "https://pixabay.com/get/gedba791dd83d36878e4dc37eb9455d1b8a3ecec496a50c0c4acd343d2cc17278bcd2d2d6ec75dbc0ee47278173e2cdef7b5f7ec34d41aac8fd3f902e6611ef18_1280.jpg"
/// imageWidth : 5184
/// imageHeight : 3456
/// imageSize : 2499645
/// views : 258533
/// downloads : 207624
/// collections : 5224
/// likes : 185
/// comments : 53
/// user_id : 25073177
/// user : "Mint_Foto"
/// userImageURL : ""

class Photo {
  Photo({
      int? id, 
      String? pageURL, 
      String? type, 
      String? tags, 
      String? previewURL, 
      int? previewWidth, 
      int? previewHeight, 
      String? webformatURL, 
      int? webformatWidth, 
      int? webformatHeight, 
      String? largeImageURL, 
      int? imageWidth, 
      int? imageHeight, 
      int? imageSize, 
      int? views, 
      int? downloads, 
      int? collections, 
      int? likes, 
      int? comments, 
      int? userId, 
      String? user, 
      String? userImageURL,}){
    _id = id;
    _pageURL = pageURL;
    _type = type;
    _tags = tags;
    _previewURL = previewURL;
    _previewWidth = previewWidth;
    _previewHeight = previewHeight;
    _webformatURL = webformatURL;
    _webformatWidth = webformatWidth;
    _webformatHeight = webformatHeight;
    _largeImageURL = largeImageURL;
    _imageWidth = imageWidth;
    _imageHeight = imageHeight;
    _imageSize = imageSize;
    _views = views;
    _downloads = downloads;
    _collections = collections;
    _likes = likes;
    _comments = comments;
    _userId = userId;
    _user = user;
    _userImageURL = userImageURL;
}

  Photo.fromJson(dynamic json) {
    _id = json['id'];
    _pageURL = json['pageURL'];
    _type = json['type'];
    _tags = json['tags'];
    _previewURL = json['previewURL'];
    _previewWidth = json['previewWidth'];
    _previewHeight = json['previewHeight'];
    _webformatURL = json['webformatURL'];
    _webformatWidth = json['webformatWidth'];
    _webformatHeight = json['webformatHeight'];
    _largeImageURL = json['largeImageURL'];
    _imageWidth = json['imageWidth'];
    _imageHeight = json['imageHeight'];
    _imageSize = json['imageSize'];
    _views = json['views'];
    _downloads = json['downloads'];
    _collections = json['collections'];
    _likes = json['likes'];
    _comments = json['comments'];
    _userId = json['user_id'];
    _user = json['user'];
    _userImageURL = json['userImageURL'];
  }
  int? _id;
  String? _pageURL;
  String? _type;
  String? _tags;
  String? _previewURL;
  int? _previewWidth;
  int? _previewHeight;
  String? _webformatURL;
  int? _webformatWidth;
  int? _webformatHeight;
  String? _largeImageURL;
  int? _imageWidth;
  int? _imageHeight;
  int? _imageSize;
  int? _views;
  int? _downloads;
  int? _collections;
  int? _likes;
  int? _comments;
  int? _userId;
  String? _user;
  String? _userImageURL;
Photo copyWith({  int? id,
  String? pageURL,
  String? type,
  String? tags,
  String? previewURL,
  int? previewWidth,
  int? previewHeight,
  String? webformatURL,
  int? webformatWidth,
  int? webformatHeight,
  String? largeImageURL,
  int? imageWidth,
  int? imageHeight,
  int? imageSize,
  int? views,
  int? downloads,
  int? collections,
  int? likes,
  int? comments,
  int? userId,
  String? user,
  String? userImageURL,
}) => Photo(  id: id ?? _id,
  pageURL: pageURL ?? _pageURL,
  type: type ?? _type,
  tags: tags ?? _tags,
  previewURL: previewURL ?? _previewURL,
  previewWidth: previewWidth ?? _previewWidth,
  previewHeight: previewHeight ?? _previewHeight,
  webformatURL: webformatURL ?? _webformatURL,
  webformatWidth: webformatWidth ?? _webformatWidth,
  webformatHeight: webformatHeight ?? _webformatHeight,
  largeImageURL: largeImageURL ?? _largeImageURL,
  imageWidth: imageWidth ?? _imageWidth,
  imageHeight: imageHeight ?? _imageHeight,
  imageSize: imageSize ?? _imageSize,
  views: views ?? _views,
  downloads: downloads ?? _downloads,
  collections: collections ?? _collections,
  likes: likes ?? _likes,
  comments: comments ?? _comments,
  userId: userId ?? _userId,
  user: user ?? _user,
  userImageURL: userImageURL ?? _userImageURL,
);
  int? get id => _id;
  String? get pageURL => _pageURL;
  String? get type => _type;
  String? get tags => _tags;
  String? get previewURL => _previewURL;
  int? get previewWidth => _previewWidth;
  int? get previewHeight => _previewHeight;
  String? get webformatURL => _webformatURL;
  int? get webformatWidth => _webformatWidth;
  int? get webformatHeight => _webformatHeight;
  String? get largeImageURL => _largeImageURL;
  int? get imageWidth => _imageWidth;
  int? get imageHeight => _imageHeight;
  int? get imageSize => _imageSize;
  int? get views => _views;
  int? get downloads => _downloads;
  int? get collections => _collections;
  int? get likes => _likes;
  int? get comments => _comments;
  int? get userId => _userId;
  String? get user => _user;
  String? get userImageURL => _userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pageURL'] = _pageURL;
    map['type'] = _type;
    map['tags'] = _tags;
    map['previewURL'] = _previewURL;
    map['previewWidth'] = _previewWidth;
    map['previewHeight'] = _previewHeight;
    map['webformatURL'] = _webformatURL;
    map['webformatWidth'] = _webformatWidth;
    map['webformatHeight'] = _webformatHeight;
    map['largeImageURL'] = _largeImageURL;
    map['imageWidth'] = _imageWidth;
    map['imageHeight'] = _imageHeight;
    map['imageSize'] = _imageSize;
    map['views'] = _views;
    map['downloads'] = _downloads;
    map['collections'] = _collections;
    map['likes'] = _likes;
    map['comments'] = _comments;
    map['user_id'] = _userId;
    map['user'] = _user;
    map['userImageURL'] = _userImageURL;
    return map;
  }

}