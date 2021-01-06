# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

DESCRIPTION="Sogou Pinyin input method."
HOMEPAGE="http://pinyin.sogou.com/linux/"
SRC_URI="http://cdn2.ime.sogou.com/dl/index/1605612770/sogoupinyin_2.4.0.2732_amd64.deb"

LICENSE="MIT"
SLOT="0"
KEYWORDS="-* ~amd64"
IUSE=""
RDEPEND=">=app-i18n/fcitx-4.2.9[opencc]
app-i18n/fcitx-qt5
sys-apps/lsb-release
dev-qt/qtdeclarative
dev-qt/qtsvg
x11-apps/xprop"

DEPEND=""
BDEPEND=""

S=${WORKDIR}


src_install(){
	insinto /opt/"${PN}"
	doins -r opt/sogoupinyin/*

	insinto /usr/share
	doins -r usr/share/*

	insinto /etc/xdg/autostart
	doins -r etc/xdg/autostart/*

	insinto /usr/lib64
	doins -r usr/lib/x86_64-linux-gnu/fcitx/*
}
