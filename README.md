###    [![Build Status](https://travis-ci.org/ess-acppo/ag-bie.svg?branch=DAWR_reskin)](https://travis-ci.org/ess-acppo/ag-bie)

This is the DAWR version of the BIE front end.
For more details on the architecture see [BIE index](http://github.com/AtlasOfLivingAustralia/bie-index)

Separation of concerns between the organisation specific application (ag-bie) and the plugin (bie-plugin) is that
this application is responsible for configuration, styling and layout.

## Ansible Installation

Use the ```ansible``` subdirectory and the command

```$xslt
ansible-playbook -K -i ag-bie.oztaxa.com ag-bie.yml
```
