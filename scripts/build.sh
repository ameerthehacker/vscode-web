#! /bin/sh

# remove old dist folder
echo "Cleaning things up..."
rm -rf dist
mkdir dist
mkdir dist/static
mkdir dist/static-extension

echo "Copying static files..."
# copy required files
cp index.html dist/
cp manifest.json dist/

echo "Building vscode..."
# compile vscode
cd vscode
yarn compile

echo "Copying vscode build artifacts..."
# copy the required files
cp -r out ../dist/static/
cp -r extensions/* ../dist/static-extension/
cp -r remote ../dist/static/

echo "Done!"
