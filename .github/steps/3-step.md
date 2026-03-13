## Step 3: Merge Your Changes

Your custom agent is ready! 🎉 Let's merge it into the main branch to make it available to everyone.

### 📖 Theory: Activating Your Agents

Once your agent file is merged to the default branch (`main`), it becomes available to all repository collaborators through GitHub Copilot Chat. Here's what you can do:

- **Invoke agents** — In GitHub Copilot Chat, type `/agent` and select your agent to start a conversation with it.
- **Iterate on behavior** — Since agent definitions are markdown files, you can refine instructions through regular pull requests, just like any other code change.
- **Add more agents** — Create additional `.agent.md` files for different tasks — code review, documentation, testing, and more.

The agentic workflows dispatcher agent you explored in Step 1 can also help you create new workflows using the `gh aw` CLI. These workflows let AI agents perform automated tasks like issue triage, PR review, and report generation.

> [!NOTE]
> Your `hello-world` agent is a simple example. Real-world agents can be much more powerful, integrating with MCP servers for tools like web search, database access, and API interactions.

### ⌨️ Activity: Merge Your Pull Request

1. Navigate to your open pull request.

1. Review the changes — you should see your new `hello-world.agent.md` file.

1. Click **Merge pull request** to merge your changes into `main`.

1. Click **Confirm merge**.

1. Wait about 20 seconds then refresh the exercise issue page for the final review!

<details>
<summary>Having trouble? 🤷</summary><br/>

- If the merge button is not available, make sure there are no merge conflicts.
- If the grading from Step 2 failed, you may need to fix your `hello-world.agent.md` file first.
- You can also manually trigger the Step 3 workflow from the Actions tab.

</details>
