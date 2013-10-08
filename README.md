collectd-attribute_driven Cookbook
==================================

Chef cookbook that adds collectd pulgins via node attributes.

Requirements
------------

[collectd-cookbook](https://github.com/coderanger/chef-collectd)

Usage
-----
e.g.
Include `collectd-attribute_driven` in your role's run_list and define attributes

```json
{
  "name":"webserver_role",
  "collectd": {
    "plugins": {
      "processes": {
        "config": {
          "Process": ["nginx"]
        }
      },
      "nginx": {
        "config": {
          "URL": "http://localhost/nginx_status"
        }
      },
      "load": {},
      "swap": {},
      "users": {},
      "memory": {},
      "entropy": {}
    }
  },
  "run_list": [
    "recipe[collectd-attribute_driven]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
* Author:: Holger Amann holger@sauspiel.de

* Copyright:: 2013, Sauspiel GmbH

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

