###    [![Build Status](https://travis-ci.org/ess-acppo/ag-bie.svg?branch=DAWR_reskin)](https://travis-ci.org/ess-acppo/ag-bie) ag-bie Repo

This is the ag-bie, front end application of taxonomy as a service. For more details on the architecture see [BIE index](http://github.com/AtlasOfLivingAustralia/bie-index)

Separation of concerns between the organisation specific application ([ag-bie](https://ag-bie.oztaxa.com)) and the plugin (bie-plugin) is that this application is responsible for configuration, styling and layout.

#### Simple Ansible Installation

Use the ```ansible``` subdirectory and the command

```$xslt
ansible-playbook -K -i ag-bie.oztaxa.com ag-bie.yml
```

---

## Complete installation

1. Checkout ala-install, ag-bie and nxl-private repositories

    ```
    git clone "https://github.com/ess-acppo/ag-bie-infra.git"
    cd ag-bie-infra/
    git checkout ag-master
    cd ..

    git clone "https://github.com/ess-acppo/ag-bie.git"
    cd ag-bie
    git checkout ag-master
    cd ..

    # git clone "https://github.com/AtlasOfLivingAustralia/ala-install.git"
    cp -r ../ala-install .
    cd ala-install/
    git checkout ag-bie-install
    cd ..
    ```

> Private repo hosts all passwords, so you need to maintain a separate file for passwords. As is the installation will work with default passwords...

**Prepare inventory file:**

* We do SED replacement of host_name and server_name, but it can be manually done too.

```
sed -ie 's/agbie_hostname_variable_here/**IP_OR_DNS_NAME**/g' ansible/ag-bie.ala.org.au && sed -ie 's/agbie_servername_variable_here/**ENV_NAME**.**DOMAIN_NAME.COM**/g' ansible/ag-bie.ala.org.au
```

**Build WAR file:**

```
cd ag-bie
./gradlew assemble && find ./ -name "*.war"
cd ..
```

**Run Install Playbook from ALA:**

```
cd ag-bie/ansible/
ansible-playbook -i ../../ansible/ag-bie.ala.org.au ag-bie.yml -b -u vagrant --skip-tags=version_check
```

**Run the customize playbook:**

* Customize secion deals with applying certificates, jenkins and nginx conf, etc.

```
cd ../../ag-bie-infra
ansible-playbook -i ../ansible/ag-bie.ala.org.au playbooks/ag-bie-customize.yml -v
```

> You will need the private-repo setup to make the customize stage work

#### Feedback

*For any feedback or questions, please contact us using github...*