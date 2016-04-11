================
filebeat-formula
================

A saltstack formula for elastico's filebeat.

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

The pillar data for this formula has a config subtree, which contains the exect
YAML configuration for Filebeat. The top-level item, config, is not used, but all
items below that are.

See the pillar.example for a full example and files/example.yml for documentation.

Available states
================

``filebeat``
------------

This meta-state the filebeat package, and starts the associated filebeat service.

``filebeat.install``
--------------------

Installs the filebeat package.

``filebeat.config``
-------------------

Writes the filebeat.yml configuration file.

``filebeat.service``
--------------------

Manages the filebeat service.
