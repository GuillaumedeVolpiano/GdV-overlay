# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=poetry

inherit distutils-r1 pypi

DESCRIPTION="Rip your PGS subtitles."
HOMEPAGE="https://github.com/ratoaq2/pgsrip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	dev-python/babelfish
	dev-python/cleanit
	dev-python/click
	dev-python/pysrt
	dev-python/pytesseract
	dev-python/numpy
	dev-python/opencv-python
	dev-python/trakit
	"
