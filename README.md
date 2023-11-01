# pdfman: View UNIX manual pages as Portable Document Format (PDF) files

`pdfman` converts UNIX manual pages to PDF documents using Ghostscript's
`ps2pdf`(1) or Apple's `pstopdf`(1) command (included in macOS up to version 13
"Ventura") and displays them by calling `open`(1) on the resulting PDF file.
This enhances the useability of the manual pages quite a bit, because you now
can make use of your preferred PDF file viewer and all of its functionality.

The conversion is only done once and a cached PDF file gets used for subsequent
invocations for the same topic.

## Usage

```bash
pdfman [-v] [-T] [<section>] <topic> ...
pdfman <man(1) options> <arguments> ...
pdfman {--help|--version>}
```
