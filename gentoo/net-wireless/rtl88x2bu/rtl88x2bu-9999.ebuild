# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit git-r3 linux-info linux-mod

DESCRIPTION="Driver for AC1200 (801.11ac) Wireless Dual-Band USB Adapter"
HOMEPAGE="https://github.com/kolki1973/rtl88x2bu"
EGIT_REPO_URI="https://github.com/kolki1973/rtl88x2bu.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	set_arch_to_kernel
	KSRC="${KV_DIR}" KVER="${KV_FULL}" emake
}

src_install() {
	insinto "/lib/modules/${KV_FULL}/drivers/net/wireless/"
	doins 88x2bu.ko
}

#pkg_postinst() {
#	linux-mod_pkg_postinst
#}
