# Creates a repo with the passed in name
# in the directory one-level up.

APPNAME=$1
if [[ -z "$APPNAME" ]]; then
    echo "{APPNAME} is required."
    echo ""
    echo "For example:"
    echo "./make_repo.sh mycliapp"
    exit 1
fi

# Create the directory one-level up with the selected app name.
mkdir ../$APPNAME

# Copy over all the files here in the template.
cp -r cli-app-name ../$APPNAME/$APPNAME
cp -r tests ../$APPNAME
cp LICENSE ../$APPNAME
cp pyproject.toml ../$APPNAME
cp .gitignore ../$APPNAME

# Create a placeholder README.
echo "# $APPNAME is a cli app.\n\nInitial commit. To be filled in." > ../$APPNAME/README.md

# Replace {cli-app-name} with the actual new app name.
grep -lrI "{cli-app-name}" ../$APPNAME | xargs sed -i "" "s/{cli-app-name}/$APPNAME/g"

# Create initial git repo.
cd ../$APPNAME
git init .
git add .
git commit -m "Initial commit."
