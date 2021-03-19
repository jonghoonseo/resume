load("@bazel_latex//:latex.bzl", "latex_document")

latex_document(
    name = "resume",
    srcs = glob([
        "cv/**",
        "resources/**",
    ]) + [
        ":awesome-cv",
    ],
    cmd_flags = ["--bibtex-cmd=biber"],
    main = "cv.tex",
)

latex_document(
    name = "resume_kor",
    srcs = glob([
        "cv.kor/**",
        "fonts/**",
        "resources/**",
    ]) + [
        ":kotex",
        ":awesome-cv",
    ],
    cmd_flags = ["--bibtex-cmd=biber"],
    main = "cv.kor.tex",
)

filegroup(
    name = "kotex",
    srcs = [
        "@texlive_texmf__texmf-dist__tex__latex__cjk-ko",
        "@texlive_texmf__texmf-dist__tex__luatex__luatexko",
        #"@texlive_texmf__texmf-dist__tex__latex__kotex-utf",
        #"@texlive_texmf__texmf-dist__tex__latex__kotex-oblivoir",
    ],
)

filegroup(
    name = "awesome-cv",
    srcs = glob([
        "Awesome-CV/**",
    ]) + [
        "@bazel_latex//packages:biblatex",
        "@bazel_latex//packages:enumitem",
        "@bazel_latex//packages:etoolbox",
        "@bazel_latex//packages:everyshi",
        "@bazel_latex//packages:fancyhdr",
        "@bazel_latex//packages:fontawesome",
        "@bazel_latex//packages:fontspec",
        "@bazel_latex//packages:geometry",
        "@bazel_latex//packages:hyperref",
        "@bazel_latex//packages:mfirstuc",
        "@bazel_latex//packages:parskip",
        "@bazel_latex//packages:siunitx",
        "@bazel_latex//packages:tcolorbox",
        "@bazel_latex//packages:unicode-math",
        "@bazel_latex//packages:xcolor",
        "@bazel_latex//packages:xifthen",
        "@texlive_texmf__texmf-dist__fonts__vf__adobe__sourcesanspro",
        "@texlive_texmf__texmf-dist__fonts__opentype__adobe__sourcesanspro",
        "@texlive_texmf__texmf-dist__tex__latex__setspace",
        "@texlive_texmf__texmf-dist__tex__latex__slantsc",
        "@texlive_texmf__texmf-dist__tex__latex__sourcesanspro",
        "@texlive_texmf__texmf-dist__tex__latex__xkeyval",
        "@texlive_texmf__texmf-dist__tex__generic__xkeyval",
    ],
)
