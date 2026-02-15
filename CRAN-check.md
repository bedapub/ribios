---
title: "CRAN Submission Checklist"
output: html_document
---

Based on reviewer feedback for other ribios packages and `R CMD check --as-cran`
results, the following items must be addressed before CRAN submission.

## Must fix (will cause rejection)

- [ ] Every exported function has a `\value` tag in its `.Rd` file
- [ ] `\dontrun{}` is only used when examples truly cannot run (e.g. missing
      API keys); use `\donttest{}` for slow examples, unwrap the rest
- [ ] No `:::` calls to unexported functions from other packages
- [ ] No `unlockBinding()` / `assignInNamespace()` or other unsafe namespace
      manipulation
- [ ] No escaped LaTeX specials in Rd (e.g. `\#` should be `#`)
- [ ] Package/software names in DESCRIPTION Title and Description are in single
      quotes (e.g. `'ribios'`)
- [ ] Examples only call exported functions; no `pkg:::fun()` in examples
- [ ] `@docType package` is replaced with the modern `"_PACKAGE"` sentinel

## Should fix (may trigger reviewer comment)

- [ ] Functions that modify `par()`, `options()`, or `lattice.options()` save
      the old value and restore it via `on.exit()` immediately after the change
- [ ] `print()` methods return `x` invisibly
- [ ] `cat()` / `print()` for informational messages are replaced with
      `message()` (except inside `print.*` methods)
- [ ] Functions do not write to the user's home filespace; examples and tests
      write to `tempdir()`
- [ ] DESCRIPTION Description field includes references where applicable
      (`doi:`, `ISBN:`, or `<https:...>`)
- [ ] `Additional_repositories` is set so CRAN can locate non-CRAN Suggests
      (e.g. `https://bedapub.r-universe.dev`)
- [ ] The description field should not start with the package name, 'This package', or similar.
- [ ] Check requirements defined in `md`, `qmd`, and `html` files in the directory `cran-cookbook/`
