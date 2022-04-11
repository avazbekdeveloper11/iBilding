import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveService {
  static Box? box;
  static Future<void> initHive() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Hive.init(dir.path);
    box = await Hive.openBox("contracts");
    print("Opened Box");
  }

  static Future<void> putToBox(Map db) async {
    box!.add(db);

    print(box!.getAt(0));
  }

  static Future<void> openBox() async {}

  static Future<void> getData() async {
    await initHive();
  }

  static Future<void> registerAdapters() async {
    // TODO
  }

  static Map<String, dynamic> db = {
    "fish": "Yo'ldoshova",
    "status": "Paid",
    "Amout": 1200000,
    "lastinvoice": 156,
    "number": 6,
    "adress":
        "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
    "inn": 5647520318,
    "cratedAt": "14:38, 2 February, 2021",
  };
}
