uru Cookbook
============

This cookbook installs Uru, which is a cross-platform Ruby switcher. Uru runs
on Windows, Mac, or Linux.

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
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['uru']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
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
