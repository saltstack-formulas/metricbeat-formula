include:
  - metricbeat.install

{%- if salt['pillar.get']('metricbeat:config') %}
manage Metricbeat configuration from pillar:
  file.serialize:
    - name: /etc/metricbeat/metricbeat.yml
    - dataset_pillar: metricbeat:config
    - formatter: yaml
    - user: root
    - require:
      - pkg: metricbeat
{%- endif %}
