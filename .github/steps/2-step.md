## Step 2: Create Mona's website updater workflow

Nice work getting the repository ready. Now it's time to build the first agentic workflow for Mona's website.

### 📖 Theory: Agentic Workflows as Repository Teammates

An agentic workflow can read repository context, compare sources, draft changes, and open a pull request for human review. That makes it a great fit for Mona's website, where updates should be prepared automatically but still reviewed before they are published.

In this step, you'll create a workflow definition in `.github/workflows/` and pair it with a real content update in the website source. Your workflow should tell the agent to read Mona's notes, check the GitHub Blog and the GitHub Changelog, and then prepare a pull request for Mona to review.

### :keyboard: Activity: Create Mona's updater workflow

Continue working in VS Code. If you closed your browser editor, reopen your development environment from your repository's **Code** menu.

1. Ask Copilot to create the content workflow branch and draft the required files.

   > ![Static Badge](https://img.shields.io/badge/-Prompt-text?style=social&logo=github%20copilot)
   >
   > ```prompt
   > - Make sure I am on the latest main branch,
   >   then create a new branch named create-mona-updater.
   > - Update site/content/github-info.md with a new section
   >   named "Latest GitHub Updates" and include at least
   >   one concise update for readers.
   > - Create .github/workflows/update-github-info.md
   >   as an agentic workflow markdown file.
   > - Give the workflow edit access through the tools configuration.
   > - Use safe-outputs with create-pull-request so the agent can
   >   propose changes without writing directly to main.
   > - Tell the agent to read notes/mona-notes.md,
   >   use the GitHub Blog, use the GitHub Changelog,
   >   update site/content/github-info.md, and open
   >   a pull request for Mona to review.
   > - Ask the agent to use a pull request title that mentions
   >   Mona or GitHub Info.
   > ```

2. Review Copilot's suggested changes. Make sure `site/content/github-info.md` includes `## Latest GitHub Updates`.

3. In `.github/workflows/update-github-info.md`, make sure Copilot clearly instructed the agent to:

   - read `notes/mona-notes.md`
   - use the GitHub Blog
   - use the GitHub Changelog
   - update `site/content/github-info.md`
   - create a pull request for Mona to review using `safe-outputs`

4. The workflow file should look similar to this:

   ```markdown
   ---
   name: update-github-info
   description: Draft website updates for Mona's GitHub Info site.
   on:
     workflow_dispatch:
   safe-outputs:
     create-pull-request:
       title-prefix: "[mona] "
       draft: true
       fallback-as-issue: false
   tools:
     edit:
   network:
     allowed:
       - github.com
       - github.blog
   ---

   # Update Mona's GitHub Info website

   Review `site/content/github-info.md`.

   Use these sources:
   - `notes/mona-notes.md`
   - GitHub Blog
   - GitHub Changelog

   Update the website with concise changes and open a pull request for Mona to review. Use a pull request title that mentions Mona or GitHub Info.
   ```

5. Ask Copilot to commit, push, and open a pull request.

   > ![Static Badge](https://img.shields.io/badge/-Prompt-text?style=social&logo=github%20copilot)
   >
   > ```prompt
   > - Commit the website content and agentic workflow changes.
   > - Push the create-mona-updater branch.
   > - Open a pull request into main.
   > - Use the pull request title "Create Mona website updater workflow".
   > ```

6. Keep the pull request open. Wait about 20 seconds, then refresh the exercise issue for the next step.

<details>
<summary>Having trouble? 🤷</summary><br/>

- The grading check looks for both a website content update and a new workflow file.
- Include the phrases `GitHub Blog`, `GitHub Changelog`, `safe-outputs`, `create-pull-request`, and `pull request` in `.github/workflows/update-github-info.md`.
- Keep your workflow in markdown (`.md`) so the exercise focuses on the agent instructions.

</details>
