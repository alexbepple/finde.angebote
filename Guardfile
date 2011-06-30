options = {
    :version => 2, 
    :cli => '--color', 
    :all_after_pass => false,
}

guard 'rspec', options do
  watch(%r{^.*\.rb$}) { "spec" }
end
