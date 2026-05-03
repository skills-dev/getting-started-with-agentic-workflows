# Getting Started with Agentic Workflows

_Learn how to install GitHub Agentic Workflows and create an AI-powered workflow that keeps Mona's website current._

## Welcome

- **Who is this for**: Developers, DevOps engineers, and anyone curious about AI-powered automation in GitHub repositories.
- **What you'll learn**: How to install the `gh aw` extension, author an agentic workflow in markdown, and operationalize it with manual and scheduled runs that propose changes through pull requests.
- **What you'll build**: A repository setup workflow plus an agentic workflow that drafts updates to Mona's GitHub Info website using her notes, the GitHub Blog, and the GitHub Changelog—then opens a pull request for review.
- **Prerequisites**:
  - A GitHub account with access to GitHub Copilot
  - Basic familiarity with GitHub repositories, branches, and pull requests
  - Comfort editing YAML and Markdown files

- **How long**: This exercise takes less than 30 minutes to complete.

In this exercise, you will:

1. Install the repository setup for GitHub Agentic Workflows and merge it to `main`.
1. Create an agentic workflow that drafts website updates in a pull request.
1. Operationalize the workflow with manual and scheduled runs, and document the human review loop.

### What are Agentic Workflows?

[**Agentic workflows**](https://github.github.com/gh-aw/introduction/overview/) are AI-powered automation that can understand context, make decisions, and take meaningful actions—all from natural language instructions you write in markdown.

Unlike traditional automation with fixed if-then rules, agentic workflows use coding agents (like Copilot CLI, Claude, or Codex) to:

- **Understand context**: Read your repository, issues, and pull requests to grasp the current situation.
- **Make decisions**: Choose appropriate actions based on the context, not just predefined conditions.
- **Adapt behavior**: Respond flexibly to different scenarios without requiring explicit programming for each case.

You describe what you want to happen in a markdown file with a YAML frontmatter trigger. The `gh aw compile` command turns that markdown into a hardened GitHub Actions workflow (`.lock.yml`) that runs an AI agent in a containerized environment. Workflows are read-only by default, and write operations are only allowed through sanitized [`safe-outputs`](https://github.github.com/gh-aw/reference/safe-outputs/) such as creating issues, comments, and pull requests—so AI agents stay within controlled boundaries.

### How to start this exercise

Simply copy the exercise to your account, then give your favorite Octocat (Mona) **about 20 seconds** to prepare the first lesson, then **refresh the page**.

[![](https://img.shields.io/badge/Copy%20Exercise-%E2%86%92-1f883d?style=for-the-badge&logo=github&labelColor=197935)](https://github.com/new?template_owner=skills-dev&template_name=getting-started-with-agentic-workflows&owner=%40me&name=skills-getting-started-with-agentic-workflows&description=Exercise:+Getting+Started+with+Agentic+Workflows&visibility=public)

<details>
<summary>Having trouble? 🤷</summary><br/>

When copying the exercise, we recommend the following settings:

- For owner, choose your personal account or an organization to host the repository.

- We recommend creating a public repository, since private repositories will use Actions minutes.

If the exercise isn't ready in 20 seconds, please check the [Actions](../../actions) tab.

- Check to see if a job is running. Sometimes it simply takes a bit longer.

- If the page shows a failed job, please submit an issue. Nice, you found a bug! 🐛

</details>

---

&copy; 2026 GitHub &bull; [Code of Conduct](https://www.contributor-covenant.org/version/2/1/code_of_conduct/code_of_conduct.md) &bull; [MIT License](https://gh.io/mit)
