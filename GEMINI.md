---
description: Spec System - Gemini Instructions
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Spec System - Gemini Instructions

This file provides Gemini with instructions on how to use the Spec System for project management and development.

## Overview

The Spec System is a comprehensive project management framework that provides structured commands for planning, developing, and maintaining projects. Each command has detailed instructions that should be followed for optimal results.

## Available Commands

**DETAILED REFERENCE**: See `@FILE_INDEX.md` → `## 📁 Core Command Files` and `## 🛠️ Instruction Files`

**ESSENTIAL COMMANDS**:

- **@start.md** - Start Project (comprehensive setup guidance)
- **@status.md** - Check Status (project status and progress)
- **@update.md** - Update Project (sync code with documentation)
- **@create-spec.md** - Create Specification (feature specifications)
- **@execute-tasks.md** - Execute Tasks (development implementation)
- **@git-management.md** - Git Management (version control)

## How to Use Commands

**DETAILED GUIDE**: See `@FILE_INDEX.md` → `## 🎯 How to Use This Index`

**QUICK REFERENCE**:

1. Check file structure first using `@FILE_INDEX.md`
2. Understand system architecture using `@ARCHITECTURE.md`
3. Identify user's intent and select appropriate command
4. Follow detailed instructions in the specified file
5. Execute step by step carefully

**🚨 CRITICAL**: Before executing any development tasks, ensure ALL spec writing is complete.

## File Structure Reference

**DETAILED REFERENCE**: See `@FILE_INDEX.md` → `## 📁 Core Command Files` and `## 🛠️ Instruction Files`

**QUICK REFERENCE**:

- `commands/` - Command entry points and quick references
- `instructions/` - Detailed instructions for each command
- `standards/` - Best practices, code style, and tech stack guidelines
- `config.yml` - Configuration settings

## Important Notes

**DETAILED RULES**: See `@ai-rules.md` → `## Core Principles`

**QUICK REFERENCE**:

- Always follow the detailed instructions exactly
- Check file structure first using `@FILE_INDEX.md`
- Understand system architecture using `@ARCHITECTURE.md`
- Follow AI rules in `@ai-rules.md`
- Use markdown rules in `@markdown-rules.md`

## 🚨 CRITICAL ENFORCEMENT RULES

### NO PROJECT CODE WRITING UNTIL SPECS ARE COMPLETE

**MANDATORY**: You MUST complete ALL spec-related tasks before writing any project code.

**REQUIRED BEFORE ANY CODE:**

1. ✅ Project planning and mission definition
2. ✅ Tech stack analysis and documentation  
3. ✅ Product roadmap creation
4. ✅ Feature specification development
5. ✅ Task breakdown and prioritization
6. ✅ All spec files complete and validated

**BLOCKING RULE**: Do not proceed to code implementation until ALL specs are finalized.

**ENFORCEMENT**: This rule applies to ALL project phases and cannot be bypassed.

### SPEC COMPLETION VERIFICATION [IMPORTANT!]

Before writing any project code, verify:

- [ ] Mission document is complete
- [ ] Tech stack is documented
- [ ] Roadmap is finalized
- [ ] Feature specs are written
- [ ] Tasks are broken down
- [ ] All documentation is validated

**IF ANY SPEC ITEMS ARE INCOMPLETE**: Stop and complete them first.

## Quick Reference

**DETAILED REFERENCE**: See `@FILE_INDEX.md` → `## ⚡ Quick Reference Commands`

**ESSENTIAL COMMANDS**:

- **Start project**: `@start.md`
- **Check status**: `@status.md`
- **Create feature**: `@create-spec.md`
- **Execute tasks**: `@execute-tasks.md`
- **Update project**: `@update.md`

## Error Handling

**DETAILED RULES**: See `@ai-rules.md` → `## Error Handling`

**QUICK REFERENCE**:

- Check if required files exist
- Verify project structure is correct
- Follow error handling procedures in instruction files
- Ask user for clarification if needed

## Best Practices

**DETAILED RULES**: See `@ai-rules.md` → `## Best Practices`

**QUICK REFERENCE**:

- Read complete instruction file before proceeding
- Follow step-by-step process outlined in each command
- Maintain consistency with project standards
- Update project memory and logs as instructed
- Provide clear feedback to the user throughout the process

## 🚨 GEMINI-SPECIFIC WARNINGS

### DO NOT JUMP TO CODE WRITING

**COMMON GEMINI MISTAKE**: Starting to write project code before completing specifications.

**DETAILED RULES**: See `@ai-rules.md` → `### 🚨 When in Doubt, Ask - Don't Assume` (Code Implementation section)

**QUICK REFERENCE**:

- **MANDATORY**: Complete ALL spec writing first
- **VERIFY**: All documentation is finished
- **THEN**: Proceed to code implementation

### 🚨 SCOPE CREEP AND GIT WORKFLOW WARNINGS

**COMMON GEMINI MISTAKE**: Touching files outside intended scope and not following proper Git workflow.

**DETAILED RULES**:

- Scope Control: See `@execute-tasks.md` → `#### 🚨 Scope Validation and Control`
- Git Workflow: See `@git-management.md` → `### 🚨 AI-Assisted Development Branch Strategy`

**QUICK REFERENCE**:

- **SCOPE**: Define exact files to be modified before starting
- **GIT**: Use `@git-management.md` for all Git operations
- **BRANCH**: Use `ai/phase-task-description` naming
- **SYNC**: Pull at natural breakpoints (task completion, end of day)
- **CONFIRMATION**: Get user approval for scope changes

### 🚨 ASK BEFORE ASSUMING WARNING

**COMMON GEMINI MISTAKE**: Making assumptions when uncertain instead of asking for clarification.

**DETAILED RULES**: See `@ai-rules.md` → `### 🚨 When in Doubt, Ask - Don't Assume`

**QUICK REFERENCE**:

- **CRITICAL PRINCIPLE**: If ANY uncertainty exists, STOP and ask for clarification
- **APPLIES TO**: Code implementation, file modifications, configuration choices, design decisions, error handling, scope boundaries, technology choices
- **MANDATORY RULE**: When in doubt, ask - don't assume
