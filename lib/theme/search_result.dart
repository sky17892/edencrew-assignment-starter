class SearchResult {
  final String id;
  final String code;
  final String name;
  final String typeCode;
  final String typeName;
  final String url;
  final String category;

  SearchResult({
    required this.id,
    required this.code,
    required this.name,
    required this.typeCode,
    required this.typeName,
    required this.url,
    required this.category,
  });

  factory SearchResult.fromJson(Map<String, dynamic> json) {
    return SearchResult(
      id: 'domestic:${json['code']}',
      code: json['code'],
      name: json['name'],
      typeCode: json['typeCode'],
      typeName: json['typeName'],
      url: json['url'],
      category: json['category'],
    );
  }
}
