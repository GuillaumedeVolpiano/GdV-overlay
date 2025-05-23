# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_13 )
DISTUTILS_USE_PEP517=standalone

inherit distutils-r1 pypi

DESCRIPTION="create curse based selection lists"
HOMEPAGE="https://github.com/aisk/pick"
SRC_URI="https://files.pythonhosted.org/packages/source/p/pick/pick-1.6.0.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	dev-python/pytest
	dev-python/mypy
	dev-vcs/pre-commit
	>=dev-python/poetry-core-1.0.0
	"
