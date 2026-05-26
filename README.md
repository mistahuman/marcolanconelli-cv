# Marco Lanconelli — Curriculum Vitae

LaTeX source of my personal CV, built with the [AltaCV](https://github.com/liantze/AltaCV) class (v1.7.2).

## Documents

| Document | PDF |
|----------|-----|
| Curriculum Vitae | [sample.pdf](sample.pdf) |

## Building

```bash
bash install.sh   # install LaTeX dependencies (Ubuntu/Debian)
make              # → sample.pdf
make clean        # remove auxiliary files, keep PDF
make cleanall     # remove auxiliary files and PDF
```

## Dependencies

- `pdflatex`
- `altacv.cls` — included in this repository
- `fontawesome5`, `simpleicons`, `paracol`, `roboto`, `lato` — installed via `install.sh`
