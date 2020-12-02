import '../helpers/custom_trace.dart';
import '../models/extra.dart';


class Favorite {
  String id;
  List<Extra> extras;
  String userId;

  Favorite();

  Favorite.fromJSON(Map<String, dynamic> jsonMap) {
    try {
      id = jsonMap['id'] != null ? jsonMap['id'].toString() : null;
      f = jsonMap['f'] != null ? F.fromJSON(jsonMap['f']) : F.fromJSON({});
      extras = jsonMap['extras'] != null ? List.from(jsonMap['extras']).map((element) => Extra.fromJSON(element)).toList() : null;
    } catch (e) {
      id = '';
      f = F.fromJSON({});
      extras = [];
      print(CustomTrace(StackTrace.current, message: e));
    }
  }

  Map toMap() {
    var map = new Map<String, dynamic>();
    map["id"] = id;
    map["fd_id"] = f.id;
    map["user_id"] = userId;
    map["extras"] = extras.map((element) => element.id).toList();
    return map;
  }
}
