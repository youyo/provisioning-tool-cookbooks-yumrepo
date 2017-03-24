#

if node[:platform] == "redhat" or node[:platform] == "amazon"
  package 'epel-release'
  enable_repo 'epel'
end
