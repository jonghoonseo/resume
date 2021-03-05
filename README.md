# Jonghoon Seo's Resume

This repo contains a resume and CV for Jonghoon Seo.

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

## Update `Awesome-CV`

This repo uses [Awesome-CV](https://github.com/posquit0/Awesome-CV) as a latex
style package. To manage the package for this repo, we use `git subtree`.

### Push the modification

To push the modification in `Awesome-CV` directory to `Awesome-CV` repo,
execute the following:
```
$ git subtree push --prefix=Awesome-CV awesome-cv from-main-project
```

### Pull the modification

To pull the contents of `master` branch to `Awesome-CV` directory,
execute the following:
```
$ git subtree pull --prefix=Awesome-CV awesome-cv master
```
