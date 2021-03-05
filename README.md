# resume

## Build

This repository is built using bazel.

## Release

To release artifacts to the Github Release, you need to push a new tag.

1. Tag to the commit

```
$ git tag "some-tag-version"
```
2. Push the tag to remote

```
$ git push origin --tags
```

3. Verify artifacts are correctly registered to [Github Release page](https://github.com/jonghoonseo/resume/releases)
