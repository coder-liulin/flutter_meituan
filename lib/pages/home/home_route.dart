/*
 * @Description: 
 * @Version: 1.0
 * @Autor: 刘林
 * @Date: 2020-04-27 09:54:27
 * @LastEditors: 刘林
 * @LastEditTime: 2020-05-08 10:16:37
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meituan/config/routes_init.dart';
import 'package:flutter_meituan/pages/home/cate/cate.dart';
import 'package:flutter_meituan/pages/home/index/home.dart';
import 'package:flutter_meituan/pages/home/takeout/takeout.dart';
import 'package:flutter_meituan/pages/home/taxi/taxi.dart';

class HomesRoutes implements IRouterProvider {
  static String index = "home/index"; // 首页

  static String takeout = "home/takeout"; // 外卖

  static String cate = "home/cate";

  static String taxi = "home/taxi"; // 打车

  @override
  void initRouter(Router router) {
    router.define(index, handler: rootHandler);
    router.define(takeout, handler: takeoutHandler);
    router.define(cate, handler: cateHandler);
    router.define(taxi, handler: taxiHandle);
  }
}

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomePage();
});

var takeoutHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return Takeout();
});

var cateHandler =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return CatePage();
});

var taxiHandle =
    Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return TaxiPage();
});
