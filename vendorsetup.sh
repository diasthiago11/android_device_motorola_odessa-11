deviceDir=$(gettop)/device/motorola/odessa

# Moto Cam
git clone https://gitlab.com/NemesisDevelopers/moto-camera/motorola_camera2_whitney.git -b eleven-arm64 packages/apps/MotCamera2

git clone https://gitlab.com/NemesisDevelopers/moto-camera/motorola_camera2_overlay.git -b ten packages/apps/MotCamera2-overlay

git clone https://gitlab.com/NemesisDevelopers/motorola/motorola_motosignatureapp.git -b eleven packages/apps/MotoSignatureApp

# Removals for jemmaloc
rm -rf external/zlib-ng
rm -rf external/zlib
rm -rf external/jemalloc_new

# ProtonAOSP clones
git clone https://github.com/ProtonAOSP/android_external_jemalloc_new.git -b rvc external/jemalloc_new

git clone https://github.com/diasthiago11/android_external_zlib.git -b lineage-18.1 external/zlib

git clone https://github.com/ProtonAOSP/android_external_zlib-ng.git -b rvc external/zlib-ng

# apply patches
${deviceDir}/applyPatches.sh ${deviceDir}/patches