# Install telepresence
brew install datawire/blackbird/telepresence

# Connect to cluster
telepresence connect

# Disconnect from cluster
telepresence quit

# List services you can intercept
telepresence list

# Get service exposed ports
kubectl get service example-service --output yaml

# Intercept service
telepresence intercept <service-name> --port <local-port>[:<remote-port>] --env-file <path-to-env-file>
telepresence intercept deployment-management-webapp --port 6577:6577 --env-file /Users/galrabin/projects/qwak/qwak-platform/qwak-management/deployment-management/deployment-manager-webapp/manager-webapp.env

# Stop interception
telepresence leave deployment-management-webapp

# List current interception
telepresence list
