#!/bin/sh -ex

buildinstall() {
	P=$(pwd)
	cd $1	
	
	makepkg --ignorearch --syncdeps --clean --cleanbuild --force --noconfirm --install
	
	# in case there's nothing to copy, don't fail
	cp -n *.pkg.tar.xz ../pkg || true
	cd ..

	
}
build() {
	P=$(pwd)
	cd $1
	
		
	makepkg --ignorearch --syncdeps --clean --cleanbuild --force --noconfirm 
	
	# in case there's nothing to copy, don't fail
	cp -n *.pkg.tar.xz ../pkg || true
	cd ..
}

mkdir -p build

cd build
mkdir -p pkg
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/mauikit-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-phone-components-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-phonebook-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-dialer-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-camera-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-angelfish-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/qmlkonsole-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/buho-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/spacebear-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/nota-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/voicememo-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/calindori-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-nano-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/index-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/vvave-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/plasma-pix-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/kwin-git
git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/libkscreen-git
#git clone https://gitlab.manjaro.org/manjaro-arm/packages/community/plasma-mobile/telepathy-kde-common-internals-git



buildinstall mauikit-git
buildinstall plasma-phone-components-git/
build plasma-phonebook-git/
build plasma-dialer-git/
build plasma-camera-git/
build plasma-angelfish-git/
build qmlkonsole-git/
build spacebear-git/
build voicememo-git/
build calindori-git/
build plasma-nano-git/
build plasma-pix-git/
build index-git/
build vvave-git/
build nota-git/
build buho-git/
build kwin-git
build libkscreen-git
#build telepathy-kde-common-internals-git
