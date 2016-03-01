# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "filebeat/map.jinja" import filebeat with context %}

filebeat-pkg:
  pkg.installed:
    - name: {{ filebeat.pkg }}
