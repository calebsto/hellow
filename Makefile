PROJECT_ID=$(shell gcloud config get-value core/project)
all:
	@echo "build  - Build the docker image"
	@echo "deploy - Deploy the image to Cloud Run"
	@echo "clean  - Clean resoruces created in this test"
	@echo "call   - Call the Cloud Run service"

deploy:
	gcloud run deploy hellow \
		--image gcr.io/$(PROJECT_ID)/hellow \
		--min-instances 1000 \
		--max-instances 1000 \
		--cpu 4 \
		--memory 8Gi \
		--platform managed \
		--region us-central1 \
		--allow-unauthenticated \
		--timeout 10m

build:
	gcloud builds submit --tag gcr.io/$(PROJECT_ID)/hellow

clean:
	-gcloud container images delete gcr.io/$(PROJECT_ID)/hellow --quiet
	-gcloud run services delete hellow \
		--platform managed \
		--region us-central1 \
		--quiet
