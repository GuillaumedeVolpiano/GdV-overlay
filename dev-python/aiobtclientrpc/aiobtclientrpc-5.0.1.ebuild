# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="low-level access to the RPC protocols of BitTorrent clients"
HOMEPAGE="https://codeberg.org/plotski/aiobtclientrpc"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

PATCHES=(
	"${FILESDIR}"/aiobtclientrpc-5.0.1-ignore-tests.patch
	)

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	dev-python/async-timeout
	dev-python/httpx
	dev-python/httpx-socks
	dev-python/python-socks
	dev-python/rencode
	"
