# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=standalone
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Wrapper package for OpenCV python bindings."
HOMEPAGE="https://github.com/opencv/opencv-python"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	dev-python/scikit-build
	"
