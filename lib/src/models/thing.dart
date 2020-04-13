class Thing {
  final String title;
  final String logo;
  final String alt;
  final String content;
  final String url;
  final List<String> categories;

  Thing({
    this.title,
    this.logo,
    this.alt,
    this.content,
    this.url,
    this.categories,
  });

  factory Thing.fromJson(Map<String, dynamic> json) {
    return Thing(
      title: json['title'],
      logo: json['logo'],
      alt: json['alt'],
      content: json['content'],
      url: json['url'],
      categories: json['categories'].cast<String>(),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['title'] = this.title;
    data['logo'] = this.logo;
    data['alt'] = this.alt;
    data['content'] = this.content;
    data['url'] = this.url;
    data['categories'] = this.categories;

    return data;
  }

  @override
  String toString() {
    return '{alt: $alt, categories: $categories, content: $content, logo: $logo, title: $title, url: $url}';
  }
}
