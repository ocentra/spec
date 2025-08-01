# Spec System - Gemini Instructions

This file provides Gemini with instructions on how to use the Spec System for project management and development.

## Overview

The Spec System is a comprehensive project management framework that provides structured commands for planning, developing, and maintaining projects. Each command has detailed instructions that should be followed for optimal results.

## Available Commands

### Core Project Commands

#### @start.md - Start Project

**When to use**: When starting a new project or continuing an existing one
**Purpose**: Comprehensive project analysis and setup guidance
**Instructions**: Follow the detailed instructions in `start.md` for project setup and analysis

#### @plan-product.md - Plan Product

**When to use**: When planning a new product or feature
**Purpose**: Create comprehensive product documentation and planning
**Instructions**: Follow the detailed instructions in `instructions/plan-product.md`

#### @analyze-product.md - Analyze Product

**When to use**: When analyzing an existing product or codebase
**Purpose**: Analyze current state and provide improvement recommendations
**Instructions**: Follow the detailed instructions in `instructions/analyze-product.md`

#### @create-spec.md - Create Specification

**When to use**: When creating detailed feature specifications
**Purpose**: Generate comprehensive technical specifications
**Instructions**: Follow the detailed instructions in `instructions/create-spec.md`

#### @execute-tasks.md - Execute Tasks

**When to use**: When implementing features or working on development tasks
**Purpose**: Execute planned tasks with structured guidance
**Instructions**: Follow the detailed instructions in `instructions/execute-tasks.md`

### Project Management Commands

#### @status.md - Check Status

**When to use**: When checking current project status and progress
**Purpose**: Generate comprehensive project status reports
**Instructions**: Follow the detailed instructions in `status.md`

#### @update.md - Update Project

**When to use**: When syncing code with documentation and updating project state
**Purpose**: Update project documentation and identify discrepancies
**Instructions**: Follow the detailed instructions in `update.md`

#### @phase-orchestrator.md - Phase Orchestrator

**When to use**: When managing project phases and transitions
**Purpose**: Orchestrate project phases and manage transitions
**Instructions**: Follow the detailed instructions in `instructions/phase-orchestrator.md`

## How to Use Commands

1. **Identify the user's intent**: Determine what they want to accomplish
2. **Select the appropriate command**: Choose the command that best matches their needs
3. **Follow the detailed instructions**: Each command has comprehensive instructions in the specified file
4. **Execute step by step**: Follow the instructions carefully for best results

## File Structure Reference

- `commands/` - Command entry points and quick references
- `instructions/` - Detailed instructions for each command
- `standards/` - Best practices, code style, and tech stack guidelines
- `config.yml` - Configuration settings

## Important Notes

- **Always follow the detailed instructions**: Each command has comprehensive instructions that should be followed exactly
- **Check file structure first**: Use `FILE_INDEX.md` to understand the complete file structure
- **Follow AI rules**: Always comply with the AI rules in `instructions/ai-rules.md`
- **Use markdown rules**: Follow the markdown formatting rules in `instructions/markdown-rules.md`

## Quick Reference

| User Intent | Command | Instructions File |
|-------------|---------|-------------------|
| Start new project | @start.md | `start.md` |
| Plan product | @plan-product.md | `instructions/plan-product.md` |
| Analyze existing product | @analyze-product.md | `instructions/analyze-product.md` |
| Create feature spec | @create-spec.md | `instructions/create-spec.md` |
| Execute development tasks | @execute-tasks.md | `instructions/execute-tasks.md` |
| Check project status | @status.md | `status.md` |
| Update project docs | @update.md | `update.md` |
| Manage project phases | @phase-orchestrator.md | `instructions/phase-orchestrator.md` |

## Error Handling

If you encounter issues:
1. Check if the required files exist
2. Verify the project structure is correct
3. Follow the error handling procedures in the instruction files
4. Ask the user for clarification if needed

## Best Practices

- Always read the complete instruction file before proceeding
- Follow the step-by-step process outlined in each command
- Maintain consistency with project standards
- Update project memory and logs as instructed
- Provide clear feedback to the user throughout the process 