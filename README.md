mci-doc-docbook
===============

Application of the DocBook tool chain, for the MetaCommunity Project [MCi]

## Availability

Source tree at Github: [git@github.com:MetaCommunity/mci-doc-docbook.git][mci-doc-docbook]

## Usage

### MCi Extention Module for DocBook

The [mci-doc-docbook][mci-doc-docbook] project defines an extension
module onto the [DocBook][docbook] schema, effectively the
_mci-doc-docbook schema_. The extension module provides a number of
features affecting the content model of a document applying the
_mci-doc-docbook schema_. A summary of features effectively added to the
[DocBook][docbook] schema, with the _mci-doc-docbook schema_:

* Include [XInclude][xinclude] elements within the following
  content models:
    * _set_
	* _toc_
	* _setindex_


#### Version of Upstream DocBook Schema

Presently, the [mci-doc-docbook][mci-doc-docbook] project applies the
[DocBook][docbook] schema version 5.0CR5



[mci-doc-docbook]: https://github.com/MetaCommunity/mci-doc-docbook
[docbook]: http://www.docbook.org/
[xinclude]: http://www.w3.org/TR/2006/REC-xinclude-20061115/
