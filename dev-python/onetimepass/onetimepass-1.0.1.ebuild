# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_8 python3_9 )

inherit distutils-r1

DESCRIPTION="Module for generating and validating HOTP and TOTP tokens"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"
HOMEPAGE="https://github.com/tadeck/onetimepass/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
