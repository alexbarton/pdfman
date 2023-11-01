# pdfman: View UNIX manual pages as Portable Document Format (PDF) files

`pdfman` converts UNIX manual pages to PDF documents using Ghostscript's
`ps2pdf`(1) or Apple's `pstopdf`(1) command (included in macOS up to version 13
"Ventura") and displays them by calling `open`(1) on the resulting PDF file.
This enhances the useability of the manual pages quite a bit, because you now
can make use of your preferred PDF file viewer and all of its functionality.

The conversion is only done once and a cached PDF file gets used for subsequent
invocations for the same topic.

## Prerequisites

The `pdfman` script makes use of the following tools, which need to be available
on the local system in the default search `$PATH`:

- `open`(1)
- Either `ps2pdf`(1) of the Ghostscript suite _or_ `pstopdf`(1) which was
  included in Apple macOS up to version 13 "Ventura".

Note: `pdfman` silently falls back to "normal" `man`(1) behavior if any of the
required tools is _not_ found.

## Usage

```bash
pdfman [-v] [-T] [<section>] <topic> ...
pdfman <man(1) options> <arguments> ...
pdfman {--help|--version>}
```

- `-v`: Enable verbose output.
- `-T`: Force regular `man`(1) behavior, don't use PDF files.

### Hint

You can setup an alias from `man` to `pdfman` in your shell startup files to not
forget to use it :-)

```bash
alias man=pdfman
```
