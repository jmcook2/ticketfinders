## A few things to change before deploying to remote machine

---

* Copy & Replace /config/database.yml with pre-completed file from /home/rails

* App uses Ruby2.0.0p643, ensure rvm on server is using the same

* Ensure root app folder is owned by rails user

`chown -R rails: /home/rails/ticketfinders1/`

* Ensure app folder names match /home/rails/ticketfinders1

* Give read-write permissions to tmp/cache

`chmod -R 0777 cache/`

* Check for Gemfile discrepancies

* Troubleshoot in root/log/production.log

`tail -f /home/rails/ticketfinders1/log/production.log`
