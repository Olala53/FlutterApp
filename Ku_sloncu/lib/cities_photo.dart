class Cities_photo {
  String imageUrl;
  String label;


  Cities_photo(
      this.imageUrl,
      this.label,
      );

  static List<Cities_photo> samples = [
    Cities_photo(
        'assets/pierniki.jpg',
        'Toruń',
    ),
    Cities_photo(
        'assets/golebie.jpeg',
        'Kraków',
    ),
    Cities_photo(
        'assets/krasnoludki.jpg',
        'Wrocław',
    ),
    Cities_photo(
        'assets/plaża.jpg',
        'Gdańsk',
    ),
    Cities_photo(
      'assets/Warszawa.jpg',
      'Warszawa',
    ),
    Cities_photo(
        'assets/koziolki.jpg',
        'Poznań',
    ),
  ];
}
