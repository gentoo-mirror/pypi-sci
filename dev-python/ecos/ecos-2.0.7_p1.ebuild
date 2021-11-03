# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{8,9} )

inherit distutils-r1

DESCRIPTION="Embedded Cone Solver."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P/_p/.post}.tar.gz"
HOMEPAGE="https://github.com/embotech/ecos"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""
RDEPEND="dev-python/numpy[${PYTHON_USEDEP}]
	sci-libs/scipy[${PYTHON_USEDEP}]"
distutils_enable_tests pytest
