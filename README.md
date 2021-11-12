# pandoc-docker
A baseline Pandoc to work with community projects. Originally created as a workaround to a compatibility issue on my machine. https://github.com/Wandmalfarbe/pandoc-latex-template/issues/259. This container is based on the latest ("hirsute" at time of writing) Ubuntu with recommended textlive packages and extras.

Any command can be passed, such as `ls`, `pwd`, `touch`, etc to verify the directory has been mapped in appropriately.

# Build
```shell
docker build -t pandoc .
docker image ls -a | grep pandoc
# Verification
docker run --rm localhost/pandoc pandoc --version
pandoc 2.9.2.1
Compiled with pandoc-types 1.20, texmath 0.12.0.2, skylighting 0.8.5
Default user data directory: /root/.local/share/pandoc or /root/.pandoc
Copyright (C) 2006-2020 John MacFarlane
Web:  https://pandoc.org
This is free software; see the source for copying conditions.
There is no warranty, not even for merchantability or fitness
for a particular purpose.
```

# Usage
```shell
docker run --rm -v ./:/data:z localhost/pandoc <usual pandoc command here>
```

# Example
```shell
# Example 1
docker run --rm -v ./:/data:z localhost/pandoc pandoc -o report.odt  source.md
# Example with template
docker run --rm -v ./:/data:z localhost/pandoc pandoc -o report.pdf --from markdown --template=eisvogel.latex source.md --listings --toc
```
