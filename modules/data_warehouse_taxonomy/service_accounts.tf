/**
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "dataflow_controller_service_account" {
  source       = "terraform-google-modules/service-accounts/google"
  version      = "~> 3.0"
  project_id   = var.privileged_data_project_id
  names        = ["sa-dataflow-controller-reid"]
  display_name = "Cloud Dataflow controller service account"
  project_roles = [
    "${var.privileged_data_project_id}=>roles/pubsub.subscriber",
    "${var.privileged_data_project_id}=>roles/bigquery.admin",
    "${var.privileged_data_project_id}=>roles/cloudkms.admin",
    "${var.privileged_data_project_id}=>roles/cloudkms.cryptoKeyDecrypter",
    "${var.privileged_data_project_id}=>roles/dlp.admin",
    "${var.privileged_data_project_id}=>roles/dlp.deidentifyTemplatesEditor",
    "${var.privileged_data_project_id}=>roles/dlp.user",
    "${var.privileged_data_project_id}=>roles/storage.admin",
    "${var.privileged_data_project_id}=>roles/dataflow.serviceAgent",
    "${var.privileged_data_project_id}=>roles/dataflow.worker",
    "${var.privileged_data_project_id}=>roles/compute.viewer",
    "${var.privileged_data_project_id}=>roles/serviceusage.serviceUsageConsumer",
    "${var.non_sensitive_project_id}=>roles/bigquery.admin",
    "${var.non_sensitive_project_id}=>roles/serviceusage.serviceUsageConsumer",
    "${var.taxonomy_project_id}=>roles/serviceusage.serviceUsageConsumer",
    "${var.taxonomy_project_id}=>roles/dlp.admin",
    "${var.taxonomy_project_id}=>roles/dlp.deidentifyTemplatesEditor",
    "${var.taxonomy_project_id}=>roles/dlp.user",
    "${var.taxonomy_project_id}=>roles/cloudkms.admin",
    "${var.taxonomy_project_id}=>roles/cloudkms.cryptoKeyDecrypter"
  ]
}
