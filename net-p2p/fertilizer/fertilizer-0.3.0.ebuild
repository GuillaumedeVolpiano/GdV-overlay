# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="fertilizer helps your seeds grow"
HOMEPAGE="https://github.com/moleculekayak/fertilizer"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/bencoder
	dev-python/colorama
	dev-python/requests
	dev-python/flask
	"
BDEPEND="
	${RDEPEND}
	"
