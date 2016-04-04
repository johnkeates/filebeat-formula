# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "filebeat/map.jinja" import filebeat with context %}

filebeat-config:
  file.serialize:
    - name: {{ filebeat.configfile }}
    - mode: 644
    - user: root
    - group: root
    - dataset_pillar: filebeat:config
    - formatter: "YAML"
