# cpt - CoPyText

cpt is a very simple wrapper around well-known Linux shell utils.
It allows to copy subdirectory content to another machine via clipboard without establishing additional connection, by copy and paste text from one terminal to another. It uses tar to archive target files, gzip and base64 to compress and convert it to a text.
The wrapper gives at it's output a line containing encoded text data and command pipeline to decode and decompress the data from a text to filesystem objects.
It is suitable to copy not large files or subdirectories.

## Usage

Utility expects file names or shell wildcard expressions as its arguments.

Example:
```
cpt *
```

## Installation

cpt can be installed into a Linux system by copying and pasting the contents of the file: deploy_cpt.sh into a terminal window with active root rights.
