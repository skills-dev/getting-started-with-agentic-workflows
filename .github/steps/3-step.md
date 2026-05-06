## Step 3: Schedule and document Mona's updater

You now have a draft workflow. Before Mona can rely on it, the workflow should be ready for repeat use and easy for collaborators to understand.

### 📖 Theory: Operationalizing an Agentic Workflow

A useful agentic workflow is more than a one-off prompt. It should be easy to run on demand, safe to run automatically, and documented so teammates understand how it works.

In this step, you'll turn Mona's updater into a repeatable process by giving it both manual and scheduled triggers. You'll also document the review loop in the repository so future collaborators know where the website content comes from and why updates still go through pull requests.

### :keyboard: Activity: Operationalize Mona's updater

Continue working in the same VS Code window and pull request branch from Step 2.

1. Ask Copilot to make Mona's updater repeatable and documented.

   > ![Static Badge](https://img.shields.io/badge/-Prompt-text?style=social&logo=github%20copilot)
   >
   > ```prompt
   > - Update .github/workflows/update-github-info.md
   >   so the workflow can run manually with workflow_dispatch
   >   and automatically on a daily schedule.
   > - Update README.md with a short section explaining
   >   Mona's GitHub Info website is updated from notes/mona-notes.md,
   >   the GitHub Blog, and the GitHub Changelog.
   > - Explain in the README that the workflow opens pull requests
   >   for Mona to review before changes are merged.
   > ```

2. Review Copilot's suggested changes. Make sure:

   - `.github/workflows/update-github-info.md` includes both `workflow_dispatch` and `schedule`
   - `README.md` mentions `notes/mona-notes.md`
   - `README.md` mentions the GitHub Blog and GitHub Changelog
   - `README.md` explains the pull request review process

3. Ask Copilot to commit and push the updates to the same pull request from Step 2.

   > ![Static Badge](https://img.shields.io/badge/-Prompt-text?style=social&logo=github%20copilot)
   >
   > ```prompt
   > - Commit the workflow scheduling and README documentation updates.
   > - Push them to the current branch.
   > ```

4. Merge the pull request into `main`.

5. Wait about 20 seconds, then refresh the exercise issue for the next step.

<details>
<summary>Having trouble? 🤷</summary><br/>

- The final check looks for both `workflow_dispatch` and `schedule` in `.github/workflows/update-github-info.md`.
- Make sure your `README.md` mentions the GitHub Blog, GitHub Changelog, and pull requests.
- If the next step does not appear, check the [Actions](../../actions) tab and confirm your pull request was merged.

</details>
