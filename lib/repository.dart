import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

class Repository {
  final _baseUrl = 'https://distributorbs.000webhostapp.com/distributor/api';

  Future getData() async {
    try {
      final response =
      await http.get(Uri.parse(_baseUrl + '/tampilstorage.php'));

      if (response.statusCode == 200) {
        print(response.body);
        Map map = jsonDecode(response.body);
        Iterable it = map['data'];
        List<Buah> buah = it.map((e) => Buah.fromJson(e)).toList();
        return buah;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future postData(String nama_buah, String berat) async {
    try {
      DateTime now = DateTime.now();
      String timestamp = now.toUtc().toIso8601String();
      final response = await http.post(
          Uri.parse(_baseUrl +
              '/tambahstorage.php?nama_buah=' +
              nama_buah +
              '&berat=' +
              berat),
          body: {
            "nama_buah": nama_buah,
            "berat": berat,
            "timestamp": timestamp
          });
      if (response.statusCode == 201) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future putData(int id, String nama_buah, String berat) async {
    try {
      DateTime now = DateTime.now();
      String timestamp = now.toUtc().toIso8601String();
      final response = await http.put(
          Uri.parse(_baseUrl +
              '/update_storage.php?id=' +
              id.toString() +
              '&nama_buah=' +
              nama_buah +
              '&berat=' +
              berat),
          body: {
            'nama_buah': nama_buah,
            'berat': berat,
            "timestamp": timestamp
          });
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future<bool> deleteData(int id) async {
    try {
      final response = await http.delete(
        Uri.parse(_baseUrl + '/hapusstorage.php?id=' + id.toString()),
      );

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print(e.toString());
      return false;
    }
  }
}

class RepositoryTotalBerat {
  final _baseUrl =
      'http://distributorbs.000webhostapp.com/distributor/api/totalberat.php';

  Future<List<TotalBerat>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Map<String, dynamic> map = jsonDecode(response.body);
        List<TotalBerat> listTotalBerat = [
          TotalBerat.fromJson({'total_weight': map['total_weight']})
        ];
        return listTotalBerat;
      } else {
        // Handle response status code other than 200
        return [];
      }
    } catch (e) {
      print(e.toString());
      // Handle network error or other exceptions
      return [];
    }
  }
}

class RepositoryBerat {
  final _baseUrl =
      'http://distributorbs.000webhostapp.com/distributor/api/tampildata.php';

  Future getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Map map = jsonDecode(response.body);
        Iterable it = map['data'];
        List<Berat> berat = it.map((e) => Berat.fromJson(e)).toList();
        return berat;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class RepositoryRataBerat {
  final _baseUrl =
      'http://distributorbs.000webhostapp.com/distributor/api/rataberat.php';

  Future<List<RataBerat>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Map<String, dynamic> map = jsonDecode(response.body);
        List<RataBerat> listRata = [
          RataBerat.fromJson({'average_weight': map['average_weight']})
        ];
        return listRata;
      } else {
        // Handle response status code other than 200
        return [];
      }
    } catch (e) {
      print(e.toString());
      // Handle network error or other exceptions
      return [];
    }
  }
}

class RepositoryBeratTerbesar {
  final _baseUrl =
      'http://distributorbs.000webhostapp.com/distributor/api/beratterbesar.php';

  Future<List<BeratTerbesar>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Map<String, dynamic> map = jsonDecode(response.body);
        List<BeratTerbesar> listMax = [
          BeratTerbesar.fromJson({'max_weight': map['max_weight']})
        ];
        return listMax;
      } else {
        // Handle response status code other than 200
        return [];
      }
    } catch (e) {
      print(e.toString());
      // Handle network error or other exceptions
      return [];
    }
  }
}

class RepositoryBeratTerkecil {
  final _baseUrl =
      'http://distributorbs.000webhostapp.com/distributor/api/beratterkecil.php';

  Future<List<BeratTerkecil>> getData() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        print(response.body);
        Map<String, dynamic> map = jsonDecode(response.body);
        List<BeratTerkecil> listMin = [
          BeratTerkecil.fromJson({'min_weight': map['min_weight']})
        ];
        return listMin;
      } else {
        // Handle response status code other than 200
        return [];
      }
    } catch (e) {
      print(e.toString());
      // Handle network error or other exceptions
      return [];
    }
  }
}
