# gentoo-pypi-sci

This gentoo overlay repository contains serveral ebuilds generated by gentoo-pypi-generator.

## How to use

### Import via `eselect`

You can run `eselect repository enable pypi-sci` to enable this overlay.

### Manual installation

Clone this repo to `/var/db/repos/gentoo-pypi-sci`.

Write `/etc/portage/repos.conf/pypi-sci.conf` as:

```
[pypi-sci]
location = /var/db/repos/gentoo-pypi-sci
```
