git clone https://github.com/sansanda/gitFinalProject.git
cd gitFinalProject
git config --global credential.helper store
git pull
git branch develop
git checkout develop
REM create empty file fileA.txt
echo. 2>fileA.txt
git add .
git commit -m "add fileA.txt"
git push --set-upstream origin develop
git branch feature1
git checkout feature1
echo feature 1 wip >> fileA.txt
git add .
git commit -m "feature 1 wip"
git push --set-upstream origin feature1
echo feature 1 with 2 bugs >> fileA.txt
git add .
git commit -m "add feature 1"
git push
git checkout develop
git merge --no-ff -m "Merge branch 'feature1' into develop" feature1
git branch -d feature1
git push --delete origin feature1
git push
git branch feature2
git checkout feature2
git --set-upstream origin feature2
echo feature 1 with 2 bugs feature 2 wip >> fileA.txt
git add .
git commit -m "feature 2 wip"
git push
git branch release1
git checkout release1
git push --set-upstream origin release1
echo feature 1 with 1 bug >> fileA.txt
git add .
git commit -m "fix feature 1 bug X"
git push 
git checkout master
git merge --no-ff -m "Merge branch 'release1' into master" release1
git log --oneline --graph --all
SET /P commitID=Introduce el ID del commit a etiquetar...:
git tag %commitID% v1.00
git checkout develop
git merge --no-ff -m "Merge branch 'release1' into develop" release1 
git push
git branch -d release1
git push --delete origin release1
git checkout release2
git rebase develop
 