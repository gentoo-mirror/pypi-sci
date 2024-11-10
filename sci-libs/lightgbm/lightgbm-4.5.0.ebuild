# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="LightGBM Python Package"
HOMEPAGE="https://github.com/microsoft/LightGBM"
SRC_URI="https://github.com/microsoft/LightGBM/archive/refs/tags/v${PV}.tar.gz -> LightGBM-${PV}.tar.gz
	https://github.com/boostorg/compute/archive/36350b7d.tar.gz -> compute-36350b7d.tar.gz
	https://github.com/google/double-conversion/archive/f4cb2384.tar.gz -> double-conversion-f4cb2384.tar.gz
	https://github.com/lemire/fast_double_parser/archive/efec0353.tar.gz -> fast_double_parser-efec0353.tar.gz
	https://github.com/fmtlib/fmt/archive/f5e54359.tar.gz -> fmt-f5e54359.tar.gz"
S="${WORKDIR}/LightGBM-${PV}"
# https://gitlab.com/api/v4/projects/libeigen%2Feigen/repository/archive.tar.gz?sha=3147391d -> eigen-3147391d.tar.g

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND=">=dev-cpp/eigen-3.4"

PATCHES=( "${FILESDIR}"/${PN}-4.5.0-eigen3.patch
	"${FILESDIR}"/${PN}-4.5.0-libdir.patch )

src_prepare() {
	rmdir external_libs/compute && ln -sv "${WORKDIR}"/compute-36350b7de849300bd3d72a05d8bf890ca405a014 external_libs/compute
	# rmdir external_libs/eigen && ln -sv "${WORKDIR}"/eigen-3147391d946bb4b6c68edd901f2add6ac1f31f8c external_libs/eigen
	rmdir external_libs/fast_double_parser/benchmarks/dependencies/double-conversion && ln -sv "${WORKDIR}"/double-conversion-f4cb2384efa55dee0e6652f8674b05763441ab09 external_libs/fast_double_parser/benchmarks/dependencies/double-conversion
	rmdir external_libs/fast_double_parser && ln -sv "${WORKDIR}"/fast_double_parser-efec03532ef65984786e5e32dbc81f6e6a55a115 external_libs/fast_double_parser
	rmdir external_libs/fmt && ln -sv "${WORKDIR}"/fmt-f5e54359df4c26b6230fc61d38aa294581393084 external_libs/fmt
	cmake_src_prepare
}
