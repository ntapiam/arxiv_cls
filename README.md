arXiv.org LaTeX style files
===========================

These files provide class and `bibtex` style files for
arXiv.org preprints.

The `arxiv` class file is based on the `amsart` AMS class, loaded with the following
options: `reqno`, `oneside`, `a4paper`, `noamsfonts`.
It defaults to UTF-8 input encoding and T1 font enconding.

The class produces one-sided A4-sized documents with 2cm horizontal margins and 3cm vertical margins.
It uses the `lmodern` font together with the `mathabx` symbol font.
It also replaces the standard AMS fonts by `boondoxup` for calligraphic, `boondox` for script, `euler` for fraktur, and `fourier` for blackboard.

The following theorem-like environments are defined:
- `prp`: Proposition
- `dfn`: Definition
- `thm`: Theorem
- `lmm`: Lemma
- `crl`: Corollary
- `rmk`: Remark
- `exm`: Example
Numbering is by section.

The class also defines two pairs of delimiters: `\dlb` [[ and `\drb` ]], and `\dlp` (( and `\drp` )).
Both are extensible.
The commands `\dbrace#1` and `\dparen#1` provide automatically stretching double braces and double parenthesis, respectively.
For example: `\dbrace{s,t}` produces [[s,t]].
In both cases some kerning is inserted between each single delimiter for aesthetic purposes.

The BibTeX style file is based on the [UT Physics biblographic style v2.8](https://golem.ph.utexas.edu/~distler/TeXstuff/utphys.bst) by Jacques Distler.
It recognizes the custom fields `eprint`, `archiveprefix` and `primaryclass` for producing hyperlinked arXiv references.
Example:
```bibtex
@article{mwe2020,
  author = {Max Mustermann and Pedro Rojas and John Smith},
  title = {Example bibliographic reference},
  year = {2020},
  eprint = {2001.0001},
  primaryclass = {math.PR},
  arxiveprefix = {arXiv}
}
```
produces

> [1] M. Mustermann, P. Rojas and J. Smith, "Example bibliographic reference," [`arXiv: 2001.0001 [math.PR]`](#)

The style also produces hyperlinked references when the `doi` field is present.
The actual position of the link depends on the type of entry. For `article` entries, the journal references is the hyperlink, for `book` entries the title of the book is the hyperlink, etc.

Requirements
------------ 
This class file loads the `amsart` class. Therefore, it depends on the `amsmath` 
The following packages are required:
- `mathtools`
- `inputenc`
- `fontenc`
- `lmodern`
- `mathabx`
- `microtype`
- `mleftright`
- `bookmark`
- `cleveref`
- `geometry`
- `mathalfa`

Installation
------------
Copy `arxiv.cls` into `texmf/tex/latex/arxiv/` and `arxiv.bst` into `texmf/bibtex/bst/arxiv/`

Usage
-----
For the class file, write `\documentclass{arxiv}` in your preamble.
For the bibliography style write `\bibliographystyle{arxiv}` in before the `\bibliography` command.
