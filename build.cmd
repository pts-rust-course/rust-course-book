:: Should be run when the working tree is clean
git switch view
git merge main
rmdir /s /q ".\docs"

mdbook build

git add .
git commit -m "Build mdBook"
git push origin view

git switch main
