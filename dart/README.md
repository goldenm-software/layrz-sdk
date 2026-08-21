# Layrz SDK for Dart

[![Pub version](https://img.shields.io/pub/v/layrz_sdk?logo=dart)](https://pub.dev/packages/layrz_sdk)
[![likes](https://img.shields.io/pub/likes/layrz_sdk?logo=dart)](https://pub.dev/packages/layrz_sdk/score)
[![GitHub license](https://img.shields.io/github/license/goldenm-software/layrz-sdk?logo=github)](https://github.com/goldenm-software/layrz-sdk)

It's a group of classes/SDK that can help you to implement scripts into Layrz modules, or incorporate them into your own projects.

## Installation

To use this package, add `layrz_sdk` to your `pubspec.yaml`:

```bash
flutter pub add layrz_sdk
```

Requires Dart `>=3.13.0 <4.0.0` and Flutter `>=3.47.0`.

## FAQ

### Why is this package called `layrz_sdk`?

All packages developed by [Layrz](https://layrz.com) are prefixed with `layrz_`, check out our other packages on [pub.dev](https://pub.dev/publishers/goldenm.com/packages).

### What is this package for?

This package is a port of [`layrz_models`](https://pub.dev/packages/layrz_models), converting our API responses into Dart objects so you can use them in your Flutter projects, and evolving beyond that into a full SDK.

### `layrz_sdk` is the same as `layrz_models`?

Essentially, yes — same thing, same behavior. The main difference is that `layrz_models` has Material dependencies, and that's not compatible with `layrz_ui`, our 100% design-system-agnostic library and the next evolution of `layrz_theme`. The Flutter team is leading the charge on decoupling Material and Cupertino from the core framework, and that vision inspired us to go all in. So we're porting `layrz_models` to `layrz_sdk`, making adjustments on how things are declared, along with the connectors.

And if it's essentially yes, why not just remove the Material dependencies from `layrz_models`? Because our scope is bigger than just having an API connector — to be on the same page as the rest of our ecosystem, we're evolving the models into a full SDK.

### I have a question, how can I contact you?

If you need more assistance, you can open an issue on the [Repository](https://github.com/goldenm-software/layrz-sdk) and we're happy to help you :)

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/goldenm-software/layrz-sdk/blob/main/LICENSE) file for details.

This project is maintained by [Golden M](https://goldenm.com) with authorization of [Layrz LTD](https://layrz.com).

## Who are you? / Want to work with us?

<b>Golden M</b> is a software and hardware development company what is working on a new, innovative and disruptive technologies. For more information, contact us at [sales@goldenm.com](mailto:sales@goldenm.com) or via WhatsApp at [+(507)-6979-3073](https://wa.me/50769793073?text="From%20layrz_sdk%20flutter%20library.%20Hello").

## Icon Registry

The `lib/src/icons/` module provides a runtime registry mapping icon names to `MdiRemapIcon` objects for use in SDK models (e.g., `Avatar.icon`, `AvatarInput.icon`). It is **not** an icon library for apps; applications should depend on `flutter_material_design_icons` directly.

### Regenerating the Registry

When Material Design Icons updates, regenerate the registry:

```bash
make -C dart icons
```

This runs `dart run dart/tool/generate_icons.dart` and formats output. The generator parses `flutter_material_design_icons` source to extract icon names, codepoints, and tags.

### Icon Tree-Shaking

The `iconMapping` const map references all 7447 MDI icons. Because it is part of the SDK's public API and is pulled in by `Avatar` models, any app depending on `layrz_sdk` **cannot tree-shake icon glyphs** — all 7447 are included in the app binary. This is not a regression (the same applied when using the separate `layrz_icons` package) but should be noted when budgeting app size.

To use only specific icons, depend directly on `flutter_material_design_icons` instead of `layrz_sdk`.
