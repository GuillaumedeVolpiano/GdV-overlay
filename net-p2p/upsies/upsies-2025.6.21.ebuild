# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="toolkit for collecting, generating, normalizing and sharing video metadata"
HOMEPAGE="https://codeberg.org/plotski/upsies/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/aiobtclientapi
	dev-python/async-lru
	dev-python/beautifulsoup4
	dev-python/countryguess
	dev-python/guessit
	dev-python/httpx
	dev-python/langcodes
	dev-python/natsort
	dev-python/packaging
	dev-python/prompt-toolkit
	dev-python/pydantic
	dev-python/pyimgbox
	dev-python/pyparsebluray
	dev-python/pyxdg
	dev-python/term-image
	dev-python/torf
	dev-python/unicode
"
BDEPEND="${RDEPEND}"
