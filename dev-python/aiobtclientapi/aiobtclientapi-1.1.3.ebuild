# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=standalone

inherit distutils-r1 pypi

DESCRIPTION="asynchronous API for communicating with BitTorrent clients"
HOMEPAGE=" https://codeberg.org/plotski/aiobtclientapi"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

PATCHES=(
	"${FILESDIR}"/aiobtclientapi-1.1.3-exclude-tests.patch
)

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	dev-python/aiobtclientrpc
	dev-python/async-timeout
	dev-python/httpx
	dev-python/torf
	"
