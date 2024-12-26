class StringUtils {
  /// 判断字符串是否为 null、空或仅包含空白字符
  static bool isNullOrBlank(String? str) {
    return str == null || str.trim().isEmpty;
  }

  /// 判断字符串是否不为 null、空或仅包含空白字符
  static bool isNotNullOrBlank(String? str) => !StringUtils.isNullOrBlank(str);
}
