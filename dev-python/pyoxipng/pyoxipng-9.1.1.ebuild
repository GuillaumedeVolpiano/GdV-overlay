# Copyright 2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CRATES="
	anstream@0.6.20
	anstyle@1.0.11
	anstyle-parse@0.2.7
	anstyle-query@1.1.4
	anstyle-wincon@3.0.10
	autocfg@1.5.0
	bitflags@2.9.2
	bitvec@1.0.1
	bumpalo@3.19.0
	bytemuck@1.23.2
	cc@1.2.33
	cfg-if@1.0.3
	clap@4.5.45
	clap_builder@4.5.44
	clap_lex@0.7.5
	colorchoice@1.0.4
	crc32fast@1.5.0
	crossbeam-channel@0.5.15
	crossbeam-deque@0.8.6
	crossbeam-epoch@0.9.18
	crossbeam-utils@0.8.21
	either@1.15.0
	env_filter@0.1.3
	env_logger@0.11.8
	equivalent@1.0.2
	errno@0.3.13
	filetime@0.2.26
	funty@2.0.0
	glob@0.3.3
	hashbrown@0.15.5
	heck@0.5.0
	indexmap@2.10.0
	indoc@2.0.6
	is_terminal_polyfill@1.70.1
	libc@0.2.175
	libdeflate-sys@1.24.0
	libdeflater@1.24.0
	libredox@0.1.9
	linux-raw-sys@0.9.4
	log@0.4.27
	memoffset@0.9.1
	once_cell@1.21.3
	once_cell_polyfill@1.70.1
	oxipng@9.1.5
	portable-atomic@1.11.1
	proc-macro2@1.0.101
	pyo3@0.25.1
	pyo3-build-config@0.25.1
	pyo3-ffi@0.25.1
	pyo3-macros@0.25.1
	pyo3-macros-backend@0.25.1
	quote@1.0.40
	radium@0.7.0
	rayon@1.11.0
	rayon-core@1.13.0
	redox_syscall@0.5.17
	rgb@0.8.52
	rustc-hash@2.1.1
	rustix@1.0.8
	shlex@1.3.0
	simd-adler32@0.3.7
	strsim@0.11.1
	syn@2.0.106
	tap@1.0.1
	target-lexicon@0.13.2
	terminal_size@0.4.3
	unicode-ident@1.0.18
	unindent@0.2.4
	utf8parse@0.2.2
	windows-link@0.1.3
	windows-sys@0.60.2
	windows-targets@0.53.3
	windows_aarch64_gnullvm@0.53.0
	windows_aarch64_msvc@0.53.0
	windows_i686_gnu@0.53.0
	windows_i686_gnullvm@0.53.0
	windows_i686_msvc@0.53.0
	windows_x86_64_gnu@0.53.0
	windows_x86_64_gnullvm@0.53.0
	windows_x86_64_msvc@0.53.0
	wyz@0.5.1
	zopfli@0.8.2
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
