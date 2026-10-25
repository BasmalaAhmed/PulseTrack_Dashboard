class DrawerItemModel {
  final String icon, title;
  final bool isActive, hasBadge;
  final int? badgeCount;

  const DrawerItemModel({
    required this.icon,
    required this.title,
    this.isActive = false,
    this.hasBadge = false,
    this.badgeCount,
  });
}
