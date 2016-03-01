# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "filebeat/map.jinja" import filebeat with context %}

filebeat-config:
  file.managed:
    - name: {{ filebeat.config }}
    - source: salt://filebeat/files/filebeat.jinja
    - mode: 644
    - user: root
    - group: root
