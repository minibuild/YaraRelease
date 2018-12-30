module_type = 'composite'
module_name = 'yara_bundle'

PKG_NAME = 'yara'

if BUILDSYS_TARGET_PLATFORM == 'macosx':
    public_name = '{}-macosx'.format(PKG_NAME)
elif BUILDSYS_TARGET_PLATFORM == 'windows':
    if BUILDSYS_TOOLSET_NAME == 'gcc':
        public_name = '{}-mingw-{}'.format(PKG_NAME, BUILDSYS_TARGET_ARCH)
    elif BUILDSYS_TOOLSET_NAME == 'msvs':
        public_name = '{}-msvs{}-{}'.format(PKG_NAME, BUILDSYS_TOOLSET_VERSION, BUILDSYS_TARGET_ARCH)
if not public_name:
    public_name = '{}-{}-{}'.format(PKG_NAME, BUILDSYS_TARGET_PLATFORM, BUILDSYS_TARGET_ARCH)

composite_spec += [
  '../yara/build/yara',
  '../yara/build/yarac',
]
