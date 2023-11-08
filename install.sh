#!/bin/bash

case `uname -m` in aarch64|arm64) ARCH="arm64";; x86_64|amd64) ARCH="amd64";; *) ARCH="";; esac
[ -n "$ARCH" ] || exit 1

Type="${1:-StatClient}"
[ "${Type}" != "StatClient" ] && [ "${Type}" != "StatServer" ] && exit 1

URL="https://github.com/MoeClub/Stat/raw/main"
StatDir="/etc/stat"

systemctl stop "${Type}.service" >/dev/null 2>&1
systemctl disable "${Type}.service" >/dev/null 2>&1
rm -rf "${StatDir}"

mkdir -p "${StatDir}"
wget --no-check-certificate -4 -qO "${StatDir}/${Type}" "${URL}/${Type}/${ARCH}/linux/${Type}"
wget --no-check-certificate -4 -qO "${StatDir}/${Type}.service" "${URL}/${Type}/${Type}.service"
[ "${Type}" == "StatServer" ] && wget --no-check-certificate -4 -qO "${StatDir}/index.html" "${URL}/${Type}/index.html"

chmod -R 777 "${StatDir}"

ln -sf "${StatDir}/${Type}.service" "/etc/systemd/system/${Type}.service"

systemctl daemon-reload >/dev/null 2>&1
systemctl enable "${Type}.service" >/dev/null 2>&1
systemctl start "${Type}.service" >/dev/null 2>&1
# systemctl status "${Type}.service"


