Gem::Specification.new do |s|
  s.name        = 'paperclip_s3du'
  s.version     = '0.0.1'
  s.date        = '2013-03-03'
  s.summary     = "Already-uploaded Paperclip"
  s.description = "Paperclip support for already-uploaded-in-s3 files."
  s.authors     = ["Guilherme Vieira"]
  s.email       = 'guilherme@flipstudio.net'
  s.files       = `git ls-files`.split("\n").sort
  s.homepage    = 'https://github.com/flipstudio/s3du'

  s.add_dependency("paperclip", "~> 3.0")
end