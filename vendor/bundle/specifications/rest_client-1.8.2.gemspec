# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "rest_client"
  s.version = "1.8.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["REST Client Team"]
  s.date = "2014-11-17"
  s.description = "Same as rest-client, but removes mime-types dependency. -- A simple HTTP and REST client for Ruby, inspired by the Sinatra microframework style of specifying actions: get, put, post, delete."
  s.email = "rest.client@librelist.com"
  s.extra_rdoc_files = ["README.rdoc", "history.md"]
  s.files = ["README.rdoc", "history.md"]
  s.homepage = "http://github.com/treeder/rest_client"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "2.0.14"
  s.summary = "Simple HTTP and REST client for Ruby, inspired by microframework syntax for specifying actions."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<netrc>, ["~> 0.7.7"])
      s.add_development_dependency(%q<webmock>, ["~> 1.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.4"])
      s.add_development_dependency(%q<rdoc>, [">= 2.4.2"])
    else
      s.add_dependency(%q<netrc>, ["~> 0.7.7"])
      s.add_dependency(%q<webmock>, ["~> 1.4"])
      s.add_dependency(%q<rspec>, ["~> 2.4"])
      s.add_dependency(%q<rdoc>, [">= 2.4.2"])
    end
  else
    s.add_dependency(%q<netrc>, ["~> 0.7.7"])
    s.add_dependency(%q<webmock>, ["~> 1.4"])
    s.add_dependency(%q<rspec>, ["~> 2.4"])
    s.add_dependency(%q<rdoc>, [">= 2.4.2"])
  end
end
