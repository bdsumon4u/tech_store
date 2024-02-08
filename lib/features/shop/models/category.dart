class CategoryModel {
  final int id;
  final String name;
  final String banner;
  final String icon;

  CategoryModel({
    required this.id,
    required this.name,
    required this.banner,
    required this.icon,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
        id: json['id'] as int,
        name: json['name'] as String,
        banner: json['banner'] as String,
        icon: json['icon'] as String,
      );
}
