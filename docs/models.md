# Models

Models | [Skills](skills.md) | [Agents](agents.md) | [Workflows](workflows.md)

AutoGen supports custom AI models, we're not limited to using OpenAI's GPT models here.

Notes:
- We can assign custom models to out AutoGen agents, but [GPT assistants are not supported](https://github.com/microsoft/autogen/issues/1560) yet.
- Changes made to Models do not propagate to Agents or Workflows. Make sure to manually update Agents and Workflows when needed.

## OpenAI

### GPT 4o

- Model name: `gpt-4o`
- Base URL: `https://api.openai.com/v1/`
- Model type: `openai`
- Description: `OpenAI: Best model, multimodal`

More specs:
- Details: https://platform.openai.com/docs/models/gpt-4o
- Context: 128,000 token
- Type: Multimodal

### GPT 4-turbo

- Model name: `gpt-4-turbo`
- Base URL: `https://api.openai.com/v1/`
- Model type: `openai`
- Description: `OpenAI: Latest GPT-4 model, vision capabilities`

Mode specs:
- Details: https://platform.openai.com/docs/models/gpt-4-turbo-and-gpt-4
- Context: 128,000 token
- Type: Text and Vision

### GPT 3.5-turbo

Cheap text generation model; cannot use Skills (or if it can, it's extremely unreliable)

- Model name: `gpt-3.5-turbo`
- Base URL `https://api.openai.com/v1/`
- Model type: `openai`
- Description: `OpenAI: Simple but fast text model; no Skills`

More specs:
- Details: https://platform.openai.com/docs/models/gpt-3-5-turbo
- Context: 16,385 token; max output of 4,096 token
- Type: Text