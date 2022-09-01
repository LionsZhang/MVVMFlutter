// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `福美海外仓`
  String get appName {
    return Intl.message(
      '福美海外仓',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `照亮数字世界之海`
  String get slogan {
    return Intl.message(
      '照亮数字世界之海',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Auto`
  String get auto {
    return Intl.message(
      'Auto',
      name: 'auto',
      desc: '',
      args: [],
    );
  }

  /// `页面不存在`
  String get notFoundPage {
    return Intl.message(
      '页面不存在',
      name: 'notFoundPage',
      desc: '',
      args: [],
    );
  }

  /// `登录`
  String get login {
    return Intl.message(
      '登录',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `欢迎登录`
  String get welcomeLogin {
    return Intl.message(
      '欢迎登录',
      name: 'welcomeLogin',
      desc: '',
      args: [],
    );
  }

  /// `更多方式登录`
  String get thirdLogin {
    return Intl.message(
      '更多方式登录',
      name: 'thirdLogin',
      desc: '',
      args: [],
    );
  }

  /// `密码登录`
  String get pwdLogin {
    return Intl.message(
      '密码登录',
      name: 'pwdLogin',
      desc: '',
      args: [],
    );
  }

  /// `请输入账户密码，推荐验证码`
  String get pwdLoginTips {
    return Intl.message(
      '请输入账户密码，推荐验证码',
      name: 'pwdLoginTips',
      desc: '',
      args: [],
    );
  }

  /// `验证码登录`
  String get smsLogin {
    return Intl.message(
      '验证码登录',
      name: 'smsLogin',
      desc: '',
      args: [],
    );
  }

  /// `验证即登录，新手机号自动注册`
  String get smsLoginTips {
    return Intl.message(
      '验证即登录，新手机号自动注册',
      name: 'smsLoginTips',
      desc: '',
      args: [],
    );
  }

  /// `欢迎注册`
  String get welcomeRegist {
    return Intl.message(
      '欢迎注册',
      name: 'welcomeRegist',
      desc: '',
      args: [],
    );
  }

  /// `退出登录`
  String get logout {
    return Intl.message(
      'logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `确定要退出当前账号吗？`
  String get logoutConfirm {
    return Intl.message(
      '确定要退出当前账号吗？',
      name: 'logoutConfirm',
      desc: '',
      args: [],
    );
  }

  /// `立即登录`
  String get loginNow {
    return Intl.message(
      '立即登录',
      name: 'loginNow',
      desc: '',
      args: [],
    );
  }

  /// `开启数字之旅`
  String get loginGuide {
    return Intl.message(
      '开启数字之旅',
      name: 'loginGuide',
      desc: '',
      args: [],
    );
  }

  /// `手机号`
  String get loginPhone {
    return Intl.message(
      '账号',
      name: 'loginPhone',
      desc: '',
      args: [],
    );
  }

  /// `请输入账号`
  String get loginPhoneHint {
    return Intl.message(
      '请输入账号',
      name: 'loginPhoneHint',
      desc: '',
      args: [],
    );
  }

  /// `账号不能为空!`
  String get loginPhoneError {
    return Intl.message(
      '账号不能为空!',
      name: 'loginPhoneError',
      desc: '',
      args: [],
    );
  }

  /// `验证码`
  String get verifyCode {
    return Intl.message(
      '验证码',
      name: 'verifyCode',
      desc: '',
      args: [],
    );
  }

  /// `获取验证码`
  String get getVerifyCode {
    return Intl.message(
      '获取验证码',
      name: 'getVerifyCode',
      desc: '',
      args: [],
    );
  }

  /// `请输入验证码`
  String get verifyCodeHint {
    return Intl.message(
      '请输入验证码',
      name: 'verifyCodeHint',
      desc: '',
      args: [],
    );
  }

  /// `秒后重发`
  String get verifyRetry {
    return Intl.message(
      '秒后重发',
      name: 'verifyRetry',
      desc: '',
      args: [],
    );
  }

  /// `已发送验证码`
  String get verifySended {
    return Intl.message(
      '已发送验证码',
      name: 'verifySended',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get password {
    return Intl.message(
      '密码',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `请输入密码`
  String get passwordHint {
    return Intl.message(
      '请输入密码',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `8~20位数字、字母、符号组合`
  String get passwordHintTips {
    return Intl.message(
      '8~20位数字、字母、符号组合',
      name: 'passwordHintTips',
      desc: '',
      args: [],
    );
  }

  /// `密码不能少于8位!`
  String get passwordError {
    return Intl.message(
      '密码不能少于8位!',
      name: 'passwordError',
      desc: '',
      args: [],
    );
  }

  /// `忘记密码`
  String get forgetPassword {
    return Intl.message(
      '忘记密码',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `登录成功`
  String get loginSuccess {
    return Intl.message(
      '登录成功',
      name: 'loginSuccess',
      desc: '',
      args: [],
    );
  }

  /// `注册`
  String get register {
    return Intl.message(
      '注册',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `跳过`
  String get skip {
    return Intl.message(
      '跳过',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `绑定`
  String get bind {
    return Intl.message(
      '绑定',
      name: 'bind',
      desc: '',
      args: [],
    );
  }

  /// `绑定手机号`
  String get bindPhone {
    return Intl.message(
      '绑定手机号',
      name: 'bindPhone',
      desc: '',
      args: [],
    );
  }

  /// `绑定成功`
  String get bindSuccess {
    return Intl.message(
      '绑定成功',
      name: 'bindSuccess',
      desc: '',
      args: [],
    );
  }

  /// `解绑成功`
  String get unbindSuccess {
    return Intl.message(
      '解绑成功',
      name: 'unbindSuccess',
      desc: '',
      args: [],
    );
  }

  /// `已绑定`
  String get binded {
    return Intl.message(
      '已绑定',
      name: 'binded',
      desc: '',
      args: [],
    );
  }

  /// `去绑定`
  String get gobind {
    return Intl.message(
      '去绑定',
      name: 'gobind',
      desc: '',
      args: [],
    );
  }

  /// `解除绑定`
  String get unbind {
    return Intl.message(
      '解除绑定',
      name: 'unbind',
      desc: '',
      args: [],
    );
  }

  /// `确定要解除绑定吗？`
  String get unbindConfirm {
    return Intl.message(
      '确定要解除绑定吗？',
      name: 'unbindConfirm',
      desc: '',
      args: [],
    );
  }

  /// `微信`
  String get bindWechat {
    return Intl.message(
      '微信',
      name: 'bindWechat',
      desc: '',
      args: [],
    );
  }

  /// `设置密码`
  String get setPwd {
    return Intl.message(
      '设置密码',
      name: 'setPwd',
      desc: '',
      args: [],
    );
  }

  /// `设置登录密码`
  String get setPassword {
    return Intl.message(
      '设置登录密码',
      name: 'setPassword',
      desc: '',
      args: [],
    );
  }

  /// `首次登录，请设置登录密码`
  String get setPasswordTips {
    return Intl.message(
      '首次登录，请设置登录密码',
      name: 'setPasswordTips',
      desc: '',
      args: [],
    );
  }

  /// `该账户未设置登录密码\n可使用短信验证码登录`
  String get notSetPassword {
    return Intl.message(
      '该账户未设置登录密码\n可使用短信验证码登录',
      name: 'notSetPassword',
      desc: '',
      args: [],
    );
  }

  /// `（登录后可在账户与安全中设置密码）`
  String get notSetPasswordTips {
    return Intl.message(
      '（登录后可在账户与安全中设置密码）',
      name: 'notSetPasswordTips',
      desc: '',
      args: [],
    );
  }

  /// `原密码`
  String get oldPassword {
    return Intl.message(
      '原密码',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `密码`
  String get newPassword {
    return Intl.message(
      '密码',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `输入密码`
  String get inputPassword {
    return Intl.message(
      '输入密码',
      name: 'inputPassword',
      desc: '',
      args: [],
    );
  }

  /// `再次确认`
  String get repeatPassword {
    return Intl.message(
      '再次确认',
      name: 'repeatPassword',
      desc: '',
      args: [],
    );
  }

  /// `修改密码`
  String get modifyPassword {
    return Intl.message(
      '修改密码',
      name: 'modifyPassword',
      desc: '',
      args: [],
    );
  }

  /// `密码不一致`
  String get passwordNotSame {
    return Intl.message(
      '密码不一致',
      name: 'passwordNotSame',
      desc: '',
      args: [],
    );
  }

  /// `设置成功`
  String get setSuccess {
    return Intl.message(
      '设置成功',
      name: 'setSuccess',
      desc: '',
      args: [],
    );
  }

  /// `修改成功`
  String get modifySuccess {
    return Intl.message(
      '修改成功',
      name: 'modifySuccess',
      desc: '',
      args: [],
    );
  }

  /// `确定修改`
  String get confirmNotify {
    return Intl.message(
      '确定修改',
      name: 'confirmNotify',
      desc: '',
      args: [],
    );
  }

  /// `注册成功`
  String get registerSuccess {
    return Intl.message(
      '注册成功',
      name: 'registerSuccess',
      desc: '',
      args: [],
    );
  }

  /// `设置`
  String get settings {
    return Intl.message(
      '设置',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `关闭`
  String get close {
    return Intl.message(
      '关闭',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get cancel {
    return Intl.message(
      '取消',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `确定`
  String get confirm {
    return Intl.message(
      '确定',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `没有账号？`
  String get noAccount {
    return Intl.message(
      '没有账号？',
      name: 'noAccount',
      desc: '',
      args: [],
    );
  }

  /// `以及`
  String get loginPolicyAnd {
    return Intl.message(
      '以及',
      name: 'loginPolicyAnd',
      desc: '',
      args: [],
    );
  }

  /// `我已阅读并同意`
  String get loginPolicy {
    return Intl.message(
      '我已阅读并同意',
      name: 'loginPolicy',
      desc: '',
      args: [],
    );
  }

  /// `《用户服务协议》`
  String get registAgreement {
    return Intl.message(
      '《用户服务协议》',
      name: 'registAgreement',
      desc: '',
      args: [],
    );
  }

  /// `《隐私协议》`
  String get privatePolicy {
    return Intl.message(
      '《隐私协议》',
      name: 'privatePolicy',
      desc: '',
      args: [],
    );
  }

  /// `《免责声明》`
  String get discaimer {
    return Intl.message(
      '《免责声明》',
      name: 'discaimer',
      desc: '',
      args: [],
    );
  }

  /// `再次点击退出应用`
  String get doubleTapExit {
    return Intl.message(
      '再次点击退出应用',
      name: 'doubleTapExit',
      desc: '',
      args: [],
    );
  }

  /// `首页`
  String get home {
    return Intl.message(
      '业务处理',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `资讯`
  String get info {
    return Intl.message(
      '资讯',
      name: 'info',
      desc: '',
      args: [],
    );
  }

  /// `个人中心`
  String get mine {
    return Intl.message(
      '个人中心',
      name: 'mine',
      desc: '',
      args: [],
    );
  }

  /// `指数`
  String get index {
    return Intl.message(
      '指数',
      name: 'index',
      desc: '',
      args: [],
    );
  }

  /// `平台`
  String get platform {
    return Intl.message(
      '平台',
      name: 'platform',
      desc: '',
      args: [],
    );
  }

  /// `7x24`
  String get x724 {
    return Intl.message(
      '7x24',
      name: 'x724',
      desc: '',
      args: [],
    );
  }

  /// `正在加载中...`
  String get loading {
    return Intl.message(
      '正在加载中...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `登录中...`
  String get logingin {
    return Intl.message(
      '登录中...',
      name: 'logingin',
      desc: '',
      args: [],
    );
  }

  /// `登录成功`
  String get logingSuccess {
    return Intl.message(
      '登录成功',
      name: 'logingSuccess',
      desc: '',
      args: [],
    );
  }

  /// `正在获取验证码...`
  String get verifyin {
    return Intl.message(
      '正在获取验证码...',
      name: 'verifyin',
      desc: '',
      args: [],
    );
  }

  /// `上传中...`
  String get uploading {
    return Intl.message(
      '上传中...',
      name: 'uploading',
      desc: '',
      args: [],
    );
  }

  /// `国家/地区`
  String get countryArea {
    return Intl.message(
      '国家/地区',
      name: 'countryArea',
      desc: '',
      args: [],
    );
  }

  /// `搜索`
  String get search {
    return Intl.message(
      '搜索',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `暂无数据`
  String get noData {
    return Intl.message(
      '暂无数据',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `没有更多数据`
  String get noMoreData {
    return Intl.message(
      '没有更多数据',
      name: 'noMoreData',
      desc: '',
      args: [],
    );
  }

  /// `账户与安全`
  String get accountSecurity {
    return Intl.message(
      '账户与安全',
      name: 'accountSecurity',
      desc: '',
      args: [],
    );
  }

  /// `清空缓存`
  String get clearCache {
    return Intl.message(
      '清空缓存',
      name: 'clearCache',
      desc: '',
      args: [],
    );
  }

  /// `缓存大小：`
  String get cacheSize {
    return Intl.message(
      '缓存大小：',
      name: 'cacheSize',
      desc: '',
      args: [],
    );
  }

  /// ` 是否清空？`
  String get clearCacheConfirm {
    return Intl.message(
      ' 是否清空？',
      name: 'clearCacheConfirm',
      desc: '',
      args: [],
    );
  }

  /// `已清空`
  String get clearCacheSuccess {
    return Intl.message(
      '已清空',
      name: 'clearCacheSuccess',
      desc: '',
      args: [],
    );
  }

  /// `关于`
  String get about {
    return Intl.message(
      '关于',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `检查更新`
  String get checkUpdate {
    return Intl.message(
      '检查更新',
      name: 'checkUpdate',
      desc: '',
      args: [],
    );
  }

  /// `保存`
  String get save {
    return Intl.message(
      '保存',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `保存中...`
  String get saving {
    return Intl.message(
      '保存中...',
      name: 'saving',
      desc: '',
      args: [],
    );
  }

  /// `保存成功`
  String get saveSuccess {
    return Intl.message(
      '保存成功',
      name: 'saveSuccess',
      desc: '',
      args: [],
    );
  }

  /// `保存失败`
  String get saveFailed {
    return Intl.message(
      '保存失败',
      name: 'saveFailed',
      desc: '',
      args: [],
    );
  }

  /// `复制成功`
  String get copySuccess {
    return Intl.message(
      '复制成功',
      name: 'copySuccess',
      desc: '',
      args: [],
    );
  }

  /// `我的头像`
  String get myAvatar {
    return Intl.message(
      '我的头像',
      name: 'myAvatar',
      desc: '',
      args: [],
    );
  }

  /// `修改昵称`
  String get modifyNickname {
    return Intl.message(
      '修改昵称',
      name: 'modifyNickname',
      desc: '',
      args: [],
    );
  }

  /// `请输入昵称`
  String get modifyNicknameHint {
    return Intl.message(
      '请输入昵称',
      name: 'modifyNicknameHint',
      desc: '',
      args: [],
    );
  }

  /// `*1~12个字符之间，可以汉字，字母和数字组合，不支持设置空格、特殊符号`
  String get modifyNicknameTips {
    return Intl.message(
      '*1~12个字符之间，可以汉字，字母和数字组合，不支持设置空格、特殊符号',
      name: 'modifyNicknameTips',
      desc: '',
      args: [],
    );
  }

  /// `拍照`
  String get camera {
    return Intl.message(
      '拍照',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `相册`
  String get gallery {
    return Intl.message(
      '相册',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `看大图`
  String get viewFullSize {
    return Intl.message(
      '看大图',
      name: 'viewFullSize',
      desc: '',
      args: [],
    );
  }

  /// `查看详细信息`
  String get viewDetail {
    return Intl.message(
      '查看详细信息',
      name: 'viewDetail',
      desc: '',
      args: [],
    );
  }

  /// `全部`
  String get all {
    return Intl.message(
      '全部',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `更多`
  String get more {
    return Intl.message(
      '更多',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `了解更多`
  String get learnMore {
    return Intl.message(
      '了解更多',
      name: 'learnMore',
      desc: '',
      args: [],
    );
  }

  /// `里程碑`
  String get milestone {
    return Intl.message(
      '里程碑',
      name: 'milestone',
      desc: '',
      args: [],
    );
  }

  /// `简况`
  String get briefInfo {
    return Intl.message(
      '简况',
      name: 'briefInfo',
      desc: '',
      args: [],
    );
  }

  /// `数据`
  String get data {
    return Intl.message(
      '数据',
      name: 'data',
      desc: '',
      args: [],
    );
  }

  /// `更多链接`
  String get moreLink {
    return Intl.message(
      '更多链接',
      name: 'moreLink',
      desc: '',
      args: [],
    );
  }

  /// `更新时间`
  String get updateTime {
    return Intl.message(
      '更新时间',
      name: 'updateTime',
      desc: '',
      args: [],
    );
  }

  /// `发行日期`
  String get proPublishDate {
    return Intl.message(
      '发行日期',
      name: 'proPublishDate',
      desc: '',
      args: [],
    );
  }


  /// `保存`
  String get shareSave {
    return Intl.message(
      '保存',
      name: 'shareSave',
      desc: '',
      args: [],
    );
  }

  /// `复制链接`
  String get shareCopyLink {
    return Intl.message(
      '复制链接',
      name: 'shareCopyLink',
      desc: '',
      args: [],
    );
  }

  /// `更多`
  String get shareMore {
    return Intl.message(
      '更多',
      name: 'shareMore',
      desc: '',
      args: [],
    );
  }

  /// `长按二维码识别下载`
  String get shareQRDownload {
    return Intl.message(
      '长按二维码识别下载',
      name: 'shareQRDownload',
      desc: '',
      args: [],
    );
  }

  /// `微信未安装`
  String get shareWxNotInstalled {
    return Intl.message(
      '微信未安装',
      name: 'shareWxNotInstalled',
      desc: '',
      args: [],
    );
  }

  /// `我在区块灯塔发现一篇好文，一起来看：`
  String get shareArticle {
    return Intl.message(
      '我在区块灯塔发现一篇好文，一起来看：',
      name: 'shareArticle',
      desc: '',
      args: [],
    );
  }

  /// `加载失败`
  String get vsMsgError {
    return Intl.message(
      '加载失败',
      name: 'vsMsgError',
      desc: '',
      args: [],
    );
  }

  /// `网络连接异常,请检查网络或稍后重试`
  String get vsMsgNetworkError {
    return Intl.message(
      '网络连接异常,请检查网络或稍后重试',
      name: 'vsMsgNetworkError',
      desc: '',
      args: [],
    );
  }

  /// `空空如也`
  String get vsMsgEmpty {
    return Intl.message(
      '空空如也',
      name: 'vsMsgEmpty',
      desc: '',
      args: [],
    );
  }

  /// `5M`
  String get kline5m {
    return Intl.message(
      '5M',
      name: 'kline5m',
      desc: '',
      args: [],
    );
  }

  /// `15M`
  String get kline15m {
    return Intl.message(
      '15M',
      name: 'kline15m',
      desc: '',
      args: [],
    );
  }

  /// `1H`
  String get kline1h {
    return Intl.message(
      '1H',
      name: 'kline1h',
      desc: '',
      args: [],
    );
  }

  /// `24H`
  String get kline24h {
    return Intl.message(
      '24H',
      name: 'kline24h',
      desc: '',
      args: [],
    );
  }

  /// `1周`
  String get kline1week {
    return Intl.message(
      '1周',
      name: 'kline1week',
      desc: '',
      args: [],
    );
  }

  /// `1月`
  String get kline1month {
    return Intl.message(
      '1月',
      name: 'kline1month',
      desc: '',
      args: [],
    );
  }

  /// `1年`
  String get kline1year {
    return Intl.message(
      '1年',
      name: 'kline1year',
      desc: '',
      args: [],
    );
  }

  /// `全部`
  String get klineAll {
    return Intl.message(
      '全部',
      name: 'klineAll',
      desc: '',
      args: [],
    );
  }

  /// `今天`
  String get today {
    return Intl.message(
      '今天',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `昨天`
  String get yesterday {
    return Intl.message(
      '昨天',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `来源：`
  String get origin {
    return Intl.message(
      '来源：',
      name: 'origin',
      desc: '',
      args: [],
    );
  }

  /// `Hi，很高兴又和您见面，有什么问题想问我？`
  String get schoolWelcome {
    return Intl.message(
      'Hi，很高兴又和您见面，有什么问题想问我？',
      name: 'schoolWelcome',
      desc: '',
      args: [],
    );
  }

  /// `灯塔社区`
  String get dtCommunity {
    return Intl.message(
      '灯塔社区',
      name: 'dtCommunity',
      desc: '',
      args: [],
    );
  }

  /// `来自区块灯塔公众号留言`
  String get sourceFromOfficialAccount {
    return Intl.message(
      '来自区块灯塔公众号留言',
      name: 'sourceFromOfficialAccount',
      desc: '',
      args: [],
    );
  }

  /// `来自区块灯塔App`
  String get sourceFromApp {
    return Intl.message(
      '来自区块灯塔App',
      name: 'sourceFromApp',
      desc: '',
      args: [],
    );
  }

  /// `深度`
  String get proDepth {
    return Intl.message(
      '深度',
      name: 'proDepth',
      desc: '',
      args: [],
    );
  }

  /// `买`
  String get proBid {
    return Intl.message(
      '买',
      name: 'proBid',
      desc: '',
      args: [],
    );
  }

  /// `卖`
  String get proAsk {
    return Intl.message(
      '卖',
      name: 'proAsk',
      desc: '',
      args: [],
    );
  }

  /// `最新成交`
  String get proLaststDeal {
    return Intl.message(
      '最新成交',
      name: 'proLaststDeal',
      desc: '',
      args: [],
    );
  }

  /// `委托订单`
  String get proDepthOrder {
    return Intl.message(
      '委托订单',
      name: 'proDepthOrder',
      desc: '',
      args: [],
    );
  }

  /// `时间`
  String get proTime {
    return Intl.message(
      '时间',
      name: 'proTime',
      desc: '',
      args: [],
    );
  }

  /// `方向`
  String get proWay {
    return Intl.message(
      '方向',
      name: 'proWay',
      desc: '',
      args: [],
    );
  }

}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'zh', countryCode: 'CN'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
