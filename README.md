This repo is used to maintain git-bisect scripts

Git Bisect - This command uses a binary search algorithm to find which commit in your project’s history introduced a bug

More Details can be found in the presentation - https://docs.google.com/presentation/d/1m5asEw506nfqthuTsQfF5_3BBLvtm2edN3dnFLMqtlY/edit?usp=sharing

Recording - https://mediaspace.illinois.edu/media/t/1_7npuryw2/269676082

Steps to run git bisect -

```

# git checkout KNOWN_BAD_COMMIT
git checkout e7f55fc3fb6af2381df4094d821980f633d6b838 

git bisect start

../../git-bisect-script/script1.sh

# Tell Git that the current commit is bad
git bisect bad 

# git checkout KNOWN_GOOD_COMMIT
git checkout f23c690eecf89e9422a1bb8cf9c8e51d54d89b04

../../git-bisect-script/script1.sh

# Tell Git that the current commit is good
git bisect good

# 7th commit 

# Bisect automatically all the way to the first bad commit
git bisect run ../../git-bisect-script/script1.sh

git bisect log

```
