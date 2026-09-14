/// Inbound structure definitions used by the Omega REST inbound protocol.
///
/// [InboundStructure] describes how a raw inbound payload maps to a position
/// (via [InboundPositionStructure]) and to a set of custom payload fields
/// (via [InboundPayloadStructure], typed with [InboundPayloadStructureType]).
library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'inbound_structure.freezed.dart';
part 'inbound_structure.g.dart';

part 'src/inbound_structure.dart';
part 'src/inbound_position_structure.dart';
part 'src/inbound_payload_structure.dart';
part 'src/inbound_payload_structure_type.dart';
