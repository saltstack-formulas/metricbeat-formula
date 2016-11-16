import testinfra


def test_service_is_running_and_enabled(Service):
    metricbeat = Service('metricbeat')
    assert metricbeat.is_running
    assert metricbeat.is_enabled
