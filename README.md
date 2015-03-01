# Joint Academic Coding System (JACS) Version 3.0

Convert the JACS 3.0 CSV into an EPrints subject file.

> The Joint Academic Coding System (JACS) system is used by the Higher Education Statistics Agency (HESA) and the Universities and Colleges Admissions Service (UCAS) in the United Kingdom to classify academic subjects.
http://en.wikipedia.org/wiki/Joint_Academic_Coding_System

 $ wget https://www.hesa.ac.uk/dox/datacoll/jacs3/JACS3_20120529.csv
 $ ./mk_jacs3.pl JACS3_20120529.csv > subjects.jacs3
 $ bin/import_subjects foo path/to/subjects.jacs3
