# jhdc-nameserver-cookbook

Installs `bind` and `bind-utils` packages, uses default Centos caching nameserver config.

## Supported Platforms

* Centos

### jhdc-nameserver::default

Include `jhdc-nameserver` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[jhdc-nameserver::default]"
  ]
}
```

## License and Authors

```text
Copyright 2015 Jeff Hutchison <jeff@jeffhutchison.com>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
