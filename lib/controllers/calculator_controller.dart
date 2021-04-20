import 'package:floor_calculator/helpers/parse_helper.dart';
import 'package:floor_calculator/models/floor_model.dart';
import 'package:floor_calculator/models/result_model.dart';
import 'package:floor_calculator/models/room_model.dart';

class CalculatorController {
  final room = new RoomModel();
  final floor = new FloorModel();

  void setRoomWidth(String value) {
    room.width = ParseHelper.toDouble(value);
  }

  void setRoomLength(String value) {
    room.length = ParseHelper.toDouble(value);
  }

  void setFloorWidth(String value) {
    floor.width = ParseHelper.toDouble(value);
  }

  void setFloorLength(String value) {
    floor.length = ParseHelper.toDouble(value);
  }

  void setFloorPrice(String value) {
    floor.price = ParseHelper.toDouble(value);
  }

  ResultModel calculate() {
    final result = new ResultModel();
    result.piecesByWidth = (room.width / (floor.width / 100)).ceil();
    result.piecesByLength = (room.length / (floor.length / 100)).ceil();
    result.areaFloor = floor.length * floor.width;
    result.priceByPiece = floor.width * floor.length * 0.0001;
    return result;
  }
}
