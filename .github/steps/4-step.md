## Step 4: Run Mona's updater and review the generated pull request

You now have an agentic workflow definition for Mona's website. In this step, you'll run it and inspect the pull request it creates.

### 📖 Theory: From workflow definition to generated pull request

Agentic workflows are authored as markdown files, but GitHub Actions runs compiled `.lock.yml` workflow files. The `gh aw compile` command turns `.github/workflows/update-github-info.md` into `.github/workflows/update-github-info.lock.yml`.

Because this workflow uses the default Copilot engine, the repository needs a `COPILOT_GITHUB_TOKEN` Actions secret before the compiled workflow can run. That secret is a fine-grained personal access token with the **Copilot Requests** account permission.

The workflow uses `safe-outputs: create-pull-request`, so the agent can draft website changes without writing directly to `main`. The agent prepares a patch, and a separate permission-controlled job opens a pull request for Mona to review.

### :keyboard: Activity: Run the updater and inspect its pull request

1. Confirm the repository has the `COPILOT_GITHUB_TOKEN` secret.

   Go to your repository on GitHub, then choose **Settings** > **Secrets and variables** > **Actions**.

   <img width="650" alt="Repository actions secrets settings page" src="../images/actions-secrets-settings.svg" />

   If the secret is missing, [create a fine-grained personal access token](https://github.com/settings/personal-access-tokens/new?name=COPILOT_GITHUB_TOKEN&description=GitHub+Agentic+Workflows+-+Copilot+engine+authentication&user_copilot_requests=read) with **Copilot Requests** set to **Read**, then add it as a repository secret named `COPILOT_GITHUB_TOKEN`.

   <img width="650" alt="New repository secret form with COPILOT_GITHUB_TOKEN as the secret name" src="../images/add-copilot-github-token-secret.svg" />

   > [!CAUTION]
   > Never paste a real token into a comment, markdown file, pull request, or Copilot Chat message. Only add it through the repository secrets UI.

2. Ask Copilot to compile and run Mona's updater.

   > ![Static Badge](https://img.shields.io/badge/-Prompt-text?style=social&logo=github%20copilot)
   >
   > ```prompt
   > Check that gh-aw is available in this repository.
   > Make sure I am on the latest main branch before changing files.
   > Update notes/mona-notes.md with a short section named "Mona updater request" that asks the updater to highlight one recent GitHub Blog or GitHub Changelog update.
   > Compile .github/workflows/update-github-info.md with gh aw compile.
   > Confirm .github/workflows/update-github-info.lock.yml was created and references COPILOT_GITHUB_TOKEN.
   > Then run the update-github-info workflow with gh aw run update-github-info --push --ref main and help me open the generated workflow run.
   > ```

3. If you prefer the GitHub UI, open the **Actions** tab, select the compiled updater workflow, and choose **Run workflow**.

   <img width="650" alt="GitHub Actions run workflow button" src="../images/run-workflow-button.svg" />

4. Wait for the workflow to create a pull request for Mona's website update.

   <img width="650" alt="Pull request list showing a generated Mona website update pull request" src="../images/generated-update-pr.svg" />

5. Open the generated pull request and review the **Files changed** tab. Confirm it updates `site/content/github-info.md` and mentions the source of the update.

   <img width="650" alt="Pull request files changed tab showing site/content/github-info.md" src="../images/pr-files-changed-github-info.svg" />

6. Leave the generated pull request open. When the updater workflow finishes, Mona will look for an open pull request that updates `site/content/github-info.md`. Wait about 20 seconds, then refresh the exercise issue for the final review.

<details>
<summary>Having trouble? 🤷</summary><br/>

- If the workflow fails before the agent starts, confirm `COPILOT_GITHUB_TOKEN` is configured as an Actions secret.
- If compilation fails, make sure `.github/workflows/update-github-info.md` includes `safe-outputs`, `create-pull-request`, `workflow_dispatch`, and a `network` allowlist.
- If no pull request appears, open the failed workflow run from the **Actions** tab and review the logs.
- If the pull request opens as a draft, that is expected. Mona should review generated website changes before they merge.

</details>
