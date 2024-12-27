#!/bin/bash

winesapos_distro_detected=$(grep -P '^ID=' /etc/os-release | cut -d= -f2)
export \
  WINESAPOS_IMAGE_TYPE="${WINESAPOS_IMAGE_TYPE:-performance}" \
  WINESAPOS_INSTALL_DIR="${WINESAPOS_INSTALL_DIR:-/winesapos}" \
  WINESAPOS_DISTRO="${WINESAPOS_DISTRO:-arch}" \
  WINESAPOS_DISTRO_DETECTED="${winesapos_distro_detected}" \
  WINESAPOS_ENABLE_TESTING_REPO="${WINESAPOS_ENABLE_TESTING_REPO:-false}" \
  WINESAPOS_DE="${WINESAPOS_DE:-plasma}" \
  WINESAPOS_ENCRYPT="${WINESAPOS_ENCRYPT:-false}" \
  WINESAPOS_ENCRYPT_PASSWORD="${WINESAPOS_ENCRYPT_PASSWORD:-password}" \
  WINESAPOS_LOCALE="${WINESAPOS_LOCALE:-en_US.UTF-8 UTF-8}" \
  WINESAPOS_CPU_MITIGATIONS="${WINESAPOS_CPU_MITIGATIONS:-false}" \
  WINESAPOS_DISABLE_KERNEL_UPDATES="${WINESAPOS_DISABLE_KERNEL_UPDATES:-false}" \
  WINESAPOS_APPARMOR="${WINESAPOS_APPARMOR:-false}" \
  WINESAPOS_SUDO_NO_PASSWORD="${WINESAPOS_SUDO_NO_PASSWORD:-true}" \
  WINESAPOS_DISABLE_KWALLET="${WINESAPOS_DISABLE_KWALLET:-true}" \
  WINESAPOS_ENABLE_KLIPPER="${WINESAPOS_ENABLE_KLIPPER:-true}" \
  WINESAPOS_INSTALL_GAMING_TOOLS="${WINESAPOS_INSTALL_GAMING_TOOLS:-true}" \
  WINESAPOS_INSTALL_PRODUCTIVITY_TOOLS="${WINESAPOS_INSTALL_PRODUCTIVITY_TOOLS:-true}" \
  WINESAPOS_DEVICE="${WINESAPOS_DEVICE:-vda}" \
  WINESAPOS_PARTITION_TABLE="${WINESAPOS_PARTITION_TABLE:-gpt}" \
  WINESAPOS_ENABLE_PORTABLE_STORAGE="${WINESAPOS_ENABLE_PORTABLE_STORAGE:-true}" \
  WINESAPOS_BUILD_IN_VM_ONLY="${WINESAPOS_BUILD_IN_VM_ONLY:-true}" \
  WINESAPOS_BUILD_CHROOT_ONLY="${WINESAPOS_BUILD_CHROOT_ONLY:-false}" \
  WINESAPOS_USER_NAME="${WINESAPOS_USER_NAME:-winesap}" \
  WINESAPOS_WAYLAND_ENABLE="${WINESAPOS_WAYLAND_ENABLE:-yes}" \
  WINESAPOS_SINGLE_MIRROR="${WINESAPOS_SINGLE_MIRROR:-false}" \
  WINESAPOS_SINGLE_MIRROR_URL="${WINESAPOS_SINGLE_MIRROR_URL:-http://ohioix.mm.fcix.net/archlinux}" \
  WINESAPOS_BOOTLOADER="${WINESAPOS_BOOTLOADER:-grub}" \
  CMD_PACMAN_INSTALL=(/usr/bin/pacman --noconfirm -S --needed) \
  CMD_AUR_INSTALL=(sudo -u winesap yay --noconfirm -S --removemake) \
  CMD_FLATPAK_INSTALL=(flatpak install -y --noninteractive)
export \
  DEVICE="/dev/${WINESAPOS_DEVICE}"
