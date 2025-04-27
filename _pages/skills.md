---
title: Skills
permalink: /skills/
layout: layouts/double-column.njk
languages-databases:
- { name: Python, icon: python }
- { name: JavaScript, icon: javascript }
- { name: Java, icon: oracle }
- { name: PostgreSQL, icon: postgresql }
- { name: MySQL, icon: mysql }
- { name: SQLite, icon: sqlite }
- { name: MongoDB, icon: mongodb }
data-science-artificial-intelligence:
- { name: Keras, icon: keras }
- { name: pandas, icon: pandas }
- { name: Scikit Learn, icon: scikitlearn }
- { name: Matplotlib, icon: pypi }
- { name: Seaborn, icon: pypi }
computer-vision-computer-graphics:
- { name: OpenCV, icon: opencv }
- { name: D3.js, icon: d3dotjs }
- { name: Processing (Java), icon: processingfoundation }
- { name: OpenGL, icon: opengl }
web-frameworks:
- { name: Node.js, icon: nodedotjs }
- { name: React, icon: react }
- { name: Flask, icon: flask }
containerization-cicd-virtualization:
- { name: Docker, icon: docker }
- { name: podman, icon: podman }
- { name: Github Actions, icon: githubactions }
- { name: Gitlab CI, icon: gitlab }
- { name: Proxmox, icon: proxmox }
- { name: VMware, icon: vmware }
high-performance-computing:
- { name: SLURM, icon: linux }
- { name: Modules, icon: linux }
- { name: Singularity, icon: linuxcontainers }
- { name: Jupyterlab, icon: jupyter }
- { name: CUDA, icon: nvidia }
networking:
- { name: Palo Alto, icon: paloaltonetworks }
- { name: Aruba, icon: hp }
- { name: pfSense, icon: pfsense }
- { name: OPNsense, icon: opnsense }
- { name: openWrt, icon: openwrt }
- { name: Wireguard, icon: wireguard }
storage:
- { name: OpenZFS, icon: openzfs }
- { name: NetApp, icon: netapp }
- { name: Dell, icon: dell }
- { name: HP Enterprise, icon: hp }
- { name: TrueNAS, icon: truenas }
linux-administration-virtual-desktop-infrastructure:
- { name: Ansible, icon: ansible }
- { name: Apache Guacamole, icon: apacheguacamole }
- { name: Debian, icon: debian }
- { name: Redhat, icon: redhat }
---

### Hi, I'm [Jennifer Adorno](https://jadorno.com) 👋

I am a jack of many trades and work as a researcher in Ubiquitous Sensing, Accessibility and Artificial Intelligence. I also do Software Engineering, DevOps, IT, and VDI work on the side. I work on problems like starting research clusters, creating on-prem virtual desktop (VDI) environments, and deploying AI-capable web/mobile apps.

##### Languages & Databases

{% for entry in languages-databases %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Data Science & Artificial Intelligence  

{% for entry in data-science-artificial-intelligence %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Computer Vision & Computer Graphics

{% for entry in computer-vision-computer-graphics %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Web Frameworks 

{% for entry in web-frameworks %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Containerization, CI/CD & Virtualization

{% for entry in containerization-cicd-virtualization %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### High-Performance Computing

{% for entry in high-performance-computing %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Networking

{% for entry in networking %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Storage 

{% for entry in storage %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}

##### Linux Administration & Virtual Desktop Infrastructure

{% for entry in linux-administration-virtual-desktop-infrastructure %}
<div class="simple-icon">
    <svg><use href="/assets/icons.svg#{{ entry.icon }}" aria-hidden="true"/></svg>
    <span class="label">{{ entry.name }}</span>
</div>
{% endfor %}
