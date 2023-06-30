# pdfman: View Manual Pages as Portable Document Format (PDF) files

`pdfman` converts UNIX manual pages to PDF using the `pstopdf(1)` command and
displays them by calling `open(1)` on the resulting PDF file. This works very
good on macOS and enhances the useability of the manual pages quite a bit
because you can use your preferred PDF reader.

The conversion is only done once and a cached PDF file gets used for subsequent
invocations for the same topic.

## Usage

```bash
pdfman [-v] [-T] [<section>] <topic> ...
pdfman <man(1) options> <arguments> ...
pdfman {--help|--version>}
```
