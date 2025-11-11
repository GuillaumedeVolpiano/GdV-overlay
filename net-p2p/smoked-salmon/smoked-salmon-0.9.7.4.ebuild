# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="toolkit for collecting, generating, normalizing and sharing video metadata"
HOMEPAGE="https://github.com/smokin-salmon/smoked-salmon"
SRC_URI="https://github.com/smokin-salmon/smoked-salmon/archive/refs/tags/${PV}.tar.gz
	-> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	app-arch/unzip
	dev-python/aiohttp
	dev-python/aiohttp-jinja2
	dev-python/beautifulsoup4
	dev-python/bitstring
	dev-python/click
	dev-python/deluge-client
	dev-python/ffmpeg-python
	dev-python/filetype
	dev-python/httpx
	dev-python/humanfriendly
	dev-python/jinja2
	dev-python/musicbrainzngs
	dev-python/msgspec
	dev-python/pillow
	dev-python/platformdirs
	dev-python/pycambia
	dev-python/pyperclip
	dev-python/qbittorrent-api
	dev-python/ratelimit
	dev-python/rich
	dev-python/requests
	dev-python/send2trash
	dev-python/tqdm
	dev-python/torf
	dev-python/transmission-rpc
	dev-python/unidecode
	media-gfx/oxipng
	media-libs/flac
	media-libs/mutagen
	media-sound/lame
	media-sound/mp3val
	media-sound/sox[flac,png]
	media-video/ffmpeg
	net-misc/curl
"
BDEPEND="${RDEPEND}"

python_install() {
	distutils-r1_python_install
	python_domodule salmon
	python_domodule data
}
