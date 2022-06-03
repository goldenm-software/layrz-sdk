# Changelog

## v1.3.6
* Added new Map Chart
  - Added required entity MapPoint
  - Added required enum MapCenterType
* Added new HTML Chart


## v1.3.5
* Bug fix related to formula perform, added PRIMARY_DEVICE to simulation environment

## v1.3.4
* Added Transaction entity for REPCOM reports

## v1.3.3
- Added PRIMARY_DEVICE() function to Layrz Compute Language

## v1.3.2
- Updated styles of charts return object to ApexCharts or CanvasJS
- Replaced all .rst files to .md files

## v1.3.1
* Removed markerSize (in CanvasJS) for dashed series

## v1.3.0
* Added support for CanvasJS Javascript Library
* Deprecated to_apexcharts property in charts.
* New method render() in charts with support for multiple Javascript rendering library
* Added color helpers in layrzsdk.helpers

## v1.2.6
* Removed dataLabels in almost all charts (Except Pie and RadialBar) 

## v1.2.5
* Optimizations for Javascript renderer

## v1.2.4
* Added dashed attribute to ChartDataSerie
* Added the Possibility to mix charts, only available for:
  - LineChart
  - AreaChart
  - ColumnChart
  - ScatterChart (Only as serie, not as main chart) 

## v1.2.3
* Added new value in BroadcastStatus

## v1.2.2
* Updated ReportCol entity to set new default values
* New entity ReportDataType
* Possibility to export directly to the Report class
* Re-organized entities/ folder
* Added Broadcasts entities 

## v1.2.1
* Added Report Col entity

## v1.2.0
* Added reports entities

## v1.1.4
* Bug fixes

## v1.1.3
* Bug fixes

## v1.1.2
* Bug fixes

## v1.1.1
* Bug fixes

## v1.1.0
* Reorganized files
* Added new Charts entities

## v1.0.14
* Added CONTAINS, STARTS_WITH, ENDS_WITH functions to the Layrz Computed Language

## v1.0.13
* Fixed missing import into `layrzsdk.entities.__init__.py`

## v1.0.12
* Added Geofence, Comment, Waypoint and Checkpoint entities

## v1.0.11
* Added User, Comment and Case entities

## v1.0.10
* Fixes

## v1.0.9
* Added Event and Trigger entities
* Renamed file `mesage.py` to `message.py`

## v1.0.8
* Added title getter of all charts entities

## v1.0.7
* Added PieChart, BarChart, and RadialBarChart entities

## v1.0.6
* Fixed STING to STRING bug in ChartDataType enum

## v1.0.5
* Bug fixes

## v1.0.4
* Added data_type argument of ChartDataSerie

## v1.0.3
* Added Chart configuration entity

## v1.0.2
* Added entities for Range Charts:
  - Line Charts
  - Area Charts
  - Column Charts

## v1.0.1
* Added entities for Sensors and Triggers

## v1.0.0
* Initial release