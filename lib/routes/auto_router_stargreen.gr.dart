// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:star_green_app/views/auth/events/search_page.dart' as _i1;
import 'package:star_green_app/views/layout/auth_layout.dart' as _i2;
import 'package:star_green_app/views/loading_screen.dart' as _i3;
import 'package:star_green_app/views/sign_in_screen.dart' as _i4;
import 'package:star_green_app/views/sign_up_screen.dart' as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SearchRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SearchScreen(),
      );
    },
    AuthLayout.name: (routeData) {
      final args = routeData.argsAs<AuthLayoutArgs>(
          orElse: () => const AuthLayoutArgs());
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AuthLayout(
          key: args.key,
          isRegister: args.isRegister,
        ),
      );
    },
    LoadingRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoadingScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignUpScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.SearchScreen]
class SearchRoute extends _i6.PageRouteInfo<void> {
  const SearchRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthLayout]
class AuthLayout extends _i6.PageRouteInfo<AuthLayoutArgs> {
  AuthLayout({
    _i7.Key? key,
    bool isRegister = false,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AuthLayout.name,
          args: AuthLayoutArgs(
            key: key,
            isRegister: isRegister,
          ),
          initialChildren: children,
        );

  static const String name = 'AuthLayout';

  static const _i6.PageInfo<AuthLayoutArgs> page =
      _i6.PageInfo<AuthLayoutArgs>(name);
}

class AuthLayoutArgs {
  const AuthLayoutArgs({
    this.key,
    this.isRegister = false,
  });

  final _i7.Key? key;

  final bool isRegister;

  @override
  String toString() {
    return 'AuthLayoutArgs{key: $key, isRegister: $isRegister}';
  }
}

/// generated route for
/// [_i3.LoadingScreen]
class LoadingRoute extends _i6.PageRouteInfo<void> {
  const LoadingRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoadingRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SignInScreen]
class SignInRoute extends _i6.PageRouteInfo<void> {
  const SignInRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignUpScreen]
class SignUpRoute extends _i6.PageRouteInfo<void> {
  const SignUpRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
