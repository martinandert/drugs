require "bundler/gem_tasks"

VERSION_FILE = File.expand_path("../lib/drugs/version.rb", __FILE__)

def read_version
  File.read(VERSION_FILE) =~ /VERSION = "([^"]+)"/
  $1
end

def write_version(version)
  current = File.read(VERSION_FILE)

  File.open VERSION_FILE, 'w' do |file|
    file.write current.gsub(/VERSION = "([^"]+)"/, "VERSION = \"#{version}\"")
  end
end

def increment(version, which)
  v = version.split(".")
  v[which] = v[which].to_i + 1
  v.join(".")
end

def reset(version, which)
  v = version.split '.'
  which.each { |part| v[part] = 0 }
  v.join(".")
end

def create_commit(version)
  puts "New version: #{read_version}"
  "git add '#{VERSION_FILE}' && git commit -m 'Prepare gem release'"
end

namespace :version do
  desc "Increment the patch version"
  task :patch do
    write_version increment(read_version, 2)
    sh create_commit(read_version)
  end

  desc "Increments the minor version and resets the patch"
  task :minor do
    write_version reset(increment(read_version, 1), [2])
    sh create_commit(read_version)
  end

  desc "Increments the major version and resets both minor and patch"
  task :major do
    write_version reset(increment(read_version, 1), [1, 2])
    sh create_commit(read_version)
  end
end
