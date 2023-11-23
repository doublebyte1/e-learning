# Potential Future Development of a WMTS OAS 3.0 API

The [OGC Open Geospatial APIs - White Paper (\"White
Paper\")](http://docs.opengeospatial.org/wp/16-019r4/16-019r4.html) made
the case for the consistent use of protocols across multiple OGC
application programming interfaces (APIs) to enhance interoperability.
For example, using a consistent TileMatrixSet across several WMTS
endpoints could enable creation of a consistent, composite map. A single
WMTS API adopted uniformly across these endpoints could help foster this
consistency (and, at the same time, perhaps reduce the proliferation of
non-interoperable WMTS APIs).

The white paper also suggested (under \"3.3 API Specification and
Management\") that API documentation can be aided by adopting the
approach used by the [Open API Initiative
(OAI)](https://www.openapis.org/). The OAI is a [Linux Foundation
Collaborative Project](https://www.linuxfoundation.org/projects/) whose
[members](https://www.openapis.org/membership/members) are responsible
for development of [version
3.0](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.0.md)
of the [OAI Specification](https://github.com/OAI/OpenAPI-Specification)
(OAS 3.0).

OAS [defines a standard, language-agnostic interface to RESTful
APIs](https://github.com/OAI/OpenAPI-Specification/blob/OpenAPI.next/versions/3.0.0.md#introduction).
One of its [goals](https://www.openapis.org/specification/repo) is to
allow both humans and computers to discover and understand endpoint
capabilities without having to access source code or to inspect network
traffic. OAS specs are written using the human-friendly (and
JSON-friendly) [YAML](http://www.yaml.org/about.html) serialization
language.

The prior two versions of OAS were proprietary offerings under the
[Swagger](https://app.swaggerhub.com) moniker. For OAS 3.0, a suite of
[open-source tools](https://github.com/swagger-api) enables simple
creation and validation of conformance. The [Swagger
UI](https://github.com/swagger-api/swagger-ui) and [Swagger
Editor](https://github.com/swagger-api/swagger-editor) tools were used
to create a [Draft WMTS API for Discussion Purposes
Only](./target-api/index.html) and its [Key-Value-Pair API
alternative](./target-api-kvp/index.html). These tools are available
free-of-charge by downloading the indicated GitHub repositories and
opening (in any modern browser) the \"index.html\" file in the
\"/swagger-editor\" folder. The API YAML content can then be copied and
pasted into the editor, and the resulting behavior will be shown in the
UI tool.

The user-interface on the right side of the Swagger Editor visualizes
and enables crude interaction with a mock implementation of the API. In
this particular case, it displays the HTTP GET operations for three
paths, one for each resource (ServiceMetadata, Tile, or FeatureInfo).
Selecting any of the blue \"GET\" buttons shows the possible normal-flow
(e.g., the desired resource) and error responses (e.g., 404 File Not
Found) for that particular resource.

The Draft WMTS API supports the general White Paper recommendation
(under \"Preface\") that OGC \"consider activities that provide for
consistent implementations of OWS protocols\". It is also consistent
with the comment later in the White Paper (under \"3.2 API design based
on geospatial requirements\") that ongoing OGC discussions might lead to
addition of more RESTful protocols based on a Resource-Oriented
Architecture (as described in the [Testbed 11 REST Interface Engineering
Report](https://portal.opengeospatial.org/files/?artifact_id=64860) and
expanded upon in the [Testbed 12 REST User
Guide](http://docs.opengeospatial.org/guides/16-057r1.html)).

The detailed content of the Draft WMTS API was based partly on the
resource-oriented style described in Clause \"10 WMTS using RESTful\" of
the [07-057r7 OpenGIS Web Map Tile Service Implementation
Standard](http://www.opengeospatial.org/standards/wmts) ("WMTS
Specification"). Several of the WMTS Spec requirements were relaxed to
allow, for example, for a JSON ServiceMetadata document. The purpose of
this non-conformance was to illustrate how a future version of the WMTS
Spec might accommodate non-XML [response media
types](https://swagger.io/docs/specification/describing-responses/).

## Draft WMTS API for Discussion Purposes Only

The Draft WMTS API can be found at the following URL
[http://cite.opengeospatial.org/pub/cite/files/edu/wmts/text/target-api/index.html](./target-api/index.html)

The KVP version of the draft WMTS API can be found at the following URL
[http://cite.opengeospatial.org/pub/cite/files/edu/wmts/text/target-api-kvp/index.html](./target-api-kvp/index.html)
