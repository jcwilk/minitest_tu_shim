Gem::Specification.new do |s|
  s.name             = 'minitest_tu_shim'
  s.rubygems_version = '1.3.6'
  s.version          = '1.3.2'
  s.summary          = "minitest_tu_shim bridges the gap between the small and fast minitest and ruby's huge and slow test/unit."
  s.description      = "minitest_tu_shim bridges the gap between the small and fast minitest and ruby's huge and slow test/unit."
  s.homepage         = 'https://github.com/lumoslabs/minitest_tu_shim'
  s.bindir           = 'bin'
  s.require_paths    = ['lib']
  
  s.add_runtime_dependency 'minitest', ['>= 1.6.0']
end
