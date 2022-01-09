# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_9 python3_10 )

inherit distutils-r1

DESCRIPTION="Generic API for dispatch to Pyro backends."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/pyro-ppl/pyro-api"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

IUSE=""
RDEPEND=""
distutils_enable_tests pytest
