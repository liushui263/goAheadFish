# Cloud Build permissions
gcloud projects add-iam-policy-binding goaheadfish-project \
  --member="serviceAccount:cloud-build-sa@goaheadfish-project.iam.gserviceaccount.com" \
  --role="roles/cloudbuild.builds.editor"

# Artifact Registry (push/pull images)
gcloud projects add-iam-policy-binding goaheadfish-project \
  --member="serviceAccount:cloud-build-sa@goaheadfish-project.iam.gserviceaccount.com" \
  --role="roles/artifactregistry.writer"

# Cloud Storage (for source uploads, intermediate artifacts)
gcloud projects add-iam-policy-binding goaheadfish-project \
  --member="serviceAccount:cloud-build-sa@goaheadfish-project.iam.gserviceaccount.com" \
  --role="roles/storage.admin"

# Cloud Logging (so build logs can be written)
gcloud projects add-iam-policy-binding goaheadfish-project \
  --member="serviceAccount:cloud-build-sa@goaheadfish-project.iam.gserviceaccount.com" \
  --role="roles/logging.logWriter"

# Cloud Run deployment
gcloud projects add-iam-policy-binding goaheadfish-project \
  --member="serviceAccount:cloud-build-sa@goaheadfish-project.iam.gserviceaccount.com" \
  --role="roles/run.admin"

# Allow Cloud Build SA to impersonate the runtime service account
gcloud projects add-iam-policy-binding goaheadfish-project \
  --member="serviceAccount:cloud-build-sa@goaheadfish-project.iam.gserviceaccount.com" \
  --role="roles/iam.serviceAccountUser"
