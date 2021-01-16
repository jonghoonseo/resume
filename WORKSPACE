load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
   name = "bazel_latex",
   commit = "7d559d",
   remote = "git@github.com:jonghoonseo/bazel-latex.git"
)

load("@bazel_latex//:repositories.bzl", "latex_repositories")

latex_repositories()
