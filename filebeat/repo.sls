# Install Beats repository
beats_repo_https_apt_support:
  pkg.installed:
    - name: apt-transport-https

beats_repo:
  pkgrepo.managed:
    - humanname: Beats Repo
    - name: deb https://packages.elastic.co/beats/apt stable main
    - file: /etc/apt/sources.list.d/beats.list
    - gpgcheck: 1
    - key_url: https://packages.elasticsearch.org/GPG-KEY-elasticsearch
    - require:
      - pkg: apt-transport-https
    - require_in:
      - pkg: filebeat
