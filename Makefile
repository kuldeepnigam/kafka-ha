repo-add:
	 helm repo add strimzi https://strimzi.io/charts/

deploy-operator: repo-add
	helm install strimzi-kafka-operator  strimzi/strimzi-kafka-operator

deploy: deploy-operator
	kubectl apply -f  mm2-deployment-strimzi.yaml 
