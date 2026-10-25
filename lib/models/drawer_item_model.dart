class DrawerItemModel {
  final String icon, title;
  final bool isActive;
  final int? badgeCount;

  const DrawerItemModel({
    required this.icon,
    required this.title,
    this.isActive = false,
    this.badgeCount,
  });
}
