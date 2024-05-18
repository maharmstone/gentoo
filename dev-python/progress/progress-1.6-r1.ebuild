# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..13} pypy3 )

inherit distutils-r1 pypi

DESCRIPTION="Easy to use progress bars"
HOMEPAGE="
	https://github.com/verigak/progress/
	https://pypi.org/project/progress/
"

SLOT="0"
LICENSE="ISC"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~m68k ~mips ppc ppc64 ~s390 sparc x86 ~amd64-linux ~x86-linux"

python_test() {
	"${EPYTHON}" test_progress.py || die "Tests fail with ${EPYTHON}"
}
