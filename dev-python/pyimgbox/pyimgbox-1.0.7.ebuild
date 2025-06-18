# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Python 3.6+ library for uploading images to https://imgbox.com/."
HOMEPAGE="https://codeberg.org/plotski/pyimgbox"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

PATCHES=(
	"${FILESDIR}"/exclude-tests.patch
)

RDEPEND="
	dev-python/beautifulsoup4
	dev-python/httpx
"
BDEPEND="${RDEPEND}"
