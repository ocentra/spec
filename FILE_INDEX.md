---
description: Spec System File Index
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Spec System File Index

> **AI Token Optimization Guide** - Read this first to decide which files you need

This index helps AI agents efficiently navigate the Spec System by providing a quick lookup of all files, their purposes, and when to read them.

## 🎯 How to Use This Index

1. **First**: Read this file to understand what's available
2. **Second**: Identify which files you need for your current task
3. **Third**: Read only the necessary files
4. **Fourth**: Reference specific sections as needed

## 📁 Core Command Files (Always Read First)

| File | Purpose | When to Read | Token Count |
|------|---------|--------------|-------------|
| `start.md` | Project initialization and setup | Starting new project or checking setup | ~2k |
| `status.md` | Project status and memory system | Checking project state, getting overview | ~3k |
| `update.md` | Sync code with documentation | After code changes, updating project | ~2k |

## 🛠️ Instruction Files (Read Based on Task)

### Project Planning & Setup

| File | Purpose | When to Read | Token Count |
|------|---------|--------------|-------------|
| `instructions/plan-product.md` | Product planning and documentation | Creating new product, defining mission | ~8k |
| `instructions/analyze-product.md` | Analyze existing codebase | Working with existing project | ~4k |

### Feature Development

| File | Purpose | When to Read | Token Count |
|------|---------|--------------|-------------|
| `instructions/create-spec.md` | Create feature specifications | Adding new features, creating specs | ~6k |
| `instructions/execute-tasks.md` | Execute development tasks | Implementing features, coding | ~8k |
| `instructions/phase-orchestrator.md` | Phase-based development | Managing project phases | ~6k |

### Project Management

| File | Purpose | When to Read | Token Count |
|------|---------|--------------|-------------|
| `instructions/checklist-management.md` | Task tracking and progress | Managing tasks, tracking progress | ~3k |
| `instructions/ai-logging.md` | AI activity logging | Recording actions, maintaining logs | ~2k |
| `instructions/config-management.md` | Configuration management | Managing project settings | ~2k |

### Standards & Rules

| File | Purpose | When to Read | Token Count |
|------|---------|--------------|-------------|
| `instructions/ai-rules.md` | AI operating rules | Understanding AI behavior rules | ~3k |
| `instructions/markdown-rules.md` | Documentation standards | Writing documentation | ~2k |
| `standards/code-style.md` | Code formatting rules | Writing code, style enforcement | ~2k |
| `standards/tech-stack.md` | Technology choices | Tech decisions, stack setup | ~2k |
| `standards/best-practices.md` | Development philosophy | Understanding project approach | ~2k |

## 📋 Task-Specific Reading Guides

### For New Project Setup

**Read these files in order:**

1. `start.md` (2k tokens)
2. `instructions/plan-product.md` (8k tokens)
3. `instructions/checklist-management.md` (3k tokens)
**Total: ~13k tokens**

### For Feature Development

**Read these files in order:**

1. `status.md` (3k tokens) - Check current state
2. `instructions/create-spec.md` (6k tokens) - Create spec
3. `instructions/execute-tasks.md` (8k tokens) - Implement
**Total: ~17k tokens**

### For Project Status Check

**Read only:**

1. `status.md` (3k tokens)
**Total: ~3k tokens**

### For Code Updates

**Read these files in order:**

1. `update.md` (2k tokens)
2. `status.md` (3k tokens) - If need current state
**Total: ~5k tokens**

### For Documentation Updates

**Read only:**

1. `instructions/markdown-rules.md` (2k tokens)
**Total: ~2k tokens**

## 🔄 Auto-Generated Files (Reference Only)

These files are created by the system and should be referenced, not read entirely:

### Project-Specific Files

| File | Location | Purpose | Reference Method |
|------|----------|---------|------------------|
| `[PROJECT_NAME]-spec/product/mission.md` | Project root | Product vision and goals | Read specific sections |
| `[PROJECT_NAME]-spec/product/tech-stack.md` | Project root | Technology choices | Read specific sections |
| `[PROJECT_NAME]-spec/product/roadmap.md` | Project root | Development phases | Read specific sections |
| `[PROJECT_NAME]-spec/product/decisions.md` | Project root | Technical decisions | Read recent entries |
| `[PROJECT_NAME]-spec/project-memory.md` | Project root | AI memory and context | Read relevant sections |
| `[PROJECT_NAME]-spec/checklist.md` | Project root | Task tracking | Read current status |
| `[PROJECT_NAME]-spec/ai-log.md` | Project root | Activity log | Read recent entries |

### Runtime Files

| File | Location | Purpose | Reference Method |
|------|----------|---------|------------------|
| `checklist.md` | Project root | Project task checklist | Read current status |
| `README.md` | Project root | Project documentation | Read specific sections |

## 🎯 Smart Reading Strategies

### For Status Checks

```markdown
1. Read status.md (3k tokens)
2. Reference checklist.md for current tasks
3. Reference project-memory.md for context
```

### For Feature Development Workflow

```markdown
1. Read create-spec.md (6k tokens)
2. Reference mission.md for product context
3. Reference tech-stack.md for technical context
4. Read execute-tasks.md (8k tokens) when ready to implement
```

### For Project Updates

```markdown
1. Read update.md (2k tokens)
2. Reference ai-log.md for recent changes
3. Reference decisions.md for context
```

## 📊 Token Usage Optimization

### Minimal Reading (3-5k tokens)

- Status checks
- Quick updates
- Documentation reviews

### Standard Reading (8-15k tokens)

- Feature development
- Project planning
- Task execution

### Comprehensive Reading (15-25k tokens)

- New project setup
- Major refactoring
- Complex feature development

## 🔍 File Search Patterns

### By Task Type

- **Planning**: `plan-product.md`, `analyze-product.md`
- **Development**: `create-spec.md`, `execute-tasks.md`
- **Management**: `checklist-management.md`, `ai-logging.md`
- **Standards**: `code-style.md`, `markdown-rules.md`

### By File Type

- **Static Instructions**: `.spec/` directory files
- **Auto-Generated**: `[PROJECT_NAME]-spec/` directory files
- **Runtime**: Project root files

## ⚡ Quick Reference Commands

### Common Tasks

| Task | Primary File | Secondary Files |
|------|--------------|-----------------|
| Start project | `start.md` | `plan-product.md` |
| Check status | `status.md` | `checklist.md` |
| Create feature | `create-spec.md` | `mission.md`, `tech-stack.md` |
| Execute tasks | `execute-tasks.md` | `checklist.md` |
| Update project | `update.md` | `ai-log.md` |

### File Categories

- **Commands**: `start.md`, `status.md`, `update.md`
- **Instructions**: `instructions/` directory
- **Standards**: `standards/` directory
- **Auto-Generated**: `[PROJECT_NAME]-spec/` directory

## 🎯 Best Practices

1. **Always read this index first** to understand what's available
2. **Read only what you need** for the current task
3. **Reference auto-generated files** instead of reading entirely
4. **Use the task-specific guides** for efficient reading
5. **Check token counts** before reading large files
6. **Reference specific sections** when possible

## 📝 Notes

- Token counts are approximate and may vary
- Auto-generated files should be referenced, not read entirely
- Static instruction files are read-only during project execution
- Runtime files are updated by the system and should be referenced
- This index should be updated when new files are added to the system
