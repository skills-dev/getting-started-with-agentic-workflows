---
description: Start, stop, or restart Mona's Astro site for local development or Codespaces.
name: manage-mona-site
argument-hint: Choose start, stop, or restart. You can also include an optional port.
agent: agent
---

# Manage Mona's Astro site

Manage the Astro website in the `site/` directory for this repository.

## Inputs

- The first argument should be one of: `start`, `stop`, or `restart`.
- Use port `4321` unless I explicitly provide another port.

## Shared rules

- Only act inside this repository.
- Use host `0.0.0.0` when starting the site so it works locally and in GitHub Codespaces.
- Only stop a process when you have the exact PID.
- Never use `pkill`, `killall`, or other name-based process termination.
- If a process on the requested port does not appear to be this repository's Astro site, stop and ask me before killing it.

## Behavior

### If I ask for `start`

1. Check whether the site is already running on the requested port.
2. If it is already this Astro site, tell me it is running and report the URL.
3. Otherwise, start the Astro dev server from `site/`.
4. Verify the homepage responds over HTTP.

### If I ask for `stop`

1. Find the exact PID listening on the requested port.
2. If nothing is listening, tell me the site is already stopped.
3. If the listener is this Astro site, stop it.
4. Verify the port is no longer listening.

### If I ask for `restart`

1. Find and stop the exact PID currently listening on the requested port, if any.
2. Start the Astro dev server again from `site/`.
3. Verify the homepage responds over HTTP.

## Response format

- Keep the response short.
- Always say what action you took.
- If the site is running, include the exact URL to open.
- If you used a PID, mention it.
