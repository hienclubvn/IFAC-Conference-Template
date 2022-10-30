#Table of Contents
- [I. HOW TO INSTALL ENV COMPILER LATEX WITH WSL](#i-how-to-install-env-compiler-latex-with-wsl)
- [II. HOW TO BUILD LATEX](#ii-how-to-build-latex)
- [III. CROSS-REFEREMCE AND LINKS WITH HYPERLINK](#iii-cross-referemce-and-links-with-hyperlink)
- [IV. REFERENCE](#iv-reference)

## I. HOW TO INSTALL ENV COMPILER LATEX WITH WSL
1. Install Windows Subsystem for Linux **WSL** in Windows
   >[Install Linux on Windows with WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
2. Install VSCode in Windows
   > [Download Visual Studio Code](https://code.visualstudio.com/download)
3. Install Extensions in VSCode
   > *In VSCode (Windows) at Extensions, install: WSL extension*
   > ref: https://marketplace.visualstudio.com/items?itemName=ms-VSCodeode-remote.remote-wsl
4. Install TexLive in WSL
   *In terminal (WSL), run cmd:*
    ```shell
    $ sudo apt install texlive-full
    ```
5. Install LaTex extension in VSCode (WSL)
   Open VSCode in Window, press: `CTRL+SHIP+P`, typing: `WSL`, select: `New WSL Window`
   In VSCode (**run WSL/Ubuntu**) install extension LaTeX-Workshop
   > ref: https://github.com/James-Yu/LaTeX-Workshop

## II. HOW TO BUILD LATEX
1. Change filename *.TEX
    In `Makefile` at `NAME_FILE = filename.tex`

2. In **Terminal** run command:
    ```shell
    $ make
    ```
    or
    ```shell
    $ make all
    ```
    or
    ```shell
    make build
    ```
3. Clear other OBJ files after the build
    ```shell
    $ make clean
    ```
## III. CROSS-REFEREMCE AND LINKS WITH HYPERLINK
- In `filename.tex`  include package `\usepackage{hyperref}`
- Build with the command: `$ make` several times until the message appears:
    ```
    Latexmk: This is Latexmk, John Collins, 26 Dec. 2019, version: 4.67.
    Latexmk: All targets () are up-to-date
    ```
- Fix error: conflict \MakeUppercase when use \usepackage{hyperref}
    ref: [conflict with documentclass because of MakeUppercase](https://github.com/ho-tex/oberdiek/issues/58)
    ```Tex
    \usepackage{hyperref}
    \makeatletter
    \let\MakeUppercaseUnsupportedInPdfStrings\@firstofone
    \let\MakeLowercaseUnsupportedInPdfStrings\@firstofone
    \makeatother
    ```
## IV. REFERENCE
Sample IFAC conferences can be found at:
1. IFAC website
[IFAC LaTeX package](https://www.ifac-control.org/conferences/author-guide/copy_of_ifacconf_latex.zip/view)
2. GitHub repository
[LaTeX class for IFAC-PapersOnline](https://github.com/IFAC-software/ifacconf_latex)
3. Overleaf website
[Template for IFAC Conferences](https://www.overleaf.com/latex/templates/style-and-template-for-ifac-conferences-and-symposia/yzytqxtcvgtp)


