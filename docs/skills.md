# Skills

[Models](models.md) | Skills | [Agents](agents.md) | [Workflows](workflows.md)

"Skills" are functions that AI agents can invoke to perform a certain action. These functions provide the AI with means to interact with other APIs, to access local files, and so on.

Notes:
- Skills must be written in Python. Other languages cannot be executed by the AI agents - in some cases, the agent tries to translate the skill to Python and then execute it, but usually with poor results. A [feature request to support other languages](https://github.com/microsoft/autogen/issues/2834) is pending.
- In my tests, only `gpt-4` type models could use Skills, while `gpt-3.5` just returned an empty string.
- Changes to Skills do not propagate to Agents or Workflows. Manually update relevant items after changing a Skill (remove + add the modified Skill)

References:
- Check out [AutoGen Studio Skills Repository](https://github.com/madtank/autogenstudio-skills) for more inspiration.