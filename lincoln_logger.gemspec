Gem::Specification.new do |s|
  s.name        = 'lincoln_logger'
  s.version     = '1.0.0'
  s.date        = '2015-08-10'
  s.summary     = "Because Logger isn't simple enough"
  s.description = "It makes Lincoln Logs."
  s.authors     = ["Blake Lucchesi", "Courtland Caldwell"]
  s.email       = 'courtland@mattermark.com'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage    =
      'https://github.com/caldwecr/lincoln_logger'
  s.license     = "MIT"
end