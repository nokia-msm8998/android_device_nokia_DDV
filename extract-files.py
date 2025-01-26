#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

import extract_utils.tools
extract_utils.tools.DEFAULT_PATCHELF_VERSION = '0_9'

namespace_imports = [
    'device/nokia/DDV',
    'hardware/qcom-caf/msm8998',
    'vendor/nokia/msm8998-common',
]

blob_fixups: blob_fixups_user_type = {
    # Resolve missing symbol "_ZN7android8hardware7details17gBnConstructorMapE"
    ('vendor/lib/vendor.sw.swfingerprint@1.0.so', 'vendor/lib64/vendor.sw.swfingerprint@1.0.so'): blob_fixup()
	.replace_needed('libhidlbase.so', 'libhidlbase-v32.so'),
    # Resolve missing symbol "__android_log_print"
    'vendor/lib64/hw/cdfinger.fingerprint.sdm660.so': blob_fixup()
	.add_needed('liblog.so'),
    ('vendor/lib/libmmcamera_faceproc.so', 'vendor/lib/libmmcamera_faceproc2.so'): blob_fixup()
        .clear_symbol_version('__aeabi_memcpy')
        .clear_symbol_version('__aeabi_memset')
        .clear_symbol_version('__gnu_Unwind_Find_exidx'),
}  # fmt: skip


module = ExtractUtilsModule(
    'DDV',
    'nokia',
    blob_fixups=blob_fixups,
    namespace_imports=namespace_imports,
    add_firmware_proprietary_file=True,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(
        module, 'msm8998-common', module.vendor
    )
    utils.run()
