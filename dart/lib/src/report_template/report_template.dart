/// Report template models for the Layrz reporting pipeline.
///
/// [ReportTemplate] describes a reusable report definition made of
/// [ReportTemplatePage]s, each rendering data from a [ReportSource] either
/// through an explicit column layout ([ReportTemplateCol]) or a custom
/// Python script, depending on [ReportAlgorithm]. [ReportTemplateInput],
/// [ReportTemplatePageInput] and [ReportTemplateColInput] provide the
/// mutable counterparts used for creating or editing these entities.
library;

import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:layrz_sdk/src/access/access.dart';
import 'package:layrz_sdk/src/asset/asset.dart';
import 'package:layrz_sdk/src/converters/converters.dart';
import 'package:layrz_sdk/src/outbound/outbound.dart';

part 'report_template.freezed.dart';
part 'report_template.g.dart';

part 'src/report_template.dart';
part 'src/page.dart';
part 'src/col.dart';
part 'src/source.dart';
part 'src/algorithm.dart';

part 'src/preview/preview.dart';
part 'src/preview/page.dart';
part 'src/preview/row.dart';
part 'src/preview/header.dart';
part 'src/preview/cell.dart';
