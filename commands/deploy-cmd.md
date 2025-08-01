---
description: Deploy Command for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Deploy Command

## Usage

```bash
@deploy
```

## Description

Execute deployment based on the previously defined deployment strategy. This command generates all necessary deployment files, sets up infrastructure, and deploys the application according to the specifications in `deployment-strategy.md`.

## Instructions

Follow the comprehensive deployment execution rules in `@.spec/instructions/deploy.md`.

## Prerequisites

- Complete deployment strategy in `[PROJECT_NAME]-spec/product/deployment-strategy.md`
- Valid tech stack configuration in `[PROJECT_NAME]-spec/product/tech-stack.md`
- Deployment decisions documented in `[PROJECT_NAME]-spec/product/decisions.md`

## File Generation Rules

### Static vs Generated Files

- **STATIC FILES**: `instructions/deployment-planning.md`, `instructions/deploy.md` are templates - DO NOT MODIFY
- **GENERATED FILES**: Create new files in `[PROJECT_NAME]-spec/` and `deployment/` directories
- **MARKDOWN RULES**: Apply `@markdown-rules.md` ONLY to generated files, not static instruction files

### File Creation Process

1. **Read** static instruction files for guidance
2. **Generate** new project-specific files following markdown rules
3. **Place** generated files in appropriate project directories
4. **Apply** proper markdown formatting to generated files only
