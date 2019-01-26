#!/bin/bash

echo "======================"
echo "Modifying setup.py"
echo "======================"

PYPKG_NAME="kicad-stackup-editor"
VSTRING=$(python3 packaging/gsuf/gsuf3.py --main-branch master --no-hash)
echo "VSTRING: ${VSTRING}"
sed -r -e "s/( *)version =/\1version = \"${VSTRING}\",/" ./packaging/setup.py.in > setup.py

echo "======================"
echo "Modifying stdeb.cfg"
echo "======================"

DEB_VERSION=$( cat ./packaging/deb-version )
LSB_RELEASE=$( lsb_release -cs )
sed -e "s/Debian-Version:/Debian-Version: ${DEB_VERSION}/" ./packaging/stdeb.cfg.in | sed -e "s/suite:/suite: ${LSB_RELEASE}/" > ./stdeb.cfg

echo "======================"
echo "Building package"
echo "======================"

rm -rf deb_dist
python3 ./setup.py --command-packages=stdeb.command sdist_dsc --suite="${LSB_RELEASE}"

NAME=$( echo "${PYPKG_NAME}" | sed -e "s/_/-/")
pushd ./deb_dist/${NAME}-${VSTRING}
debuild
popd
