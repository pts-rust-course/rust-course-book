:: Should be run when the working tree is clean
git switch view && git reset --hard main && (rmdir /s /q ".\docs" || break) && mdbook build && git add -f docs && git commit -m "Build mdBook" && git push -f origin view
:: Would be a huge leg shot if there are uncommitted changes without «&&»

git switch main
