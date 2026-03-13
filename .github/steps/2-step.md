## Step 2: Create a Custom Agent

Great work opening that pull request! 🎉 Now let's create your very own AI agent.

### 📖 Theory: How Agent Files Work

Agent files are **markdown documents** that define how an AI assistant should behave in your repository. They follow a specific structure:

- **YAML frontmatter** — Contains metadata like the agent's `description` and available `tools`.
- **Markdown body** — Provides instructions, context, and guidelines for the agent's behavior.
- **File naming** — Agent files follow the convention `<name>.agent.md` and live in `.github/agents/`.

When you invoke an agent in GitHub Copilot Chat, it reads these instructions to understand its role, capabilities, and how to respond. This means your team can customize AI behavior through simple markdown — no code required!

> [!TIP]
> Keep agent instructions clear and specific. The more focused an agent's role, the better its responses will be.

### ⌨️ Activity: Create Your First Agent

1. In your pull request branch (`add-custom-agent`), navigate to the `.github/agents/` directory.

1. Create a new file named `hello-world.agent.md`.

1. Add the following content to the file:

    ```markdown
    ---
    description: A friendly greeting agent that helps with introductions and welcomes
    ---

    # Hello World Agent

    You are a friendly greeting agent for this repository.

    ## What You Do

    - Greet new contributors and help them get started
    - Provide helpful introductions to the repository
    - Answer basic questions about the project

    ## Instructions

    When a user interacts with you:

    1. Welcome them warmly
    2. Ask how you can help
    3. Provide clear and friendly responses
    ```

1. Commit the new file to your `add-custom-agent` branch.

1. Wait about 20 seconds then refresh the exercise issue page for the next step!

<details>
<summary>Having trouble? 🤷</summary><br/>

- Make sure the file is created in the `.github/agents/` directory, not the repository root.
- The file name must be `hello-world.agent.md` — the grading check looks for this specific file.
- Ensure you commit to the `add-custom-agent` branch (your PR branch), not directly to `main`.
- If the next step doesn't appear, check the [Actions](../../actions) tab to see if the workflow ran.

</details>
