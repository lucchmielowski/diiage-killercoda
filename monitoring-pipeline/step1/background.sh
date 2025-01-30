#!/bin/sh

# Install the monitoring stack
cd /root/exercise/monitoring-stack
helm dep update
helm install monitoring-stack -n monitoring --create-namespace .

cd /root/exercise

# Install the emojivoto app
kubectl create namespace emojivoto
kubectl apply -f emojivoto/

# Wait for controller to be OK and install the collector
kubectl wait pod -n monitoring -l app.kubernetes.io/name=otel --for=jsonpath='{.status.phase}'=Running --timeout=300s
kubectl apply -f otel-collector.yaml