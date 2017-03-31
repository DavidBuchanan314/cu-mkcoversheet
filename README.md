# cu-mkcoversheet
Generate a coursework coversheet as required by Cardiff University, with a single command.

`template.pdf` was created by filling in the [form](https://docs.cs.cf.ac.uk/downloads/coursework/Coversheet.pdf),
with dummy data in Chromium, printing to another PDF file, and uncompressing that file with `pdftk`.

# Installation:
Edit the value of the `NUMBER` variable in `mkcoversheet.sh` to match your student number. Then run `sudo ./install.sh`

# Usage:
```
USAGE: mkcoversheet MODULE_CODE HOURS_SPENT
```

The submission date field is filled automatically with the current date, in ISO-8601 format.
