import 'package:auto_route/auto_route.dart';
import 'package:sample_auto_route/dashboard/settings/settings_view.dart';

class AuthGuard extends AutoRouteGuard {
  final bool _isResult = false;

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_isResult) {
      resolver.next(true);
    } else {
      router.pushWidget(const SettingView());
    }
  }
}
