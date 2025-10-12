# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=(  python3_13 python3_14 )
inherit distutils-r1 pypi

DESCRIPTION="A Python wrapper for the Discord API"
HOMEPAGE="https://github.com/Rapptz/discord.py"
MY_PN="discord.py"
MY_P="${MY_PN}-${PV}"

#SRC_URI="https://files.pythonhosted.org/packages/source/${MY_PN:0:1}/${MY_PN}/${MY_P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

BDEPEND="
	dev-python/aiohttp
	dev-python/audioop-lts
"
DEPEND="${PYTHON_DEPS}"
RDEPEND="${PYTHON_DEPS}"
