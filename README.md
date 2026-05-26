# Marco Lanconelli — Curriculum Vitae

LaTeX source of my personal CV, built with the [AltaCV](https://github.com/liantze/AltaCV) class (v1.7.2).

## Download

| Document | PDF |
|----------|-----|
| Curriculum Vitae | [marcolanconelli-cv.pdf](out/marcolanconelli-cv.pdf) |

## Repository structure

```
├── src/          # CV source (tex, bib)
│   └── images/   # Photos and images
├── lib/          # Third-party AltaCV class files
├── out/          # Build output — only the PDF is tracked
├── Makefile
├── latexmkrc
└── install.sh
```

## Building

```bash
bash install.sh   # install LaTeX dependencies (Ubuntu/Debian)
make              # → out/marcolanconelli-cv.pdf
make clean        # remove auxiliary files, keep PDF
make cleanall     # remove auxiliary files and PDF
```

## Dependencies

- `pdflatex`, `biber`
- `altacv.cls` — included in `src/`
- `fontawesome5`, `simpleicons`, `paracol`, `roboto`, `lato` — installed via `install.sh`
