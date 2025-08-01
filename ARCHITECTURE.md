---
description: Spec System Architecture Documentation
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Spec System Architecture

## Overview

The Spec system is designed as a **static, reusable instruction library** that provides AI agents with comprehensive guidance for project development. This document explains the architecture to prevent confusion about file locations, patterns, and design decisions.

## Core Architecture Principles

### 1. Static Instruction Files (Immutable)

**Location:** `.spec/` directory  
**Purpose:** Read-only instructions that AI agents follow  
**Behavior:** Never modified by AI - pulled from git for each new project  
**Content:** Commands, instructions, standards, and templates  

### 2. Project-Specific Files (Generated)

**Location:** `[PROJECT_NAME]-spec/` directory (project root)  
**Purpose:** Project-specific documentation and configuration  
**Behavior:** Created and modified by AI based on static instructions  
**Content:** Mission, roadmap, decisions, project memory, etc.  

### 3. Runtime Files (Generated)

**Location:** Project root  
**Purpose:** Active project tracking and logging  
**Behavior:** Created and updated by AI during project execution  
**Content:** Checklist, AI logs, configuration files, etc.  

## File Location Patterns

### Static Instructions (Never Modified)

```markdown
.spec/
├── commands/           # Command entry points
├── instructions/       # Detailed instruction files
└── standards/         # Code style and best practices
```

### Project-Specific Files (Generated Per Project)

```markdown
[PROJECT_NAME]-spec/
├── product/           # Product documentation
├── specs/            # Feature specifications
├── ai-log.md         # AI activity log
├── config.yml        # Project configuration
└── project-memory.md # Project memory
```

### Runtime Files (Generated Per Project)

```markdown
Project Root/
├── checklist.md      # Project task checklist
├── README.md         # Project overview
└── [other project files]
```

## Common Patterns Explained

### 1. File Path "Conflicts" Are Intentional

**What might look like a conflict:**

- Static instruction says "Create `[PROJECT_NAME]-spec/ai-log.md`"
- Same instruction says "Location: Always in project root"

**What it actually means:**

- Create the file in the `[PROJECT_NAME]-spec/` directory
- This directory is located in the project root
- No conflict - just specifying the full path

### 2. "Repetitive" Integration Sections Are Intentional

**Why each command has similar integration sections:**

- Each command is a standalone instruction file
- AI might read only one command file at a time
- Each command needs complete context for independent execution
- This ensures commands work regardless of which files are loaded

### 3. Command Overlap is By Design

**Command relationships:**

- `start.md` → Entry point for any project (new or existing)
- `analyze-product.md` → Deep analysis for existing projects
- `start.md` can call `analyze-product.md` when appropriate
- Each command has a specific, well-defined purpose

## Reference Patterns

### Static Instruction References

- Use `@.spec/instructions/filename.md` for static instruction files
- Use `@.spec/standards/filename.md` for standards files
- Use `@.spec/commands/filename.md` for command files

### Generated File References

- Use `[PROJECT_NAME]-spec/filename.md` for project-specific files
- Use `filename.md` (project root) for runtime files
- Always specify the full path for clarity

### Variable Substitution

- `[PROJECT_NAME]` → Actual project name (kebab-case)
- `[TIMESTAMP]` → Current timestamp
- `[CURRENT_DATE]` → Current date (YYYY-MM-DD)

## AI Agent Guidelines

### When Reading Static Instructions

1. **Never modify** files in `.spec/` directory
2. **Follow patterns** exactly as specified
3. **Create files** in locations specified by static instructions
4. **Use templates** provided in static instructions

### When Generating Project Files

1. **Create** files in `[PROJECT_NAME]-spec/` for project-specific content
2. **Create** files in project root for runtime tracking
3. **Follow** naming conventions specified in static instructions
4. **Maintain** consistency with existing project structure

### When Encountering "Conflicts"

1. **Re-read** the instruction carefully
2. **Understand** the distinction between static and generated files
3. **Follow** the most specific instruction given
4. **Assume** the pattern is intentional unless clearly contradictory

## Common Misunderstandings

IF file paths are conflicting:
   ❌ "File path conflicts"
ELSE:
  ✅ "File paths resolved"

**Reality:** Different file types have different purposes and locations

IF repetitive boilerplate is detected:
  ❌ "Repetitive boilerplate"
ELSE:
   ✅ "Clean, reusable patterns"

**Reality:** Each command needs complete context for independent execution

IF command overlap is detected:
  ❌ "Command overlap"

ELSE:
 ✅ "Clear command separation"

**Reality:** Commands have specific purposes and can work together

IF inconsistent patterns are detected:
  ❌ "Inconsistent patterns"
ELSE:
  ✅ "Consistent patterns"

**Reality:** Patterns are consistent within their respective file types

## Success Criteria

A properly functioning Spec system should:

IF static instructions never change:
  [x] Have static instructions that never change
ELSE:
  [ ] Have static instructions that never change

IF project-specific files are generated in correct locations:
  [x] Generate project-specific files in correct locations
ELSE:
  [ ] Generate project-specific files in correct locations

IF clear separation between static and generated content is maintained:
  [x] Maintain clear separation between static and generated content
ELSE:
  [ ] Maintain clear separation between static and generated content

IF consistent patterns for AI agents are provided:
  [x] Provide consistent patterns for AI agents to follow
ELSE:
  [ ] Provide consistent patterns for AI agents to follow

IF reuse across multiple projects is enabled:
  [x] Enable reuse across multiple projects
ELSE:
  [ ] Enable reuse across multiple projects

## Conclusion

The Spec system is designed as a sophisticated, reusable instruction library. What might appear as conflicts or redundancies are actually intentional design patterns that ensure the system works reliably across different projects and AI agents. Understanding this architecture is key to using the system effectively.
