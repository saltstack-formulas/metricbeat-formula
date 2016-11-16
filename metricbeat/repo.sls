ensure apt can handle https transport for metricbeat:
  pkg.installed:
    - name: apt-transport-https

setup metricbeat repo:
  pkgrepo.managed:
    - name: deb https://artifacts.elastic.co/packages/5.x/apt stable main
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - keyid: D88E42B4
    - keyserver: https://pgp.mit.edu
