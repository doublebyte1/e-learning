# [Tiles Encoding WebP](http://www.geopackage.org/spec130/#extension_tiles_webp)

This extension allows the use of the [WebP
format](https://developers.google.com/speed/webp/)) for tiles as an
alternative to JPG or PNG.

## gpkg_extensions

Add a row to this table for each tile pyramid that may contain tiles in
the WebP format as described in Table 1.

  ---------------------------------------------------------------------------
  Column             Value
  ------------------ --------------------------------------------------------
  `table_name`       *tile pyramid user data table name*

  `column_name`      `tile_data`

  `extension_name`   `gpkg_webp`

  `definition`       <http://www.geopackage.org/spec/#extension_tiles_webp>

  `scope`            *read-write*
  ---------------------------------------------------------------------------

  : Table 1: `gpkg_extensions`
