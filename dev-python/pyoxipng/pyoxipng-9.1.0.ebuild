# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	anstream@0.6.18
	anstyle-parse@0.2.2
	anstyle-query@1.0.0
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	autocfg@1.1.0
	bitflags@2.4.1
	bitvec@1.0.1
	bumpalo@3.16.0
	bytemuck@1.21.0
	cc@1.0.77
	cfg-if@1.0.0
	clap@4.5.23
	clap_builder@4.5.23
	clap_lex@0.7.4
	colorchoice@1.0.0
	crc32fast@1.4.2
	crossbeam-channel@0.5.14
	crossbeam-deque@0.8.2
	crossbeam-epoch@0.9.13
	crossbeam-utils@0.8.21
	either@1.8.0
	env_filter@0.1.3
	env_logger@0.11.6
	equivalent@1.0.1
	errno@0.3.5
	filetime@0.2.25
	funty@2.0.0
	glob@0.3.1
	hashbrown@0.15.2
	heck@0.5.0
	indexmap@2.7.0
	indoc@2.0.5
	is_terminal_polyfill@1.70.1
	libc@0.2.149
	libdeflate-sys@1.23.0
	libdeflater@1.23.0
	libredox@0.1.3
	linux-raw-sys@0.4.10
	lockfree-object-pool@0.1.6
	log@0.4.22
	memoffset@0.7.1
	memoffset@0.9.0
	once_cell@1.20.2
	oxipng@9.1.3
	portable-atomic@1.10.0
	proc-macro2@1.0.92
	pyo3-build-config@0.23.3
	pyo3-ffi@0.23.3
	pyo3-macros-backend@0.23.3
	pyo3-macros@0.23.3
	pyo3@0.23.3
	quote@1.0.38
	radium@0.7.0
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.8
	rgb@0.8.50
	rustc-hash@2.1.0
	rustix@0.38.20
	scopeguard@1.1.0
	simd-adler32@0.3.7
	strsim@0.11.1
	syn@2.0.93
	tap@1.0.1
	target-lexicon@0.12.16
	terminal_size@0.4.1
	unicode-ident@1.0.5
	unindent@0.2.3
	utf8parse@0.2.1
	windows-sys@0.48.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	wyz@0.5.1
	zopfli@0.8.1
"

PYTHON_COMPAT=(  python3_13 python3_14 )
DISTUTILS_USE_PEP517=maturin

inherit cargo distutils-r1 pypi

DESCRIPTION="Python wrapper for multithreaded .png image file optimizer oxipng"
HOMEPAGE="https://github.com/nfrasser/pyoxipng"

SRC_URI="
	https://files.pythonhosted.org/packages/source/${PN:0:1}/${PN}/${P}.tar.gz
	$(cargo_crate_uris ${CARGO_CRATES_URIS})
"
LICENSE="GPL-3"

SLOT="0"
KEYWORDS="~amd64"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"

RDEPEND="
	${PYTHON_DEPS}
	"
BDEPEND="
	${RDEPEND}
	"

src_unpack() {
	  cargo_src_unpack
	}
