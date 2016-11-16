==================
metricbeat-formula
==================

Formula for working with Metricbeat

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available states
================

.. contents::
    :local:

``metricbeat``
----------

Install and run Metricbeat

``metricbeat.repo``
-------------------

Setup the Elastic package repo for your OS

``metricbeat.install``
----------------------

Install Metricbeat

``metricbeat.service``
----------------------

Run Metricbeat


Testing
=======

Testing is done with `Test Kitchen <http://kitchen.ci/>`_
for machine setup and `testinfra <https://testinfra.readthedocs.io/en/latest/>`_
for integration tests.

Requirements
------------

* Python
* Ruby
* Docker

::

    pip install -r requirements.txt
    gem install bundler
    bundle install
    bundle exec kitchen test
