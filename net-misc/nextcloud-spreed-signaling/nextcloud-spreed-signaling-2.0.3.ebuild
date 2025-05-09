# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="A standalone signaling server which can be used for Nextcloud Talk"
HOMEPAGE="https://github.com/strukturag/nextcloud-spreed-signaling"
SRC_URI="https://github.com/strukturag/nextcloud-spreed-signaling/releases/download/v${PV}/${PN}-v${PV}.tar.gz"

S="${WORKDIR}/${PN}-v${PV}"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"

DOCS=( README.md conf/simple.conf )

src_compile() {
	GOARCH= ego build
	mkdir "${S}/tmp"
	make build
}

src_install() {
	dobin bin/signaling
	dodir /etc/signaling
	insinto /etc/signaling
	newins server.conf.in server.conf

}
