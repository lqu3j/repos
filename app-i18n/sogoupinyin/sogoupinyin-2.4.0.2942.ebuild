# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=7

inherit unpacker desktop xdg

DESCRIPTION="Sogou Pinyin input method."
HOMEPAGE="http://pinyin.sogou.com/linux/"
SRC_URI="https://ime.sogoucdn.com/dl/index/1608620566/sogoupinyin_2.4.0.2942_amd64.deb"

LICENSE="MIT"
SLOT="0"
RESTRICT="strip"
KEYWORDS="-* ~amd64"
IUSE=""

RDEPEND=">=app-i18n/fcitx-4.2.9[opencc]
	app-i18n/fcitx-qt5
	sys-apps/lsb-release
	dev-qt/qtdeclarative
	dev-qt/qtsvg
	x11-apps/xprop
"

DEPEND=""
BDEPEND=""

S=${WORKDIR}


src_install(){
	insinto /opt/"${PN}"
	doins -r opt/sogoupinyin/*
	fperms +x /opt/"${PN}"/files/bin/{sogou_auto_input_text.sh,sogouimebs-session,sogoupinyin-qimpanel,sogou-fcitx-diag,sogoupinyin-configtool,sogoupinyinService,sogouimebs-diag,sogoupinyinCrashRpt,sogoupinyinService-watchdog}

	insinto /usr/share
	doins -r usr/share/*

	insinto /etc/xdg/autostart
	doins -r etc/xdg/autostart/*

	insinto /usr/lib64/fcitx
	doins -r usr/lib/x86_64-linux-gnu/fcitx/*
}
