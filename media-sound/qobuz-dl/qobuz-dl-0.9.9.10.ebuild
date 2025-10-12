# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="Search, explore and download Lossless and Hi-Res music from Qobuz."
HOMEPAGE="https://github.com/vitiko98/qobuz-dl"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/pathvalidate
	dev-python/requests
	media-libs/mutagen
	dev-python/tqdm
	=dev-python/pick-1.6.0
	dev-python/beautifulsoup4
	dev-python/colorama
	"
BDEPEND="${RDEPEND}"
