# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Transmission bittorent client JSON-RPC protocol"
HOMEPAGE="https://github.com/Trim21/transmission-rpc"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/urllib3
	dev-python/certifi
	dev-python/typing-extensions
	"
BDEPEND="
	${RDEPEND}
	"
