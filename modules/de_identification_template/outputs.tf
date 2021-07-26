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

output "template_display_name" {
  description = "The display name of the DLP de-identification template."
  value       = var.template_display_name
}

output "template_description" {
  description = "The description of the DLP de-identification template."
  value       = var.template_description
}

output "dlp_location" {
  description = "The location of the DLP resources."
  value       = var.dlp_location
}

output "crypto_key" {
  description = "The full resource name of the Cloud KMS key that wraps the data crypto key used by DLP."
  value       = var.crypto_key
}

output "wrapped_key" {
  description = "The base64 encoded data crypto key wrapped by KMS."
  value       = var.wrapped_key
}

output "template_id" {
  description = "The ID of the Cloud DLP de-identification template that is created."
  value       = local.template_id
}