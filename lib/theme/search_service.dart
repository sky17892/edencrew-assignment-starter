import '../theme/search_result.dart';

List<SearchResult> parseSearchResults(Map<String, dynamic> jsonResponse) {
  final items = jsonResponse['items'] as List;

  final domesticStocks = items.where((item) {
    final nationCode = item['nationCode'];
    final code = item['code'] as String;
    final isSixDigit = RegExp(r'^\d{6}$').hasMatch(code);
    return nationCode == 'KOR' && isSixDigit;
  });

  return domesticStocks.map((item) => SearchResult.fromJson(item)).toList();
}
