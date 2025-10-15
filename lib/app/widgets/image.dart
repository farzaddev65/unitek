part of 'widgets.dart';

Widget image(
  final String source, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final String? placeholder,
  final VoidCallback? onTap,
}) {
  if (source.length <= 10) {
    if (placeholder == null) {
      return SizedBox(width: width, height: height);
    } else {
      return imageAsset(
        placeholder,
        width: width,
        height: height,
        borderRadius: borderRadius,
        color: color,
        margin: margin,
        onTap: onTap,
        fit: fit,
        clipBehavior: clipBehavior,
      );
    }
  } else {
    if (source.contains("http://") || source.contains("https://")) {
      return imageNetwork(
        source,
        width: width,
        height: height,
        fit: fit,
        clipBehavior: clipBehavior,
        margin: margin,
        borderRadius: borderRadius,
        color: color,
        onTap: onTap,
        placeholder: placeholder,
      );
    } else {
      return imageAsset(
        source,
        width: width,
        height: height,
        fit: fit,
        clipBehavior: clipBehavior,
        margin: margin,
        borderRadius: borderRadius,
        color: color,
        onTap: onTap,
      );
    }
  }
}

Widget iconPrimary(
  final String source, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final String? placeholder,
  final VoidCallback? onTap,
}) =>
    image(
      source,
      color: color ?? colorScheme.primary,
      width: width,
      height: height,
      fit: fit,
      clipBehavior: clipBehavior,
      borderRadius: borderRadius,
      margin: margin,
      placeholder: placeholder,
      onTap: onTap,
    );

Widget imageAsset(
  final String asset, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final VoidCallback? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        margin: margin,
        width: width,
        height: height,
        child: asset.substring(asset.length - 3).toLowerCase() == "svg"
            ? SvgPicture.asset(
                asset,
                width: width,
                height: height,
                // ignore: deprecated_member_use
                color: color,
                fit: fit,
                clipBehavior: clipBehavior,
              )
            : Image.asset(asset, color: color, width: width, height: height, fit: fit),
      ),
    );

Widget imageNetwork(
  final String url, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final VoidCallback? onTap,
  final String? placeholder,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        margin: margin,
        width: width,
        height: height,
        child: url.length <= 10
            ? placeholder == null
                ? const SizedBox()
                : imageAsset(
                    placeholder,
                    width: width,
                    height: height,
                    // ignore: deprecated_member_use
                    color: color,
                    fit: fit,
                    clipBehavior: clipBehavior,
                  )
            : url.substring(url.length - 3) == "svg"
                ? SvgPicture.network(
                    url,
                    width: width,
                    height: height,
                    // ignore: deprecated_member_use
                    color: color,
                    fit: fit,
                    placeholderBuilder: placeholder == null
                        ? null
                        : (final _) => imageAsset(
                              placeholder,
                              width: width,
                              height: height,
                              fit: fit,
                              clipBehavior: clipBehavior,
                            ),
                  )
                : Container(),
      ),
    );

Widget imageFile(
  final File file, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final VoidCallback? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        margin: margin,
        width: width,
        height: height,
        child: Image.file(file, color: color, width: width, height: height, fit: fit),
      ),
    );

Widget imageMemory(
  final Uint8List file, {
  final Color? color,
  final double? width,
  final double? height,
  final BoxFit fit = BoxFit.contain,
  final Clip clipBehavior = Clip.hardEdge,
  final double borderRadius = 1,
  final EdgeInsets margin = EdgeInsets.zero,
  final VoidCallback? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        margin: margin,
        width: width,
        height: height,
        child: Image.memory(file, color: color, width: width, height: height, fit: fit),
      ),
    );
