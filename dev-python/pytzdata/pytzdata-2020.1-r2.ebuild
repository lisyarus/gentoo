# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( pypy3 python3_{10..12} )

inherit distutils-r1

DESCRIPTION="The Olson timezone database for Python"
HOMEPAGE="
	https://github.com/sdispater/pytzdata/
	https://pypi.org/project/pytzdata/
"
SRC_URI="
	https://github.com/sdispater/pytzdata/archive/${PV}.tar.gz
		-> ${P}.gh.tar.gz
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 arm arm64 ~hppa ~loong ~ppc ppc64 ~riscv ~s390 ~sparc x86"

RDEPEND="
	dev-python/cleo[${PYTHON_USEDEP}]
"

distutils_enable_tests pytest

PATCHES=(
	"${FILESDIR}"/pytzdata-2020.1-system-zoneinfo.patch
)
