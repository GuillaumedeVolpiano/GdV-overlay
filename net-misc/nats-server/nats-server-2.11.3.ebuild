# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module systemd

DESCRIPTION="A high Performance NATS Server written in GoLang"
HOMEPAGE="https://nats.io"
SRC_URI="https://github.com/nats-io/nats-server/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
		 https://github.com/GuillaumedeVolpiano/GdV-overlay/releases/download/${P}/${P}-deps.tar.xz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DOCS=( README.md conf/simple.conf )

src_compile() {
	GOARCH= ego build
}

src_install() {
	dobin nats-server
	einstalldocs
	systemd_dounit util/*.service
}
