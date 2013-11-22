#
# Cookbook Name:: setup-mongo
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


# Pull the tarball to /tmp:
remote_file "/tmp/hwlegends.tgz" do
  source "https://intere.servebeer.com/hwlegends/hwlegends.tgz"
  mode 00644
end

# Unpack it:
bash "unpack tarball" do
  cwd "/tmp"
  code <<-EOS
    tar xzf hwlegends.tgz
  EOS
end

# import it:
bash "import tarball to mongo" do
  cwd "/tmp"
  code <<-EOS
    mongorestore hwlegends/hwlegends
  EOS
end

bash "link default java" do
  cwd "/usr/lib/jvm"
  code <<-EOS
    if [ ! -e default-java ] ; then
	ln -s java-6-openjdk-amd64 default-java
    fi
  EOS
end

