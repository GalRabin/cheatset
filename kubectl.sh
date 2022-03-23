# https://kubernetes.io/docs/reference/kubectl/cheatsheet/

# AWS EKS -  Update kubeconfig with cluster
aws eks update-kubeconfig --name Qwak-EKS-Cluster --region us-east-1 --profile qwak --alias qwak
aws eks update-kubeconfig --name Qwak-EKS-Cluster --region us-east-1 --profile daisy --alias daisy
aws eks update-kubeconfig --name Qwak-EKS-Cluster --region us-east-1 --profile donald --alias donald




kubectl config unset clusters                        # clean clusters
kubectl config unset contexts                        # clean contexts
kubectl config get-contexts                          # display list of contexts 
kubectl config current-context                       # display the current-context
kubectl config use-context my-cluster-name           # set the default context to my-cluster-name
Time- 2021-10-03T10:42:44.7787179Z Error- requests.exceptions.ConnectionError: HTTPSConnectionPool(host='mlflow.us-east-1.yotpo.xyz', port=443): Max retries exceeded with url: /api/2.0/mlflow/runs/get?run_uuid=d60c763bd52540eb97dc68508369f294&run_id=d60c763bd52540eb97dc68508369f294 (Caused by NewConnectionError('<urllib3.connection.HTTPSConnection object at 0x7fb5e1c7b2b0>: Failed to establish a new connection: [Errno 110] Connection timed out'))
 Message- requests.exceptions.ConnectionError: HTTPSConnectionPool(host='mlflow.us-east-1.yotpo.xyz', port=443): Max retries exceeded with url: /api/2.0/mlflow/runs/get?run_uuid=d60c763bd52540eb97dc68508369f294&run_id=d60c763bd52540eb97dc68508369f294 (Caused by NewConnectionError('<urllib3.connection.HTTPSConnection object at 0x7fb5e1c7b2b0>: Failed to establish a new connection: [Errno 110] Connection timed out'))

aws configure list-profiles | grep -Ev default|bastion|salt-service|salt.staging-service|yotpo-service | xargs -I {} sh -c 'aws eks update-kubeconfig --name Qwak-EKS-Cluster --region us-east-1 --profile {} --alias {}'