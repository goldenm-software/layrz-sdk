part of '../scripting.dart';

/// Maps a [ReportSource] to the [PythonSource] to lint the script of a report page with
/// [Scripting.lintPython].
extension ReportSourceToPython on ReportSource {
  /// The [PythonSource] that matches this [ReportSource].
  ///
  /// [ReportSource.broadcast] maps to [PythonSource.broadcasts] and [ReportSource.lastMessages] to
  /// [PythonSource.messages], since a last message is a message. The remaining values map to the source with the
  /// same name.
  PythonSource get toPythonSource => switch (this) {
    ReportSource.messages => PythonSource.messages,
    ReportSource.cases => PythonSource.cases,
    ReportSource.checkpoints => PythonSource.checkpoints,
    ReportSource.events => PythonSource.events,
    ReportSource.broadcast => PythonSource.broadcasts,
    ReportSource.lastMessages => PythonSource.messages,
  };
}
