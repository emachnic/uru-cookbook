uru Cookbook
============

This cookbook installs Uru, which is a cross-platform Ruby switcher. Uru runs
on Windows, Mac, or Linux.

## CI

[![Build Status](https://travis-ci.org/emachnic/uru-cookbook.png)](https://travis-ci.org/emachnic/uru-cookbook?branch=master)

Requirements
------------

Attributes
----------
#### uru::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Acceptable Values</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['uru']['username']</tt></td>
    <td>String</td>
    <td>Username that Uru will run under</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td><tt>['uru']['action']</tt></td>
    <td>String</td>
    <td>Way to run the cookbook.</td>
    <td><tt>install</tt>, <tt>upgrade</tt></td>
    <td><tt>install</tt></td>
  </tr>
  <tr>
    <td><tt>['uru']['version']</tt></td>
    <td>String</td>
    <td>Version of Uru to install</td>
    <td></td>
    <td><tt>0.6.4</tt></td>
  </tr>
  <tr>
    <td><tt>['uru']['src_url']</tt></td>
    <td>String</td>
    <td>Base URL for Uru downloads</td>
    <td></td>
    <td><tt>http://downloads.sourceforge.net/project/urubinaries/uru/#{node['uru']['version']}/</tt></td>
  </tr>
  <tr>
    <td><tt>['uru']['src_filename']</tt></td>
    <td>String</td>
    <td>Filename of the Uru binary package</td>
    <td></td>
    <td><tt>uru-#{node['uru']['version']}-#{platform}-x86.#{extension}</tt></td>
  </tr>
</table>

#### uru::unix
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Acceptable Values</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['uru']['unix']['extract_path']</tt></td>
    <td>String</td>
    <td>Directory in your $PATH to extract uru_rt executable</td>
    <td></td>
    <td><tt>/home/#{node['uru']['username']}/bin</tt></td>
  </tr>
</table>

Usage
-----
Just include `uru` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[uru]"
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
Authors: Evan Machnic
