# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="PyroBase - General Python Helpers and Utilities"
HOMEPAGE="https://github.com/pyroscope/pyrobase"
SRC_URI="https://github.com/pyroscope/pyrobase/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/tempita
	dev-python/imgurpython
	"
BDEPEND="
	${RDEPEND}
	"
