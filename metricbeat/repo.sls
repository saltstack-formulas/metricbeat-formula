{% set major_version = 5 %}
{%- if salt['pillar.get']('metricbeat:major_version') %}
  {% set major_version = salt['pillar.get']('metricbeat:major_version') | int %}
{%- endif %}

{%- if grains.get('os_family') == 'Debian' %}
ensure apt can handle https transport for metricbeat:
  pkg.installed:
    - name: apt-transport-https
{% endif %}

setup metricbeat repo:
  pkgrepo.managed:
{%- if grains.get('os_family') == 'Debian' %}
    - name: deb https://artifacts.elastic.co/packages/{{ major_version }}.x/apt stable main
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
{%- elif grains['os_family'] == 'RedHat' %}
    - name: elasticsearch
    - baseurl: https://artifacts.elastic.co/packages/{{ major_version }}.x/yum
    - enabled: 1
    - gpgcheck: 1
    - gpgkey: http://artifacts.elastic.co/GPG-KEY-elasticsearch
{%- endif %}