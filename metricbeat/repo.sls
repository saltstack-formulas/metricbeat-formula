ensure apt can handle https transport for metricbeat:
  pkg.installed:
    - name: apt-transport-https

setup metricbeat repo:
  pkgrepo.managed:
    - name: deb https://artifacts.elastic.co/packages/6.x/apt stable main
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
