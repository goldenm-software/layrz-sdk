# Layrz SDK for Python

[![PyPI version](https://img.shields.io/pypi/v/layrz-sdk?logo=pypi&logoColor=white)](https://pypi.org/project/layrz-sdk/)
[![Python](https://img.shields.io/pypi/pyversions/layrz-sdk?logo=python&logoColor=white)](https://pypi.org/project/layrz-sdk/)
[![GitHub license](https://img.shields.io/github/license/goldenm-software/layrz-sdk?logo=github)](https://github.com/goldenm-software/layrz-sdk)

It's a group of classes/SDK that can help you to implement scripts into Layrz modules, or incorporate them into your own projects.

## Installation

To use this package, add `layrz-sdk` to your project:

```bash
pip install layrz-sdk
```

or, if you use [uv](https://docs.astral.sh/uv/):

```bash
uv add layrz-sdk
```

Requires Python `>=3.13`.

## FAQ

### Why is this package called `layrz-sdk`?

All packages developed by [Layrz](https://layrz.com) are prefixed with `layrz`, check out our other packages on [PyPI](https://pypi.org/user/goldenm/) and [pub.dev](https://pub.dev/publishers/goldenm.com/packages).

### What is this package for?

This is the Python side of the multi-language Layrz SDK monorepo, which also ships a Go SDK (`github.com/goldenm-software/layrz-sdk/go/v4`) and a Dart/Flutter SDK (`layrz_sdk` on pub.dev).

<b>What's inside:</b> the shared entities (100+ Pydantic models for assets, devices, sensors, geofences, telemetry messages, charts, broadcasts, modbus, operations, reports and push notifications), the Layrz Compute Language (LCL) interpreter for telemetry scripting, and helpers (UUIDv7 composition/extraction, color conversion) — converting Layrz API and platform payloads into typed Python objects. More information about our SDKs can be found in our [documentation](https://developers.layrz.com/Kits/Sdk).

### I have a question, how can I contact you?

If you need more assistance, you can open an issue on the [Repository](https://github.com/goldenm-software/layrz-sdk) and we're happy to help you :)

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/goldenm-software/layrz-sdk/blob/main/LICENSE) file for details.

This project is maintained by [Golden M](https://goldenm.com) with authorization of [Layrz LTD](https://layrz.com).

## Who are you? / Want to work with us?

<b>Golden M</b> is a software and hardware development company what is working on a new, innovative and disruptive technologies. For more information, contact us at [sales@goldenm.com](mailto:sales@goldenm.com) or via WhatsApp at [+(507)-6979-3073](https://wa.me/50769793073?text="From%20layrz-sdk%20python%20library.%20Hello").
