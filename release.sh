git add -A && git commit -m "Release v1.3.0"
git tag '1.3.0'
git push --tags
git push origin
flutter pub publish
