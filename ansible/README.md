# Ansible Install

It's not possible to do a complete ansible install, there are some manual steps involved.

## Preliminaries

* Ensure that you have ala-install cloned from github and at the same level as ag-bie. Or edit `ansible.cfg`
* Edit the appropriate inventory file
  * Most things should work as-is
  * If you have keys for your organisation, put them in a local directory, nameed *user*.pem for the previate key and *user*.pub for the public key, where *user* is whatever is defined to be `ag_bie_user` (defaults to `dawr`). Then add `ag_bie_local_keys` to the inventory
  * Edit `jenkins_admin_password` to whatever you are going to use for the jenkins admin password

## Ansible Install 

To install via ansible, change to this directory and use the following command

```$xslt
ansible-playbook -K -i XXX ag-bie.yml
```

where *XXX* is the appropriate inventory file, eg `ag-bie.oztaxa.com`

## Post Install

### SFTP Access

You need to allow jenkins to know upload.ala.org.au. Use, adjusting as appropriate, the following command:

```$xslt
sudo -u jenkins sftp -i /data/processing/config/.ssh/dawr.pem dawr@upload.ala.org.au
```

### CAS

You will need to add someone as a admin user in CAS. First go to `https://hostname/userdetails` and create an account.
You then need to enable that person and give them the admin role via SQL.

```aidl
# mysql
use emmet;
select * from users;
update users set activated = 1 where userid = 1;
insert into user_role values (1, 'ROLE_ADMIN');
```

replacing the `1` with whatever userid your user has.

### Jenkins

Tunnel to jenkins via

```$xslt
ssh -NL 9192:localhost:9192 hostname

```

and point your browser at http://localhost:9192

You will be asked to configure jenkins, add plugins etc. You also need to link jenkins to CAS.

Steps: TBD
