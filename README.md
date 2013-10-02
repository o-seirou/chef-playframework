playframework Cookbook
======================
This Cookbook is only target Play! framework 1.x.

Requirements
------------

## Platforms

* Unix

## Cookbooks

* Java

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['playframework']['version']</tt></td>
    <td>String</td>
    <td>Version of Play! framework</td>
    <td><tt>1.2.7</tt></td>
  </tr>
  <tr>
    <td><tt>['playframework']['repo_path']</tt></td>
    <td>String</td>
    <td>
		Path of zip file's dirname on typesafe site.<br>
		eg.
			play-1.2.7.zip's url is: http://downloads.typesafe.com/play/1.2.7/play-1.2.7.zip<br>
			repo_path's value is: play/1.2.7/
	</td>
    <td><tt>play/1.2.7/</tt></td>
  </tr>
</table>

Usage
-----
#### playframework::default

Just include `playframework` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[playframework]"
  ]
}
```

play will installed /usr/local/play .

License and Authors
-------------------
Authors: o-seirou
License: MIT
