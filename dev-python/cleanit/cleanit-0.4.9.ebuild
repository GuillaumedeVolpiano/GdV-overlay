# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=poetry

inherit distutils-r1 pypi

DESCRIPTION="Subtitles extremely clean"
HOMEPAGE="https://github.com/ratoaq2/cleanit"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	dev-python/appdirs
	dev-python/babelfish
	dev-python/chardet
	dev-python/click
	dev-python/jsonschema
	dev-python/pysrt
	dev-python/pyyaml
	"
