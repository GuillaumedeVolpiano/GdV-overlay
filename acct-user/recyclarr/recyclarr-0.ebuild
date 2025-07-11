# Copyright 2020-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="User for recyclarr"
ACCT_USER_HOME=/var/lib/recyclarr
ACCT_USER_ID=540
ACCT_USER_GROUPS=( recyclarr )

acct-user_add_deps
