# flutter_meituan

一个模仿美团实现一个Flutter App Demo

## 需要实现的功能列表



- [ ] 美团引导图界面实现
- [ ] 美团登录界面实现
- [x] 美团首页实现
- [ ] 美团首页功能实现
- [ ] 美团首页功能点实现
- [ ] 我的页面实现
- [ ] 美团发现页面实现
- [ ] 美团订单页面实现
- [ ] ICON等替换
- [ ] 打包


## 问题

### 1. Cannot fit requested classes in a single dex file

``
在app下面的build.gradle中的defaultConfig中添加multiDexEnabled true
``

### 2.flutter amap Trying to create an already created platform view, view id: 0

``
1.flutter channel master
2.flutter upgrade
3.Flutter clean
``