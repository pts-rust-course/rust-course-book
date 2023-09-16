:: Should be run when the working tree is clean
git switch view && git reset --hard main && (rmdir /s /q ".\docs" || break) && mdbook build && git add -f build && git commit -m "Build mdBook" && git push origin view && git switch main
:: Would be a huge leg shot if there are uncommitted changes without «&&»
