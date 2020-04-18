# holybrother_infra
holybrother Infra repository
# Create scripts and test on vm
create scripts for auto install
make them executable
commit install_ruby.sh install_mongodb.sh deploy.sh
test run on clear machine - works!
# Create autostart script and add params
gcloud compute instances create reddit-app --boot-disk-size=10GB --image-family ubuntu-1604-lts --image-project=ubuntu-os-cloud --machine-type=g1-small --tags puma-server --restart-on-failure forwarding-rules create default-puma-server --ip-protocol TCP --ports 9292 --target-instance pf-target-instance  --metadata-from-file startup-script=c:\startup_script.sh
# CONNECT to test first task hw
testapp_IP = 35.246.214.172
testapp_port = 9292
