# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="Python wrapper for Radarr and Sonarr APIs"
HOMEPAGE="https://github.com/Kometa-Team/ArrAPI"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	dev-python/requests
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	"
