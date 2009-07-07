# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-profile}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Dollar"]
  s.date = %q{2009-07-07}
  s.email = %q{<ddollar@gmail.com>}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/rack/profile.rb",
     "rack-profile.gemspec",
     "spec/rack-profile_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/ddollar/rack-profile}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{Rack::Profile lets you easily profile your Rack application}
  s.test_files = [
    "spec/rack-profile_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ruby-prof>, ["= 0.7.3"])
    else
      s.add_dependency(%q<ruby-prof>, ["= 0.7.3"])
    end
  else
    s.add_dependency(%q<ruby-prof>, ["= 0.7.3"])
  end
end
