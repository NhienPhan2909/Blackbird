npx create-react-app blackbird
cd blackbird
gh auth login
gh repo create
git checkout -b update_logo
sed -i "" 's|img src={logo}|img src="https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg"|g' src/App.js
sed -i "" 's|href="https://reactjs.org"|href="https://www.propelleraero.com/dirtmate/"|g' src/App.
git add .
git commit -m "change logo and link"
git push origin update_logo
gh pr create --title "Update Logo" --body "Updating logo and link"
gh pr merge

# REPO_URL: https://github.com/NhienPhan2909/Blackbird.git