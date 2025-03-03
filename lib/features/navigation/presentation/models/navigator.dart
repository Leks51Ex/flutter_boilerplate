import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';

/// {@category Presentation}
class NavElementModel<Router extends RoutingController>
    extends ElementaryModel {
  final Router _router;

  String get activeRoute => _router.current.name;

  Router get router => _router;

  void goTo(PageRouteInfo route) => _router.navigate(route);

  NavElementModel(this._router);
}
