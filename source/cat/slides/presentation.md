# Metadata and Catalogs

-   Metadata
-   Search
-   Catalog
-   FGDC
-   ISO
-   Profiles
-   CSW Operations
-   OpenSearch

## Resource

-   A thing
-   Anything which is worth uniquely identifying (over the Web)
-   Can be data

## Metadata

-   Data about a resource
-   Data about data

## Metadata

![image](../img/metadataaboutdata.jpg){width="1049px" height="654px"}

## What is Missing ?

![image](../img/nutrition_label.jpg){width="80.0%"}

## What is Missing ?

![image](../img/cans.jpg){width="80.0%"}

## Metadata - Who

-   Who collected the data?
-   Who processed the data?
-   Who wrote the metadata?
-   Who to contact for questions?
-   Who to contact to order?
-   Who owns the data?

## Metadata - What

-   What are the data about?
-   What project were they collected under?
-   What are the constraints on their use?
-   What is the quality?
-   What are appropriate uses?
-   What parameters were measured?
-   What format are the data in?

## Metadata - Why

-   Why were the data collected?

## Where

-   Where were the data collected?
-   Where were the data processed?
-   Where are the data located?

## When

-   When were the data collected?
-   When were the data processed?

## How

-   How were the data collected?
-   How were the data processed?
-   How do I access the data?
-   How do I order the data?
-   How much do the data cost?
-   How was the quality assessed?

## Metadata requires update

  -----------------------------------------------------------------------
  1980                                2005
  ----------------------------------- -----------------------------------
  British Honduras                    Belize

  West Germany                        Germany
  -----------------------------------------------------------------------

## Metadata Value

-   Organizations: captures the knowhow of an organization
-   Developers: help share reliable information
-   Users: helps discover data

## Search

Discovery & evaluation of resources through (summary) metadata

## Catalog

-   Organized, detailed, descriptive list of items
-   arranged systematically (so they can be found)

## Catalog

![image](../img/library.jpg){width="2249px" height="1254px"}

## Catalog Service

![image](../img/catalogservice.jpg){width="2249px" height="1254px"}

## Trader

-   Intermediary in a service oriented architecture
-   Connects providers with consumers

## Discovery using SOA

![image](../img/soa_triangle.jpg){width="1800px" height="930px"}

## Example: Geospatial Platform

![image](../img/geoplatform.jpg){width="2487px" height="1329px"}

## Metadata for Hurricane Map

![image](../img/metadata1.jpg){width="1933px" height="954px"}

## Metadata for Hurricane Map

![image](../img/metadata2.jpg){width="112560px" height="73150px"}

## Metadata Standards

Need for consistency

## FGDC

![image](../img/fgdc.jpg){width="2249px" height="1254px"}

## ISO 19115 Geographic Information

![image](../img/iso1.jpg){width="2249px" height="1254px"}

## ISO 19115 Geographic Information

![image](../img/iso2.jpg){width="2249px" height="1254px"}

## Profiles

![image](../img/profiles.jpg){width="2249px" height="1254px"}

## Catalog Service

![image](../img/catalogservices.jpg){width="2249px" height="1254px"}

## Catalog Services

-   CSW
-   ISO 19119 Metadata Profile
-   Z39.50 Profile
-   OASIS ebRIM Profile
-   OpenSearch

## CSW Record

``` xml
...
<Record> ...
  <dc:identifier>00180e67-b7cf-40a3-861d-b3a09337b195</dc:identifier>
  <dc:title>Image2000 Product 1 (at1) Multispectral</dc:title>
  <dct:modified>2004-10-04 00:00:00</dct:modified>
  <dct:abstract>IMAGE2000 product 1 individual orthorectified
        scenes. IMAGE2000 was  produced from ETM+ Landsat 7
        satellite data and provides a consistent European
        coverage of individual orthorectified scenes in national
        map projection systems.</dct:abstract>
  <dc:type>dataset</dc:type>
```

## CSW Record (cont.)

``` xml
...
<Record>
  ...
  <dc:subject>imagery</dc:subject>
  <dc:subject>baseMaps</dc:subject>
  <dc:subject>earthCover</dc:subject>
  <dc:format>BIL</dc:format>
  <dc:creator>Vanda Lima</dc:creator>
  <dc:language>en</dc:language>
  <ows:WGS84BoundingBox>
     <ows:LowerCorner>14.05 46.46</ows:LowerCorner>
     <ows:UpperCorner>17.24 48.42</ows:UpperCorner>
  </ows:WGS84BoundingBox>
</Record>
```

## Queryable Terms

  ------------- -----------------
  Title         dc:title
  Subject       dc:subject
  Abstract      dc:description
  Modified      dc:modified
  Type          dc:type
  Format        dc:format
  Identifier    dc:identifier
  Source        dc:source
  Association   dc:relation
  BoundingBox   ows:BoundingBox
  ------------- -----------------

## OGC Queryable Terms

AnyText

:   Full text search

CRS

:   Coordinate Reference System

BoundingBox

:   For identifying a geographic area of interest

## Example Services

[GI
CAT](http://23.21.100.193/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetCapabilities)

[pycsw](http://demo.pycsw.org/cite/csw?service=CSW&version=2.0.2&request=GetCapabilities)

[ESRI
GeoPortal](http://gptogc.esri.com/geoportal/csw?request=GetCapabilities&service=CSW&version=2.0.2)

## CSW Operations

-   GetCapabilities
-   DescribeRecord
-   GetRecordById
-   GetRecords
-   Harvest

## CSW GetCapabilities

``` JavaScript
http://23.21.100.193/
gi-cat-RI/services/cswiso?
service=CSW&
version=2.0.2&
request=GetCapabilities
```

[Link](http://23.21.100.193/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetCapabilities)

## CSW DescribeRecord

``` JavaScript
http://23.21.100.193/
gi-cat-RI/services/cswiso?
service=CSW&
version=2.0.2&
request=DescribeRecord
```

[Link](http://23.21.100.193/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=DescribeRecord)

## CSW GetRecords

``` JavaScript
http://23.21.100.193/
gi-cat-RI/services/cswiso?
service=CSW&
version=2.0.2&
request=GetRecords&
typeNames=csw:Record&
resultType=results&
elementSetName=full&
outputSchema=http://www.opengis.net/cat/csw/2.0.2&
NAMESPACE=xmlns(csw=http://www.opengis.net/cat/csw/2.0.2)
```

[Link](http://23.21.100.193/gi-cat-RI/services/cswiso?service=CSW&version=2.0.2&request=GetRecords&typeNames=csw:Record&resultType=results&elementSetName=full&outputSchema=http://www.opengis.net/cat/csw/2.0.2&NAMESPACE=xmlns(csw=http://www.opengis.net/cat/csw/2.0.2))

## Advanced Queries

Performed:

:   -   CQLTEXT
    -   FILTER

## Asynchronous CSW Harvest Request

``` xml
<?xml version="1.0" encoding="ISO-8859-1"?>
<Harvest
  service="CSW"
  version="2.0.2"
  xmlns="http://www.opengis.net/cat/csw/2.0.2"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.opengis.net/cat/csw/2.0.2
                      ../../../csw/2.0.2/CSW-publication.xsd">
  <Source>http://www.yourserver.com/metadata.xml</Source>
  <ResourceType>http://www.fgdc.gov/metadata/csdgm</ResourceType>
  <ResourceFormat>application/xml</ResourceFormat>
  <HarvestInterval>P14D</HarvestInterval>
  <ResponseHandler>
      ftp://ftp.myserver.com/HarvestResponses</ResponseHandler>
</Harvest>
```

## Asynchronous CSW Harvest Response

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<csw:HarvestResponse
      xmlns:csw="http://www.opengis.net/cat/csw/2.0.2">
  <csw:Acknowledgement timeStamp="2011-12-05T15:13:59">
    <csw:EchoedRequest>
        <csw:Harvest ...
        </csw:Harvest>
    </csw:EchoedRequest>
    <csw:RequestId>
      e7684bec-1fa9-4053-814f-7ae970d7a4a1
    </csw:RequestId>
  </csw:Acknowledgement>
</csw:HarvestResponse>
```

## Synchronous CSW Harvest Request

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<csw:Harvest
         xmlns:csw="http://www.opengis.net/cat/csw/2.0.2"
         xmlns:gmd="http://www.isotc211.org/2005/gmd"
         service="CSW" version="2.0.2">
   <csw:Source>
      http://[ URL to the target CSW server ]?
      request=GetCapabilities&amp;service=CSW
      &amp;version=2.0.2
   </csw:Source>
   <csw:ResourceType>
      http://www.isotc211.org/schemas/2005/gmd/
   </csw:ResourceType>
</csw:Harvest>
```

## Synchronous CSW Harvest Response

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<csw:HarvestResponse
   xmlns:csw="http://www.opengis.net/cat/csw/2.0.2">
    <csw:TransactionResponse>
        <csw:TransactionSummary>
            <csw:totalInserted>22</csw:totalInserted>
            <csw:totalUpdated>0</csw:totalUpdated>
            <csw:totalDeleted>0</csw:totalDeleted>
        </csw:TransactionSummary>
    </csw:TransactionResponse>
</csw:HarvestResponse>
```

## OpenSearch

-   Provides a template to create requests for easy querying.
-   It is available in CAT 3.0

## Simplifying a query via OpenSearch

To query **all records containing Greece**, we need to perform the
following **GetRecords** request:

``` xml
<csw:GetRecords xmlns:csw="http://www.opengis.net/cat/csw/2.0.2" ...">
 <csw:Query typeNames="csw:Record">
   <csw:ElementSetName>brief</csw:ElementSetName>
   <csw:Constraint version="1.1.0">
     <ogc:Filter>
       <ogc:PropertyIsEqualTo>
         <ogc:PropertyName>csw:AnyText</ogc:PropertyName>
         <ogc:Literal>Greece</ogc:Literal>
       </ogc:PropertyIsEqualTo>
     </ogc:Filter>
   </csw:Constraint>
 </csw:Query>
</csw:GetRecords>
```

## Same query but using OpenSearch

OpenSearch **GetRecords**
[request](http://demo.pycsw.org/cite/csw?mode=opensearch&service=CSW&version=3.0.0&request=GetRecords&elementsetname=full&typenames=csw:Record&resulttype=results&q=Greece).
The request looks as follows:

``` properties
http://demo.pycsw.org/cite/csw?
mode=opensearch&
service=CSW&
version=3.0.0&
request=GetRecords&
elementsetname=full&
typenames=csw:Record&
resulttype=results&
q=Greece
```

## OpenSearch Template to do a request

``` properties
http://demo.pycsw.org/cite/csw?
mode=opensearch&
service=CSW&
version=3.0.0&
request=GetRecords&
elementsetname=full&
typenames=csw:Record&
resulttype=results&
q={searchTerms?}&
bbox={geo:box?}&
time={time:start?}/{time:end?}&
startposition={startIndex?}&
maxrecords={count?}
```

## Credits

-   [NOAA NCDDC Metadata training materials](http://www.ncddc.noaa.gov)
