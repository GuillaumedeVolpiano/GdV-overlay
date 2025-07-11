# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd

DESCRIPTION="Command-line application that will synchronize settings from TRaSH guides."
HOMEPAGE="https://www.recyclarr.dev"

SRC_URI="
	amd64? (
		elibc_glibc? (
			https://github.com/recyclarr/recyclarr/releases/download/v${PV}/recyclarr-linux-x64.tar.xz
		)
		elibc_musl? (
			https://github.com/recyclarr/recyclarr/releases/download/v${PV}/recyclarr-linux-musl-x64.tar.xz
		)
	)
	arm? (
		elibc_glibc? (
			https://github.com/recyclarr/recyclarr/releases/download/v${PV}/recyclarr-linux-arm.tar.xz
		)
	)
	arm64? (
		elibc_glibc? (
			https://github.com/recyclarr/recyclarr/releases/download/v${PV}/recyclarr-linux-arm64.tar.xz
		)
		elibc_musl? (
			https://github.com/recyclarr/recyclarr/releases/download/v${PV}/recyclarr-linux-musl-arm64.tar.xz
		)
	)
"
S="${WORKDIR}/"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="bindist strip test"

RDEPEND="
	acct-group/recyclarr
	acct-user/recyclarr
	dev-vcs/git
"

QA_PREBUILT="*"

src_prepare() {
	default

	# https://github.com/dotnet/runtime/issues/57784
	find . -type f -iname libcoreclrtraceptprovider.so -delete || die
}

src_install() {
	newinitd "${FILESDIR}/recyclarr.init-r2" recyclarr

	keepdir /var/lib/recyclarr
	fowners -R recyclarr:recyclarr /var/lib/recyclarr

	insinto /etc/logrotate.d
	insopts -m0644 -o root -g root
	newins "${FILESDIR}/recyclarr.logrotate" recyclarr

	dodir  "/opt/recyclarr"
	cp -R "${S}/." "${D}/opt/recyclarr" || die "Install failed!"

	systemd_newunit "${FILESDIR}/recyclarr.service-r1" "recyclarr.service"
	systemd_newunit "${FILESDIR}/recyclarr.service-r1" "recyclarr@.service"
}
