## Step 1: Explore Your Agentic Workflow Setup

Welcome to **Getting Started with Agentic Workflows**! 🚀 In this exercise, you'll learn how GitHub Agentic Workflows empower AI agents to perform complex tasks right in your repository.

### 📖 Theory: What Are Agentic Workflows?

GitHub Agentic Workflows let you define AI agent behaviors directly in your repository using markdown files. These agents work with GitHub Copilot to:

- **Execute multi-step tasks** — Agents can perform complex operations that go beyond simple code suggestions.
- **Use specialized tools** — Through MCP (Model Context Protocol) servers, agents can interact with external services and APIs.
- **Follow repository-specific instructions** — Agent definitions live in `.github/agents/` as markdown files, keeping your AI configuration version-controlled alongside your code.

Your repository has already been initialized with a **dispatcher agent** at `.github/agents/agentic-workflows.agent.md`. This agent routes requests to specialized prompts for creating, debugging, and upgrading workflows.

> [!NOTE]
> The dispatcher agent is the main entry point for agentic workflows. It understands your intent and delegates to the right specialized prompt.

### ⌨️ Activity: Open a Pull Request

1. Navigate to the **Code** tab of your repository.

1. Click the branch dropdown and create a new branch named `add-custom-agent`.

1. You can make a small change (like adding a blank line to `README.md`) to enable creating a pull request.

1. Open a pull request from your `add-custom-agent` branch to `main`.

1. Wait about 20 seconds then refresh the exercise issue page for the next step!

<details>
<summary>Having trouble? 🤷</summary><br/>

- Make sure your branch is named `add-custom-agent` for consistency, though any branch name will work.
- If the next step doesn't appear, check the [Actions](../../actions) tab to see if the workflow is running.
- You can also manually trigger the Step 1 workflow from the Actions tab using the "Run workflow" button.

</details>
