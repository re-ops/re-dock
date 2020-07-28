# Intro

Common docker-compose setup for re-ops projects, it includes:

  * Elasticsearch
  * Kibana
  * Logstash
  * Grafana
  * Mosquitto (for re-thing)


Different stack can be enabled for different use cases.

# Usage

To setup up an entire ELK stack:

```bash
$ sudo docker-compose up
```

To setup up Grafana and Elasticsearch:

```bash
$ sudo docker-compose up -f grafana.yml
```

To setup up only Elasticsearch:

```bash
$ sudo docker-compose up -f elasticsearch.yml
```

To setup up mosquitto

```bash
# Generate passwd file
$ docker run -it -v `pwd`/scripts/:/tmp/scripts eclipse-mosquitto /tmp/scripts/passwd.sh
# Run the service
$ docker run -it -p 1883:1883 -p 9001:9001 eclipse-mosquitto
```

# Copyright and license

Copyright [2020] [Ronen Narkis]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

  [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
