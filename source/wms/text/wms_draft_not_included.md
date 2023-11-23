# WMS 1.3 doesn\'t include these operations

## DescribeLayer

The **DescribeLayer** operation is used primarily by clients that
understand SLD-based WMS. In order to make an SLD one needs to know the
structure of the data. WMS and WFS both have operations to do this, so
the **DescribeLayer** operation just routes the client to the
appropriate service.

The standard parameters for the DescribeLayer operation are:

  ------------------------------------------------------------------------------
  **Parameter**   **Required?**   **Description**
  --------------- --------------- ----------------------------------------------
  `service`       Yes             Service name. Value is `WMS`.

  `version`       Yes             Service version. Value is `1.1.1`.

  `request`       Yes             Operation name. Value is `DescribeLayer`.

  `layers`        Yes             Layers to be described

  `exceptions`    No              Format in which to report exceptions. The
                                  default value is `application/vnd.ogc.se_xml`.
  ------------------------------------------------------------------------------

A server can be configured to support any format for
[DescribeLayer]{.title-ref}\` response. Here are some examples from
GeoServer:

  ------------ --------------------------------------------- -------------------------------------------
  **Format**   **Syntax**                                    **Notes**

  TEXT         `output_format=text/xml`                      Same as default.

  GML 2        `output_format=application/vnd.ogc.wms_xml`   The default format.

  JSON         `output_format=application/json`              Simple Json representation.

  JSONP        `output_format=text/javascript`               Return a JsonP in the form:
                                                             paddingOutput(\...jsonp\...). See
                                                             `wms_vendor_parameters`{.interpreted-text
                                                             role="ref"} to change the callback name.
                                                             Note that this format is disabled by
                                                             default (See
                                                             `wms_global_variables`{.interpreted-text
                                                             role="ref"}).
  ------------ --------------------------------------------- -------------------------------------------

An example request in XML (default) format on a layer is:

``` xml
http://localhost:8080/geoserver/topp/wms?service=WMS
&version=1.1.1
&request=DescribeLayer
&layers=topp:coverage
```

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE WMS_DescribeLayerResponse SYSTEM "http://localhost:8080/geoserver/schemas/wms/1.1.1/WMS_DescribeLayerResponse.dtd">
<WMS_DescribeLayerResponse version="1.1.1">
   <LayerDescription name="topp:coverage" owsURL="http://localhost:8080/geoserver/topp/wcs?" owsType="WCS">
      <Query typeName="topp:coverage"/>
   </LayerDescription>
</WMS_DescribeLayerResponse>
```

An example request for feature description in JSON format on a layer
group is:

``` xml
http://localhost:8080/geoserver/wms?service=WMS
&version=1.1.1
&request=DescribeLayer
&layers=sf:roads,topp:tasmania_roads,nurc:mosaic
&outputFormat=application/json
```

The result will be:

``` xml
{
version: "1.1.1",
layerDescriptions: [
{
   layerName: "sf:roads",
   owsURL: "http://localhost:8080/geoserver/wfs/WfsDispatcher?",
   owsType: "WFS",
   typeName: "sf:roads"
},
{
   layerName: "topp:tasmania_roads",
   owsURL: "http://localhost:8080/geoserver/wfs/WfsDispatcher?",
   owsType: "WFS",
   typeName: "topp:tasmania_roads"
},
{
   layerName: "nurc:mosaic",
   owsURL: "http://localhost:8080/geoserver/wcs?",
   owsType: "WCS",
   typeName: "nurc:mosaic"
}
]
}
```

## GetLegendGraphic {#wms_getlegendgraphic}

The **GetLegendGraphic** operation provides a mechanism for generating
legend graphics as images, beyond the LegendURL reference of WMS
Capabilities. It generates a legend based on the style defined on the
server, or alternatively based on a user-supplied SLD.
