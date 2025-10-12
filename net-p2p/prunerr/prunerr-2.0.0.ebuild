# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Perma-seed Servarr media libraries"
HOMEPAGE="https://github.com/rpatterson/prunerr"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/argcomplete
	dev-python/arrapi
	dev-python/pyyaml
	dev-python/requests
	dev-python/service-logging
	dev-python/tenacity
	dev-python/transmission-rpc
"
BDEPEND="${RDEPEND}"
