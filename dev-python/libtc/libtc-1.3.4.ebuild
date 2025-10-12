# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Bittorrent client library"
HOMEPAGE="https://github.com/JohnDoee/libtc"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/deluge-client
	dev-python/pytz
	dev-python/requests
	dev-python/click
	dev-python/tabulate
	dev-python/publicsuffixlist
	"
BDEPEND="
	${RDEPEND}
	"
