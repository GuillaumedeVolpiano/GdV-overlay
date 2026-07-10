# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Janus WebRTC Server"
HOMEPAGE="https://janus.conf.meetecho.com/"
SRC_URI="https://github.com/meetecho/janus-gateway/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

inherit autotools

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="acct-user/janus
acct-group/janus
dev-libs/jansson
dev-libs/libconfig
net-libs/libnice
net-libs/libmicrohttpd
media-libs/opus
media-libs/libogg
net-libs/libwebsockets[client,libuv,lejp]
net-libs/usrsctp
net-libs/libsrtp:2"
RDEPEND="${DEPEND}"
BDEPEND=""
IUSE="static"

src_prepare() {
	eautoreconf
	eapply_user
}

src_configure(){
	econf --prefix=/usr \
		--sysconfdir=/etc \
		--runstatedir=/run \
		--enable-rest \
		--enable-turn-rest-api \
		--disable-post-processing \
		--enable-json-logger \
		--disable-plugin-lua \
		--disable-plugin-duktape \
		--disable-mqtt \
		--disable-docs \
		$(use_enable static) \
		--enable-sample-event-handler \
		--enable-aes-gcm
		--disable-plugin-sip
		--disable-rabbitmq
		--disable-nanomsg
}

src_install() {
	emake DESTDIR="${D}" install
	newconfd "${FILESDIR}/${PN}.confd" ${PN}
	newinitd "${FILESDIR}/${PN}.initd" ${PN}
}
