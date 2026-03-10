# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=standalone
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Wrapper package for OpenCV python bindings."
HOMEPAGE="https://github.com/opencv/opencv-python"
SRC_URI="https://github.com/opencv/opencv-python/archive/refs/tags/92.tar.gz -> ${P}.tar.gz"

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

src_unpack() {
    default
    mv "${WORKDIR}/opencv-python-92" "${WORKDIR}/${P}"
	echo 'opencv_version = "4.13.0.92"' > "${WORKDIR}/${P}/cv2/version.py"
	echo 'contrib = False' >> "${WORKDIR}/${P}/cv2/version.py"
	echo 'headless = False' >> "${WORKDIR}/${P}/cv2/version.py"
	echo 'rolling = False' >> "${WORKDIR}/${P}/cv2/version.py"
	echo 'ci_build = False' >> "${WORKDIR}/${P}/cv2/version.py"
}
