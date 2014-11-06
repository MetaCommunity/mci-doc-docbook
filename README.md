mci-doc-docbook
===============

Application of the DocBook tool chain, for the MetaCommunity Project [MCi]

## Availability

Source tree at Github: [git@github.com:MetaCommunity/mci-doc-docbook.git][mci-doc-docbook]


## Usage

See also: _[Documenting a Design Decision: Documentation Framework for the AFFTA Source Tree][affta-doc]_

### Extension for Applications of the DocBook Toolchain onto ASDF

(TBD)

#### XML Components

* Class: `XML-COMPONENT`
* Class: `XML-FILE`

_Note: An `XML-COMPONENT` could be provided as simply a stream object
-- possibly embedded within an information object of an XML format or
other format, e.g. a Common Lisp docuentation string, whereas an
`XML-FILE` must be mapped to a file on a filesystem.

#### Schema Components

* Class: `SCHEMA-COMPONENT`
* Class: `SCHEMA-FILE`

* Class: `DTD-COMPONENT`
* Class: `DTD-FILE`

* Class: `RNG-SCHEMA-COMPONENT`
* Class: `RNG-SCHEMA-FILE`

* Class: `RNC-SCHEMA-COMPONENT`
* Class: `RNC-SCHEMA-FILE`

* Class: `XSD-SCHEMA-COMPONENT`
* Class: `XSD-SCHEMA-FILE`

#### Document Formatting Components

* Class: `FORMATTING-SPECIFIER`
* Class: `XSL-STYLESHEET-COMPONENT`
* Class: `XSL-STYLESHEET-FILE`

#### Output Files

_Purpose: To define systems of ASDF output files, for development of
an application packaging system. See also: [dobelle-app][dobelle-app]_

* Class: `HTML-FILE`
* Class: `PDF-FILE`
* Class: `MANUAL-PAGE-FILE`
* Class: `TEXINFO-FILE`
* Class: `TEX-FILE`

#### Application Definitions

_Purpose: To define 'applications' such as would be expected to be 
installed on the host operating system, for validation and formatting
of source files. See also: [dobelle-app][dobelle-app]_

_Example usage cases:_

* _Define syntax checker for `XML-Component` and `XML-File` objects_
* _Define XSLT engine for application of `XSL-Stylesheet-File` objects
  onto `XML-File` objects_
* _Define spelling checker for `XML-Component`, `XML-File`, and other
  source file objects_
* _Provide integration with Emacs and other IDE systems_
* _Integrate system definitions with host packaging system. See also: [dobelle-app][dobelle-app]_

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

_FIXME: Update this section of the documentation, to synch with current revision of `src/main/rnc/module.docbook.rnc`_

#### Version of Upstream DocBook Schema

Presently, the [mci-doc-docbook][mci-doc-docbook] project applies the
[DocBook][docbook] schema version 5.0CR5

### Emacs Lisp Code

The [nXML][nxml] extension for Emacs Lisp provides an effective
baseline for editing of XML documents in
[GNU Emacs][emacs]. Typically, [nXML][nxml] is distributed with
[GNU Emacs][emacs].

#### External Submodules

The [mci-doc-docbook][mci-doc-docbook] project defines a number of 
_submodules_ onto the Git [source tree][mci-doc-docbook] published of
the [mci-doc-docbook][mci-doc-docbook] project. These _submodules_ are 
provided as a matter of convenience, for _syntax higlighting_ and
functional support in editing of document elements.

##### TDTD

As described in the [nXML TeXinfo documentation][nxml-info],
[nXML][nxml] has some functional support for editing of XML DTDs. A
morecomprehensive functionality is provided by [TDTD][tdtd].

[TDTD][tdtd] is defined as a _submodule_ of
[mci-doc-docbook][mci-doc-docbook], at a _pathname_ `externals/tdtd/`
within the [mci-doc-docbook][mci-doc-docbook] _source tree_

##### RNC-Mode

[RNC-Mode][rnc-mode] provides functional support for editing of _Relax
NG Compact Syntax_ (RNC) schema files.

[RNC-Mode][rnc-mode] is defined as a _submodule_ of
[mci-doc-docbook][mci-doc-docbook], at a _pathname_ `externals/rnc-mode/`
within the [mci-doc-docbook][mci-doc-docbook] _source tree_


[affta-doc]: http://journal.metacommunity.info/post/2014/10/design-decision-affta-documentation
[mci-doc-docbook]: https://github.com/MetaCommunity/mci-doc-docbook
[docbook]: http://www.docbook.org/
[xinclude]: http://www.w3.org/TR/2006/REC-xinclude-20061115/
[rnc-mode]: https://github.com/TreeRex/rnc-mode
[tdtd]: http://www.menteith.com/wiki/tdtd
[nxml]: http://www.thaiopensource.com/nxml-mode/
[emacs]: http://www.gnu.org/software/emacs/
[nxml-info]: http://www.gnu.org/software/emacs/manual/html_mono/nxml-mode.html
[dobelle-app]: https://github.com/MetaCommunity/dobelle-app
