# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="generate waveform data and render waveform images from audio files"
HOMEPAGE="https://github.com/bbc/audiowaveform"
SRC_URI="https://github.com/bbc/audiowaveform/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

#PATCHES=(
#	"${FILESDIR}"/audiowaveform-1.10.3-googletests.patch
#	)

MYCMAKEARGS="-DENABLE_TESTS=0"

DEPEND="
		dev-build/cmake
		media-libs/libsndfile
		media-libs/libmad
		media-libs/libid3tag
		media-libs/gd
		dev-libs/boost
		dev-cpp/gtest
		"
RDEPEND="${DEPEND}"
BDEPEND=""
