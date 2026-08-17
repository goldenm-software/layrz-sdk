# Layrz SDK for Go

[![Go Reference](https://pkg.go.dev/badge/github.com/goldenm-software/layrz-sdk/go/v4.svg)](https://pkg.go.dev/github.com/goldenm-software/layrz-sdk/go/v4)
[![Go](https://img.shields.io/github/go-mod/go-version/goldenm-software/layrz-sdk?filename=go%2Fgo.mod&logo=go&logoColor=white)](https://github.com/goldenm-software/layrz-sdk)
[![GitHub license](https://img.shields.io/github/license/goldenm-software/layrz-sdk?logo=github)](https://github.com/goldenm-software/layrz-sdk)

It's a group of classes/SDK that can help you to implement scripts into Layrz modules, or incorporate them into your own projects.

## Installation

To use this package, add it to your project:

```bash
go get github.com/goldenm-software/layrz-sdk/go/v4
```

Requires Go `1.25.5` or later.

## FAQ

### Why is this package called `layrz-sdk`?

All packages developed by [Layrz](https://layrz.com) are prefixed with `layrz`, check out our other packages on [pkg.go.dev](https://pkg.go.dev/github.com/goldenm-software), [PyPI](https://pypi.org/user/goldenm/) and [pub.dev](https://pub.dev/publishers/goldenm.com/packages).

### What is this package for?

This is the Go side of the multi-language Layrz SDK monorepo, which also ships a Python SDK (published on PyPI as `layrz-sdk`) and a Dart/Flutter SDK (`layrz_sdk` on pub.dev).

<b>What's inside:</b> Go structs mirroring the Python entities with JSON struct tags (`entities/`), string-based enum types (`enums/`), and custom marshaling wrappers for Time, Duration, Unix timestamps and UUID (`types/`) — converting Layrz API and platform payloads into typed Go objects. More information about our SDKs can be found in our [documentation](https://developers.layrz.com/Kits/Sdk).

### I have a question, how can I contact you?

If you need more assistance, you can open an issue on the [Repository](https://github.com/goldenm-software/layrz-sdk) and we're happy to help you :)

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/goldenm-software/layrz-sdk/blob/main/LICENSE) file for details.

This project is maintained by [Golden M](https://goldenm.com) with authorization of [Layrz LTD](https://layrz.com).

## Who are you? / Want to work with us?

<b>Golden M</b> is a software and hardware development company what is working on a new, innovative and disruptive technologies. For more information, contact us at [sales@goldenm.com](mailto:sales@goldenm.com) or via WhatsApp at [+(507)-6979-3073](https://wa.me/50769793073?text="From%20layrz-sdk%20go%20library.%20Hello").
