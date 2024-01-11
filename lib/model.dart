class Buah {
  final String id;
  final String nama_buah;
  final String berat;
  final String timestamp;

  const Buah({
    required this.id,
    required this.nama_buah,
    required this.berat,
    required this.timestamp,
  });

  factory Buah.fromJson(Map<String, dynamic> json) {
    return Buah(
      id: json['id'],
      nama_buah: json['nama_buah'],
      berat: json['berat'],
      timestamp: json['timestamp'],
    );
  }
}

class Berat {
  final String id;
  final String weight;
  final String timestamp;

  const Berat({
    required this.id,
    required this.weight,
    required this.timestamp,
  });

  factory Berat.fromJson(Map<String, dynamic> json) {
    return Berat(
      id: json['id'],
      weight: json['weight'],
      timestamp: json['timestamp'],
    );
  }
}

class RataBerat {
  final String average_weight;

  const RataBerat({
    required this.average_weight,
  });

  factory RataBerat.fromJson(Map<String, dynamic> json) {
    return RataBerat(
      average_weight: json['average_weight'],
    );
  }
}

class BeratTerbesar {
  final String max_weight;

  const BeratTerbesar({
    required this.max_weight,
  });

  factory BeratTerbesar.fromJson(Map<String, dynamic> json) {
    return BeratTerbesar(
      max_weight: json['max_weight'],
    );
  }
}

class BeratTerkecil {
  final String min_weight;

  const BeratTerkecil({
    required this.min_weight,
  });

  factory BeratTerkecil.fromJson(Map<String, dynamic> json) {
    return BeratTerkecil(
      min_weight: json['min_weight'],
    );
  }
}

class TotalBerat {
  final String total_weight;

  const TotalBerat({
    required this.total_weight,
  });

  factory TotalBerat.fromJson(Map<String, dynamic> json) {
    return TotalBerat(
      total_weight: json['total_weight'],
    );
  }
}
