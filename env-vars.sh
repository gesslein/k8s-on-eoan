########################################################################################################
########################################################################################################

# env-vars.sh

########################################################################################################
########################################################################################################

export GIT_CONFIG_USERNAME=
export GIT_CONFIG_EMAIL=

export CLUSTER_NAME=my-cluster

# If your lan isn't 10.0.0.0/16, or your host isn't 10.0.0.10, you'll need to modify these.

# The kubernetes master node IP address in the lan on which host runs
export ADVERTISE_ADDR="10.0.0.10"

# IP to be assigned by metallb for the nginx-controller service
export LB_IP="10.0.1.1"

# IP range for metallb to assign to ingresses which should be exposed separately from the nginx-ingress.
export PUBLIC_IP_RANGE="10.0.3.1-10.0.3.254"

# Same, but for IPs not intended to be exposed outside the firewall.
export PRIVATE_IP_RANGE="10.0.4.1-10.0.4.254"

# for Route53, which is hit by cert-manager
export AWS_REGION=us-east-1

export WORK_DIR=$HOME/setup-kubernetes

# all of the dns names created will be children of this domain
export PRI_DOMAIN=example.com

# if specified, restricts logins to a github org
export GITHUB_ORG=

# hostnames for the services
export DASHBOARD_HOST=dashboard
export DEX_ISSUER_HOST=login
export GANGWAY_HOST=gangway
export KEYS_APP_HOST=keys

export KUBE_ADMIN_USER=me@example.com

# unless you want set up a second nginx-ingress controller to run on some odd
# port number, leave this at 443.
export DEX_PORT=443

export SRC_DIR=$WORK_DIR/src
export DEX_ISSUER_FQDN=$DEX_ISSUER_HOST.$PRI_DOMAIN
export DEX_ISSUER_URL=https://$DEX_ISSUER_FQDN:$DEX_PORT
export GANGWAY_URL=https://$GANGWAY_HOST.$PRI_DOMAIN

export SSCERT=$WORK_DIR/sealed-secrets/sealed-secrets-cert.pem
