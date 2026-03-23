## Step 1: Install agentic workflows and merge the setup

Mona's website needs repository-level setup before an agentic workflow can help. In this step, you'll add the GitHub Agentic Workflows setup workflow and merge it to `main`.

### 📖 Theory: Setting Up a Repository for Agentic Workflows

GitHub Agentic Workflows use repository files and GitHub Actions to give AI agents a safe, repeatable place to work. A setup workflow can install the `gh aw` tooling for GitHub Actions so future workflows can create or maintain automation in this repository.

The [`gh aw` CLI](https://github.github.com/gh-aw/setup/cli/) and setup action are commonly used to prepare a repository for agentic workflows. In this exercise, you'll add the repository setup as code, review it in a pull request, and then merge it to `main`.

### ⌨️ Activities

1. Create a new branch from `main`.

2. Add `.github/workflows/copilot-setup-steps.yml` with a workflow that checks out the repository and installs the `gh-aw` CLI by using `github/gh-aw/actions/setup-cli`.

3. You can use this starter example:

   ```yaml
   name: "Copilot Setup Steps"

   on:
     workflow_dispatch:
     push:
       paths:
         - .github/workflows/copilot-setup-steps.yml

   jobs:
     copilot-setup-steps:
       runs-on: ubuntu-latest
       permissions:
         contents: read
       steps:
         - name: Checkout repository
           uses: actions/checkout@v6
         - name: Install gh-aw extension
           uses: github/gh-aw/actions/setup-cli@main
   ```

4. Open a pull request for your branch.

5. Merge the pull request into `main`.

6. Wait about 20 seconds, then refresh the exercise issue for the next step.

<details>
<summary>Having trouble? 🤷</summary><br/>

- Make sure the file path is exactly `.github/workflows/copilot-setup-steps.yml`.
- The check looks for the `copilot-setup-steps` job and the `github/gh-aw/actions/setup-cli` action.
- Step 1 only completes after your setup pull request is merged into `main`.

</details>
