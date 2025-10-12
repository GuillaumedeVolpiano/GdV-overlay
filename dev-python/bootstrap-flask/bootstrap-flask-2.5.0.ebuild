# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1
PYPI_PN="bootstrap_flask"

inherit distutils-r1 pypi

DESCRIPTION="collection of Jinja macros for Bootstrap 4 & 5 and Flask"
HOMEPAGE="https://github.com/helloflask/bootstrap-flask"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND=""
BDEPEND="${RDEPEND}"
