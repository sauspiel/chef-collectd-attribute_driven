site :opscode

metadata

cookbook 'collectd', git: "https://github.com/sauspiel/chef-collectd"

group :integration do
  cookbook "collectd-attribute_driven_test", :path => "./test/integration/cookbooks/collectd-attribute_driven_test"
end
