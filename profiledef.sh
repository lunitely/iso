#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="lunitely"
iso_label="LUNITELY_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="Hackrland <contact@hackrland.dev>"
iso_application="Lunitely Install Medium"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="lunitely"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.systemd-boot.esp' 'uefi-x64.systemd-boot.esp'
           'uefi-ia32.systemd-boot.eltorito' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/NetworkManager/dispatcher.d/99-connectivity-change.sh"]="0:0:755"
  ["/usr/bin/fix-repository"]="0:0:755"
  ["/etc/sudoers"]="0:0:750"
  ["/etc/shadow"]="0:0:400"
  ["/lunitely"]="1000:1000:775"
  ["/lunitely/keyboard.conf"]="1000:1000:777"
  ["/root"]="0:0:750"
  ["/root/.gnupg"]="0:0:700"
)
