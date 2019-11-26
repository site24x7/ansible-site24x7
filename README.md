Bulk deployment of Site24x7 Linux agent using Ansible
===========

Bulk deployment using Ansible installs Site24x7 Server Monitoring agent on Linux platforms. Please create a Site24x7 account to install the Linux agent using Ansible. Sign Up Now for a Free Trial! 


Supported Platforms 
============

All Linux platforms with Glibc version - 2.5 and above,  including Centos, Debian, Fedora, 
Redhat, Suse, Ubuntu

Params
============

device_key: SITE24X7DEVICEKEY 

Your device Key is available under the Site24x7 "Add Server Monitor" page. Log In and navigate to Home > Monitors > Click on the (+) icon > Linux Server Monitoing. 

Site24x7 device key is unique for your account. Alternate device Key can also be generated from your Site24x7 account under Admin > Developer > Device Key.

proxy: NONE

Proxy server required to connect to the Site24x7 servers. Example : user:password@proxyhost:proxyport


Installation Steps
============
1. Ensure ansible is setup properly in your infrastructure.
2. Download the playbooks "site24x7-install.yml", "site24x7-status.yml" and "site24x7-uninstall.yml" from the "playbooks" folder to your server where ansible is setup.
3. Edit the file and make following changes:
      i. Change the value of "hosts" field with the "hostname" or "groupname" of ansible connected servers where you would like to install the agent.
      ii. Change the value of device_key variable under "vars" field from SITE24X7DEVICEKEY to the actual device key for your site24x7 account. Site24x7 Device key can be obtained from our portal.
      iii. Change the value of "proxy" field from "NONE" to the required value. Do not edit this value if no proxy is required.
4. Save the changes and close the file.
5. Now you can use the following command to execute the playbook and install the agent :
      "ansible-playbook site24x7-install.yml"
6. Use following command to check the status of agents installed in ansible connected servers:
      "ansible-playbook -v site24x7-status.yml
7. View your servers from your Site24x7 account. https://www.site24x7.com/login.html

Related Links
=====
* [Site24x7 Server Monitoring] (https://www.site24x7.com/server-monitoring.html)
* [Site24x7 Signup] (https://www.site24x7.com/signup.html?pack=5&l=en)
* [Site24x7 Help Documentation] (https://www.site24x7.com/help/admin/adding-a-monitor/linux-server-monitoring.html)

License
=======

(The MIT License)

Copyright © 2015, 2016 Site24x7
Terms of Use (http://www.site24x7.com/terms.html)
Privacy Policy (http://www.site24x7.com/privacypolicy.html)
Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons
to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.

