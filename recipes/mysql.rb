include_recipe "datadog::dd-agent"

passwords = PerconaPasswords.new(node)

node['datadog']['mysql']['password'] = passwords.datadog_password

package "python-mysql" do
  case node['platform']
  when "centos", "redhat", "fedora", "suse"
    package_name "MySQL-python"
  when "debian", "ubuntu"
    package_name "python-mysqldb"
  end
  action :install
end
datadog_ddmonitor "mysql"
