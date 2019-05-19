#!/bin/bash
echo "" > specification.md
cd sections

echo "" >> ../specification.md
cat Introduction.md >> ../specification.md
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

echo "" >> ../specification.md
cat Network.md >> ../specification.md   
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

echo "" >> ../specification.md
cat Numbers.md >> ../specification.md
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

echo "" >> ../specification.md
cat Cryptography.md >> ../specification.md
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

echo "" >> ../specification.md
cat NeoVM_NeoContract.md >> ../specification.md
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

echo "" >> ../specification.md
python chapter_heading.py "dBFT.yaml" >> ../specification.md
echo "" >> ../specification.md
cat dBFT.md >> ../specification.md   
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

echo "" >> ../specification.md
python chapter_heading.py "SmartEconomy.yaml" >> ../specification.md
echo "" >> ../specification.md
cat SmartEconomy.md >> ../specification.md   
echo "" >> ../specification.md
echo "&nbsp; \newpage" >> ../specification.md

cd ..
cp -r sections/images .
