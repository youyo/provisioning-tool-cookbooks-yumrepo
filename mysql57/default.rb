#

if node[:platform] == "redhat"

  case node[:platform_version]
  when /^6/
    rpm_package_from_url 'https://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm' do
      repo 'mysql57-community'
    end

  when /^7/
    rpm_package_from_url 'https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm' do
      repo 'mysql57-community'
    end

  end

elsif node[:platform] == "amazon"

  rpm_package_from_url 'https://dev.mysql.com/get/mysql57-community-release-el6-9.noarch.rpm' do
    repo 'mysql57-community'
  end

end
