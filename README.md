
# Libre DevOps – Terraform Azure DevOps Pipeline Templates

A curated collection of reusable Azure DevOps pipeline templates designed to streamline Terraform-based infrastructure deployments on Azure.

---

## 📦 Repository Structure

- `.azuredevops/` — Azure DevOps pipeline templates and YAML files.
- `.github/` — GitHub-specific configurations and workflows.
- `PowerShellModules/` — Custom PowerShell modules used in the pipeline orchestration.
- `Tests/` — Example test scripts and related resources.
- `containers/` — Container and Docker-related definitions for pipeline/testing.
- `terraform/` — Example Terraform modules and configuration for test/demo use.
- `Run-AzTerraform.ps1` — PowerShell script used to orchestrate Terraform init/plan/apply/destroy logic.
- `Run-Docker.ps1` — PowerShell script to build and run local Docker containers for testing.
- `Terraform-Release.ps1` — Script to manage release/versioning of Terraform modules.

---

## 🚀 Getting Started

### Prerequisites

- Azure DevOps organization and permissions to create pipelines and service connections.
- Azure subscription for resource deployments.
- [Terraform](https://www.terraform.io/) (unless using the provided Docker/tenv setup).
- [Docker](https://www.docker.com/) (optional, for local dev/testing).

---

### Usage

1. **Clone the repository:**

   ```bash
   git clone https://github.com/libre-devops/terraform-azure-azdo-pipeline-templates.git
   ```

2. **Reference the Templates:**

   Reference pipeline templates from the `.azuredevops/` directory in your Azure DevOps pipeline YAML files. Example:

   ```yaml
   stages:
     - template: .azuredevops/templates/stages/terraform-init-plan.yaml
       parameters:
         # ...your parameters here
   ```

3. **Customize Parameters:**

   Adjust template parameters for your own Azure environment and Terraform stacks.

4. **Run Your Pipeline:**

   Create and run pipelines via Azure DevOps Pipelines UI or CLI.

---

## 🧪 Local Testing with Docker

For local, containerized testing, use the included `Run-Docker.ps1` script:

```powershell
.\Run-Docker.ps1
```

This will build a Docker image and execute scripts in a consistent environment matching the pipeline.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## 🙌 More Information

- Visit [Libre DevOps](https://github.com/libre-devops) for more modules, pipelines, and best-practice infrastructure code.
- Issues and PRs welcome!
