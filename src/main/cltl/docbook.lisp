;; docbook.lisp -- class stubs / prototypes towards managing a documentation workflow with DocBook and Common Lisp

(in-package #:cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (defpackage #:info.metacommunity.xml.docbook
    (:nicknames #:docbook)
    (:use #:asdf #:cl))
  )


(in-package #:docbook)

;;; % XML Components - Class Stubs

(defclass xml-component (component)
  ()

(defclass xml-file (xml-component file-component)
  ())


;;; % Schema Components - Class Stubs

(defclass schema-component (component)
  ())

(defclass schema-file (schema-component file-component)
  ())


(defclass dtd-component (schema-component)
  ())

(defclass dtd-file (dtd-component schema-file)
  ())



(defclass relax-ng-component (schema-component)
  ())

(defclass relax-ng-file (relax-ng-component schema-file)
  ())


(defclass rng-xml-component (rng-component xml-component)
  ())

(defclass rng-xml-file (rng-xml-component schema-file)
  ())


(defclass rnc-component (rng-component)
  ())

(defclass rnc-file (rnc-component schema-file)
  ())


(defclass xsd-schema-component (schema-component xml-component)
  ())

(defclass xsd-schema-file (xsd-schema-component schema-file)
  ())

;;; % Document Formatting Components

(defclass formatting-specifier (component)
  ())

(defclass xsl-stylesheet (formatting-specifier)
  ())

(defclass xsl-stylesheet-file (xsl-stylesheet source-file)
  ())

;;; % Output Files

(defclass output-component (component)
  ())

(defclass html-file ()
  ())


(defclass pdf-file ()
  ())


(defclass manual-page ()
  ())

(defclass textinfo-file ()
  ())


;;; % Prototypes for File Transformation Protocol

(defclass processing-engine ()
  ;; FIXME:  first define APPLICATION class within Dobelle-App
  ())
