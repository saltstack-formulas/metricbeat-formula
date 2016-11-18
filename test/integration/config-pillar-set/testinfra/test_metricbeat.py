import testinfra


def test_config_file(File):
    config_file = File('/etc/metricbeat/metricbeat.yml')
    assert config_file.exists
    assert config_file.content_string.startswith('metricbeat')

def test_service_is_running_and_enabled(Service):
    metricbeat = Service('metricbeat')
    assert metricbeat.is_running
    assert metricbeat.is_enabled
