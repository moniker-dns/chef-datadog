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

# TODO: mysql agent (this needs its own repo - this is a temporary setup)
cookbook_file "/usr/share/datadog/agent/checks.d/mysql.py" do
  source    "mysql.py"
  mode      0755
  action    :create
end

datadog_ddmonitor "mysql"
