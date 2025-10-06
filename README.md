# cookie-cutter-quarto-book-manuscript

A minimal but fully featured template for a quarto, markdown, and/or Jupyter notebook based book manuscript that renders as a publisher-friendly Microsoft Word file. The idea is for the template to be as simple as possible, but no simpler.

## Features

- References, with
  - citations in the order in which they appear in the text
  - citations rendered as superscript numbers within the body of the text
  - citations that links to relevant entry in the bibliography
  - citations that are chapter specific, which publishers prefer
  - superscript numbered ranges for multiple successive citations, eg 1---3
  - webpage bibliography entries have the original link and date accessed
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

## Requirements

What you will need:

- [Quarto](https://quarto.org/) (and its dependencies)
- [Astral's uv](https://docs.astral.sh/uv/) to manage the Python environment
- [Make](https://www.gnu.org/software/make/) to compile the book

## Recommended

- [Visual Studio Code] and its Python and Quarto extensions helpful for writing.
- [Zotero], for managing your library of references.

## Setup

### All references at the end

The default setting is for each chapter to have a separate bibliography, as is common in the UK and USA for non-fiction books. However, you can have all references at the end instead.

To change this:
- add "references.qmd" to the bullets under "chapters" in `_quarto.yml`
- comment out the filters block in `_quarto.yml`
- comment out `reference-section-title` in `_quarto.yml`
- you *may* also need to see `citeproc` to `true`

### Python environment

To install the Python environment, you will need to run:

```bash
uv sync
```

### Configuring Zotero (optional)

In Zotero, install the betterbibtex package.

#### Date accessed and url given for webpages

In settings -> betterbibtex, make sure "Add URLs to Bibtex export" is set to "In the 'url' field, but assuming the 'url' package is not installed."

NB: the citation style language file must be as in this commit too.

#### Auto-export of bibliography

Select file or papers. Go to "Export collection...". Use "BetterBibtex" as format and then ensure that "Keep updated" and "Export in background" are both ticked.

## Building the book

On the command line, run:

```bash
make all
```

The output Word doc will appear in the `_book` directory.

When first opening the Word doc, you may have to click "yes" to update the internal links with the doc.

## Known issues

If the compilation via Jupyter fails (eg if a chart code chunk fails) then quarto will leave a Jupyter notebook in its wake---simply delete it or fix the issue re-run the compilation.

