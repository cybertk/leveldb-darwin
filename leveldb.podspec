Pod::Spec.new do |s|
  s.name         =  'leveldb'
  s.version      =  '1.18'
  s.license      =  'New BSD'
  s.summary      =  'A fast key-value storage library '
  s.description  =  'LevelDB is a fast key-value storage library written at Google that provides an ordered mapping from string keys to string values.'
  s.homepage     =  'https://github.com/cybertk/leveldb-darwin'
  s.authors      =  'The LevelDB Authors'

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'

  s.source       =  { :git => 'https://github.com/google/leveldb.git', :tag => "v#{s.version.to_s}" }

  s.requires_arc = false

  s.compiler_flags = '-DOS_MACOSX', '-DLEVELDB_PLATFORM_POSIX'

  s.preserve_path = 'db', 'port', 'table', 'util'
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/leveldb/"',
  }

  s.source_files = 'db/*.{cc}', 'port/*.{cc}', 'table/*.{cc}', 'util/*.{cc}', 'include/leveldb/*.h'
  s.exclude_files = '**/*_test.cc', 'port/win', 'db/db_bench.cc', 'db/leveldb_main.cc'

end
