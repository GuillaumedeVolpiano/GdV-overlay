# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="jinja2 template renderer for aiohttp.web"
HOMEPAGE="https://github.com/aio-libs/aiohttp-jinja2"
SRC_URI="https://files.pythonhosted.org/packages/source/${P::1}/${PN}/aiohttp-jinja2-${PV}.tar.gz
	-> ${P}.tar.gz"
S="${WORKDIR}/${P}"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/aiohttp
	dev-python/alabaster
	dev-python/coverage
	dev-python/jinja2
	dev-python/pytest
	dev-python/pytest-aiohttp
	dev-python/pytest-cov
	dev-python/yarl
	"
BDEPEND="
	${RDEPEND}
	"
