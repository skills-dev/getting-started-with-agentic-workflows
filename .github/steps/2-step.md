## Step 2: Create Mona's website updater workflow

Nice work getting the repository ready. Now it's time to build the first agentic workflow for Mona's website.

### 📖 Theory: Agentic Workflows as Repository Teammates

An agentic workflow can read repository context, compare sources, draft changes, and open a pull request for human review. That makes it a great fit for Mona's website, where updates should be prepared automatically but still reviewed before they are published.

In this step, you'll create a workflow definition in `.github/workflows/` and pair it with a real content update in the website source. Your workflow should tell the agent to read Mona's notes, check the GitHub Blog and the GitHub Changelog, and then prepare a pull request for Mona to review.

### ⌨️ Activities

1. Create a new branch from `main` for Mona's content workflow.

2. Update `site/content/github-info.md` with a fresh website change. For example, add a new section like `## Latest GitHub Updates` and include at least one short update for readers.

3. Create `.github/workflows/update-github-info.md` for your agentic workflow.

4. In that workflow file, make sure you clearly instruct the agent to:

   - read `notes/mona-notes.md`
   - use the GitHub Blog
   - use the GitHub Changelog
   - update `site/content/github-info.md`
   - create a pull request for Mona to review

5. If you'd like a starting point, use something like this and customize it:

   ```markdown
   ---
   name: update-github-info
   description: Draft website updates for Mona's GitHub Info site.
   on:
     workflow_dispatch:
   ---

   # Update Mona's GitHub Info website

   Review `site/content/github-info.md`.

   Use these sources:
   - `notes/mona-notes.md`
   - GitHub Blog
   - GitHub Changelog

   Update the website with concise changes and open a pull request for Mona to review.
   ```

6. Commit your changes and open a pull request from your branch into `main`.

7. Wait about 20 seconds, then refresh the exercise issue for the next step.

<details>
<summary>Having trouble? 🤷</summary><br/>

- The grading check looks for both a website content update and a new workflow file.
- Include the phrases `GitHub Blog`, `GitHub Changelog`, and `pull request` in `.github/workflows/update-github-info.md`.
- Keep your workflow in markdown (`.md`) so the exercise focuses on the agent instructions.

</details>
