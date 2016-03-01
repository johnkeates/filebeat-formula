# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "filebeat/map.jinja" import filebeat with context %}

filebeat-name:
  service.running:
    - name: {{ filebeat.service.name }}
    - enable: True
