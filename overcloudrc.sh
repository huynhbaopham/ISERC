# Clear any old environment that may conflict.
for key in $( set | awk '{FS="="}  /^OS_/ {print $1}' ); do unset $key ; done
export OS_NO_CACHE=True
export COMPUTE_API_VERSION=1.1
export OS_USERNAME=admin
export no_proxy=,overcloud.tamucc.edu,192.168.120.109
export OS_REGION_NAME=regionOne
export OS_USER_DOMAIN_NAME=Default
export OS_VOLUME_API_VERSION=3
export OS_CLOUDNAME=overcloud
export OS_AUTH_URL=https://overcloud.tamucc.edu:13000//v3
export NOVA_VERSION=1.1
export OS_IMAGE_API_VERSION=2
export OS_PASSWORD=qa9Fzvmhc9BKt7Utegxh4vDXY
export OS_PROJECT_DOMAIN_NAME=Default
export OS_IDENTITY_API_VERSION=3
export OS_PROJECT_NAME=admin
export OS_AUTH_TYPE=password
export PYTHONWARNINGS='ignore:Certificate has no, ignore:A true SSLContext object is not available'

# Add OS_CLOUDNAME to PS1
if [ -z "${CLOUDPROMPT_ENABLED:-}" ]; then
    #export PS1=${PS1:-""}
    #export PS1=\${OS_CLOUDNAME:+"(\$OS_CLOUDNAME)"}\ $PS1
    export PS1="ISERC %# "
    export CLOUDPROMPT_ENABLED=1
fi
