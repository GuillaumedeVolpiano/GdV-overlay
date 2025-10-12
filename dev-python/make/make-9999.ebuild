# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 git-r3

DESCRIPTION="Create project layout from jinja2 templates."
HOMEPAGE="https://github.com/fholmer/make"
EGIT_REPO_URI="https://github.com/fholmer/make.git"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS=""

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	dev-python/jinja2
	dev-python/jinja2-time
	"
BDEPEND="
	${RDEPEND}
	"
