# XML Basics Homework

### _Homework_

1.  What does the XML language represents? What does it used for? 
2.  Create XML document `students.xml`, which contains structured description of students.
  * For each student you should enter information for his name, sex, birth date, phone, email, course, specialty, faculty number and a list of taken exams (exam name, tutor, score).
3.  What does the namespaces represents in the XML documents? What are they used for? 
4.  Explore http://en.wikipedia.org/wiki/Uniform_Resource_Identifier to learn more about URI, URN and URL definitions.
5.  Add default namespace for the students "`urn:students`".
6.  Create XSD Schema for the `students.xml` document.
  * Add new elements in the schema: information for enrollment (date and exam score) and teacher's endorsements.
7.  Write a XSL stylesheet to visualize the students as HTML.
  * Test it in your favourite browser.

### 1.  _What does the XML language represents? What does it used for?_

* `XML` (e`X`tensible `M`arkup `L`anguage)
  * Universal language (notation) for describing structured data using text with tags
  * The data is stored together with the meta-data about it
  * Used to describe other languages (formats) for data representation
* XML looks like HTML
  * Text based language, uses tags and attributes
* Worldwide standard
  * supported by the W3C - [www.w3c.org](http://www.w3.org/)
* Independent of
  * Hardware platform
  * Operating system
  * Programming languages

### 3.  _What does the namespaces represents in the XML documents? What are they used for?_

* XML Namespaces provide a method to avoid element name conflicts
  * Name conflicts in XML can easily be avoided using a name prefix
  * When using prefixes in XML, a namespace for the prefix must be defined
* The namespace can be defined by an xmlns attribute in the start tag of an element
  * The namespace declaration has the following syntax. xmlns:prefix="URI".
  * The purpose of using an URI is to give the namespace a unique name.