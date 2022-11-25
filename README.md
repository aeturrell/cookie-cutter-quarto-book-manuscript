# cookie-cutter-quarto-book-manuscript

A minimal but fully featured template for a quarto, markdown, and/or Jupyter notebook based book manuscript that renders as a publisher-friendly Microsoft Word file. The idea is for the template to be as simple as possible, but no simpler.

## Features

- References, with
  - citations in the order in which they appear in the text
  - citations rendered as superscript numbers within the body of the text
  - citations that links to relevant entry in the bibliography
  - superscript numbered ranges for multiple successive citations, eg 1---3
  - bibliography citations that, if there is a URL present in the bibliography file (in .bib format), link to the original source
  - support for citations with ad hoc notes via the "note" entry in the .bib file
- Figures, with
  - support to create / insert figures reproducibly from code
  - alt text
  - the lossless SVG format
- Publisher-ready output in the form of a Microsoft Word file with,
  - Times New Roman font
  - big line spacing
  - sufficient margins
- Input files with support for,
  - Jupyter notebooks
  - markdown
  - quarto markdown
- A table of contents
- A ready-to-roll Python 3.9 environment via a conda file

## Requirements

What you will need:

- [Quarto](https://quarto.org/) (and its dependencies)
- The [Anaconda distribution of Python](https://docs.conda.io/) (for code / figures produced from code only)

To install the Python environment, you will need to run:

```bash
conda env create -f environment.yml
```

Although not required, you may find Visual Studio Code and its Python and Quarto extensions helpful for writing.

## Building the book

On the command line, ensure you have activated the Python environment if you are creating plots:

```bash
conda activate qmdbook
```

And then create the Word Document with:

```bash
quarto render
```

It will appear in the `_book` directory.

## Known issues

If the compilation via Jupyter fails (eg if a chart code chunk fails) then quarto will leave a Jupyter notebook in its wake---simply delete it or fix the issue.