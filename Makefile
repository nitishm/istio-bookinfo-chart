all: package index

package:
	helm package helm-chart-sources/*

index:
	helm repo index --url https://nitishm.github.io/istio-bookinfo-chart/ --merge index.yaml .
