# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Torrent lifecycle management tool"
HOMEPAGE="https://github.com/JohnDoee/autotorrent2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	dev-python/libtc
	dev-python/toml
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	"
