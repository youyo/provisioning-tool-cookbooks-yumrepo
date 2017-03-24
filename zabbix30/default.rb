#

if node[:platform] == "redhat"

  case node[:platform_version]
  when /^6/

    rpm_package_from_url 'http://repo.zabbix.com/zabbix/3.0/rhel/6/x86_64/zabbix-release-3.0-1.el6.noarch.rpm' do
      repo 'zabbix'
    end

  when /^7/

    rpm_package_from_url 'http://repo.zabbix.com/zabbix/3.0/rhel/7/x86_64/zabbix-release-3.0-1.el7.noarch.rpm' do
      repo 'zabbix'
    end

  end

elsif node[:platform] == "amazon"

  rpm_package_from_url 'http://repo.zabbix.com/zabbix/3.0/rhel/6/x86_64/zabbix-release-3.0-1.el6.noarch.rpm' do
    repo 'zabbix'
  end

end
