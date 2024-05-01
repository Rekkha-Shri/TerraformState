# TerraformState
Terraform Remote State Backend using S3 and DynamoDB
Terraform can store state remotely in S3 and lock that state with DynamoDB.
 
![image](https://github.com/Rekkha-Shri/TerraformState/assets/136299028/ac12d502-6d64-4338-9692-c54b6ef6240a)

**Benefits of using Terraform Remote State Shared Storage:**

**Remote state (Backend)** allow each of your team members to access same Terraform state files to manage infrastructure.

**Locking:** With fully-featured remote backends, Terraform can lock the state file while changes are being made. This ensures all changes are captured, even if concurrent changes are being attempted against the same state. Without locking, if two team members are running Terraform at the same time, you may run into race conditions as multiple Terraform processes make concurrent updates to the state files, leading to conflicts, data loss, and state file corruption.

**Versioning:** Some backends support versioning. This maintains versions of your Terraform state files allowing you to download an old version if needed.

**Encryption:** Many backends support encryption of the state file both in transit and at rest.

**Security**: A local state file save the content in plain text. It is very common to have secrets or sensitive data in the state, so local state files are insecure. Sensitive data such as passwords may be exposed in our state files. For this reason, you can encrypt your files in such cases if your remote storage supports it. So, AWS S3 bucket supports encryption.

**Remote operations**: Some backends allow to manage operations remotely (Terraform plan and apply execution). You don’t need to use terraform on your system to apply the changes. You could either trigger it from a Web UI, API call or CLI tool.

**Less Manual Errors**: Using a local state file as a shared storage, manually sync the changes could cause someone forget to sync the state file. Remote state will always sync the state automatically whenever it change.
