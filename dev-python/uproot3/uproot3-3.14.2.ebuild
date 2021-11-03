# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 python3_9 )

inherit distutils-r1

DESCRIPTION="ROOT I/O in pure Python and Numpy."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/scikit-hep/uproot3"

LICENSE="BSD 3-clause"
SLOT="0"
KEYWORDS="~amd64"

IUSE="compress testing"
RDEPEND=">=dev-python/numpy-1.13.1[${PYTHON_USEDEP}]
	dev-python/awkward0[${PYTHON_USEDEP}]
	dev-python/uproot3-methods[${PYTHON_USEDEP}]
	dev-python/cachetools[${PYTHON_USEDEP}]
	compress? ( dev-python/lz4[${PYTHON_USEDEP}]
		dev-python/zstandard[${PYTHON_USEDEP}]
		dev-python/xxhash[${PYTHON_USEDEP}] )
	testing? ( >=dev-python/pytest-3.9[${PYTHON_USEDEP}]
		dev-python/pkgconfig[${PYTHON_USEDEP}]
		dev-python/lz4[${PYTHON_USEDEP}]
		dev-python/zstandard[${PYTHON_USEDEP}]
		dev-python/xxhash[${PYTHON_USEDEP}]
		dev-python/mock[${PYTHON_USEDEP}]
		dev-python/requests[${PYTHON_USEDEP}] )"
distutils_enable_tests pytest
