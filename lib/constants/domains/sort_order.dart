enum SortOrder {
  asc(label: '昇順'),
  desc(label: '降順');

  const SortOrder({required this.label});

  final String label;
}
