
class User {
  final String userFcmToken;
  final Location location;

  User({
    required this.userFcmToken,
    required this.location,
  });

  // Convert a User instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'fcmToken': userFcmToken,
      'location': location.toMap(),
    };
  }

  // Create a User instance from a Map
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      userFcmToken: map['fcmToken'],
      location: Location.fromMap(map['location']),
    );
  }
}

class Location {
  final double lat;
  final double lng;

  Location({
    required this.lat,
    required this.lng,
  });

  // Convert a Location instance to a Map
  Map<String, dynamic> toMap() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  // Create a Location instance from a Map
  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      lat: map['lat'],
      lng: map['lng'],
    );
  }

}

//This format includes a Location class for latitude and longitude and a User
//class containing a name and location. Ensure the data in Firestore
//follows this structure for proper integration with your Flutter app.