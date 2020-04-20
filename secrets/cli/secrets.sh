### kubectl create secret [TYPE] [NAME] [DATA]

### type:
	### - generic: 
		### - File
		### - Directory
		### - Literal Value
	### - docker-registry
	### - tls
### data:
	### Path to dir/file: --from-file
	### Key-Value pair: --from-literal

### Create 2 files contain username and password
echo -n 'admin' > ./username.txt
echo -n '1f2d1e2e67df' > ./password.txt

kubectl create secret generic db-user-pass --from-file=./username.txt --from-file=./password.txt

### to validate
kubectl get secrets
kubectl describe secrets db-user-pass