# Monitor MySQL
include_recipe "datadog::dd-agent"
package "python-mysqldb"
monitor "mysql"
