# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=(  python3_13 python3_14 )
PYPI_NO_NORMALIZE=1
PYPI_PN="bencode.py"
inherit distutils-r1 pypi

DESCRIPTION="Simple bencode parser for python"
HOMEPAGE="https://github.com/fuzeman/bencode.py"

LICENSE="BitTorrent"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="test"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

BDEPEND="
	>=dev-python/pbr-1.9.0[${PYTHON_USEDEP}]
	>=dev-python/setuptools-17.1.0[${PYTHON_USEDEP}]
"
DEPEND="${PYTHON_DEPS}"
RDEPEND="${PYTHON_DEPS}"

src_prepare() {
	# preliminary fixes for some of the issues reported in https://github.com/fuzeman/bencode.py/issues/21
	eapply "${FILESDIR}/${PN}"_setup_cfg.patch

	# There's still a setuptools QA issue here ("easy_install command is deprecated. Use build and pip and
	# other standards-based tools."). This has been reported to upstream - it should not affect this ebuild
	# at the moment.
	default
}

distutils_enable_tests pytest
