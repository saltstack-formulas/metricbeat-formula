include:
  - metricbeat.install

start Metricbeat service:
  service.running:
    - name: metricbeat
    - enable: True
    - require:
      - pkg: metricbeat
