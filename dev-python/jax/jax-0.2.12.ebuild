# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 python3_9 )

inherit distutils-r1

DESCRIPTION="Differentiate, compile, and transform Numpy code."
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/google/jax"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
