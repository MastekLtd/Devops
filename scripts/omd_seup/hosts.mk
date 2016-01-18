# Written by WATO
# encoding: utf-8

all_hosts += [
  "EMP|wan|cmk-agent|prod|tcp|wato|/" + FOLDER_PATH + "/",
  "OMD_SERVER|wan|cmk-agent|prod|tcp|wato|/" + FOLDER_PATH + "/",
  "PROJECT|wan|cmk-agent|prod|tcp|wato|/" + FOLDER_PATH + "/",
  "WEB|wan|cmk-agent|prod|tcp|wato|/" + FOLDER_PATH + "/",
]

# Explicit IP addresses
ipaddresses.update({'EMP': u'&&DOCKER_HOST_IP&&',
 'OMD_SERVER': u'127.0.0.1',
 'PROJECT': u'&&DOCKER_HOST_IP&&',
 'WEB': u'&&DOCKER_HOST_IP&&'})


# Host attributes (needed for WATO)
host_attributes.update(
{'EMP': {'ipaddress': u'&&DOCKER_HOST_IP&&',
         'tag_agent': 'cmk-agent',
         'tag_networking': 'wan'},
 'OMD_SERVER': {'ipaddress': u'127.0.0.1',
                'tag_agent': 'cmk-agent',
                'tag_networking': 'wan'},
 'PROJECT': {'ipaddress': u'&&DOCKER_HOST_IP&&',
             'tag_agent': 'cmk-agent',
             'tag_networking': 'wan'},
 'WEB': {'ipaddress': u'&&DOCKER_HOST_IP&&',
         'tag_agent': 'cmk-agent',
         'tag_networking': 'wan'}})
