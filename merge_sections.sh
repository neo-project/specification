#!/bin/bash
echo "" > specification.md
cd sections
for f in `ls *.md`; do
   echo "" >> ../specification.md
   # Preamble is just needed for isolated chapter generation
   chapterFileName=`echo $f | cut -d'.' -f 1`
   python chapter_heading.py "${chapterFileName}.yaml" >> ../specification.md
   echo "" >> ../specification.md
   cat $f >> ../specification.md
   echo "" >> ../specification.md
   echo "&nbsp; \newpage" >> ../specification.md
done
cd ..
cp -r sections/images .
