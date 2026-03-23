## Step 3: Schedule and document Mona's updater

You now have a draft workflow. Before Mona can rely on it, the workflow should be ready for repeat use and easy for collaborators to understand.

### 📖 Theory: Operationalizing an Agentic Workflow

A useful agentic workflow is more than a one-off prompt. It should be easy to run on demand, safe to run automatically, and documented so teammates understand how it works.

In this step, you'll turn Mona's updater into a repeatable process by giving it both manual and scheduled triggers. You'll also document the review loop in the repository so future collaborators know where the website content comes from and why updates still go through pull requests.

### ⌨️ Activities

1. Update `.github/workflows/update-github-info.md` so the workflow can run both:

   - manually with `workflow_dispatch`
   - automatically on a daily `schedule`

2. Update `README.md` with a short section that explains:

   - Mona's GitHub Info website is updated from `notes/mona-notes.md`
   - the workflow also uses the GitHub Blog and GitHub Changelog
   - the workflow opens pull requests for Mona to review before changes are merged

3. Commit the updates to the same pull request from Step 2.

4. Merge the pull request into `main`.

5. Wait about 20 seconds, then refresh the exercise issue for the final review.

<details>
<summary>Having trouble? 🤷</summary><br/>

- The final check looks for both `workflow_dispatch` and `schedule` in `.github/workflows/update-github-info.md`.
- Make sure your `README.md` mentions the GitHub Blog, GitHub Changelog, and pull requests.
- If the final review does not appear, check the [Actions](../../actions) tab and confirm your pull request was merged.

</details>
