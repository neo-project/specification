#!/bin/bash
echo "" > specification_paper.md
cd sections
for f in `ls *.md`; do
   echo "" >> ../specification_paper.md
   # Preamble is just needed for isolated chapter generation
   chapterFileName=`echo $f | cut -d'.' -f 1`
   python chapter_heading.py "${chapterFileName}.yaml" >> ../specification_paper.md
   echo "" >> ../specification_paper.md
   cat $f >> ../specification_paper.md
   echo "" >> ../specification_paper.md
   echo "&nbsp; \newpage" >> ../specification_paper.md
done
cd ..
cp -r sections/images .
