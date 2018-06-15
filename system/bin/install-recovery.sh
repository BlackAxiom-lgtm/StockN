#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY:21004288:1665b56fd4dd71671dd61dff240cf7585da7590b; then
  applypatch EMMC:/dev/block/platform/13540000.dwmmc0/by-name/BOOT:18546688:a2ea8f1b057093accbbe013c952975fd64a37118 EMMC:/dev/block/platform/13540000.dwmmc0/by-name/RECOVERY 1665b56fd4dd71671dd61dff240cf7585da7590b 21004288 a2ea8f1b057093accbbe013c952975fd64a37118:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
