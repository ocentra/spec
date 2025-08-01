# Spec System

> **Transform AI coding from chaotic prompting into structured, predictable development**

The Spec system is a **comprehensive, static instruction library** designed to make AI agents work like senior developers on your team. With nearly **70k tokens** of highly detailed, modularized, and task-specific instructions, it provides the context, structure, and workflows that turn AI coding from frustrating trial-and-error into reliable, consistent development.

## 🚀 Why Use Spec System?

Stop wrestling with AI that writes the wrong code. Spec System transforms coding agents from confused assistants into trusted developers who truly understand your codebase and follow your patterns.

### 3 Core Benefits

#### 1. **Complete Context, Not Just Prompts**

Unlike basic AI setups, Spec System provides comprehensive instructions that work together:

- **Standards** - Your coding style, tech stack, and best practices
- **Instructions** - Detailed workflows for every development task
- **Commands** - Simple entry points for AI tools to access the system

**Result**: AI writes code that looks like you wrote it—first time, every time.

#### 2. **Structured Development, Not Chaos**

Spec System replaces random prompting and circular rewrites with a proven workflow. It automatically:

- Writes comprehensive specs before coding begins
- Breaks features into trackable, TDD-focused tasks
- Documents key decisions as they happen
- Updates your roadmap as features ship

**Difference**: Ship features faster with clear specs and completed tasks—not endless cycles of (re)explaining requirements and redoing work.

#### 3. **Your Standards, Your Way**

Spec System is completely yours to shape. Define your own coding standards, write custom instructions, and adapt every workflow to match how your team operates. No rigid interfaces or prescribed processes—just markdown files you control. Works seamlessly with any AI tool or IDE you choose.

**Relief**: Your coding agent finally feels like a senior developer on your team—thinking your way, following your patterns, and shipping at your standards.

## 🔄 How Spec System Works

Spec System works through a **static instruction library** that AI agents follow. Think of it as a comprehensive rulebook that tells AI exactly how to behave like a senior developer on your team.

It essentially acts as a highly detailed instruction manual or a "senior developer in a box" that enforces a specific, opinionated workflow. The core idea is to move away from chaotic and iterative prompting towards a more disciplined, spec-driven development process.

### Core Principles

- **Static and Reusable Instructions**: The `.spec/` directory contains a library of immutable instructions, standards, and commands that are meant to be read-only for the AI. This ensures consistency across projects.
- **Project-Specific Generation**: For each project, the system generates a `[PROJECT_NAME]-spec/` directory, which holds all the project-specific artifacts like the product mission, roadmap, and decision logs.
- **Spec-Driven Development**: A crucial and heavily enforced rule is that no application code should be written until all specifications are complete. This includes defining the product, technology stack, roadmap, and breaking down features into detailed tasks.
- **Comprehensive Documentation**: The system automates the creation of a wide range of documentation, from high-level product vision to detailed technical specifications and API schemas.
- **AI-Agnostic with Configuration**: It's designed to work with various AI coding assistants (Cursor, Claude, Gemini) by generating the necessary configuration files to integrate them into the workflow.
- **Phase-Based Orchestration**: The development process is broken down into distinct phases, which are executed sequentially, ensuring that prerequisites are met before moving to the next stage.
- **Memory and Logging**: The system maintains a `project-memory.md` for context and a detailed `ai-log.md` to track all actions, decisions, and errors, providing transparency and auditability.
- **User-Centric Workflow**: While highly automated, the system includes numerous checkpoints for user input, review, and approval, ensuring the final product aligns with the user's vision.

### Development Workflow

#### **Phase 1: Initialization** (`start.md`)
A new or existing project is identified. The system configures the AI assistant and can initiate the planning phase.

#### **Phase 2: Product Planning** (`plan-product.md`)
The user is prompted for the project's vision, key features, target users, and technology stack. This information is used to generate foundational documents like `mission.md`, `roadmap.md`, and `tech-stack.md`.

**Interactive Process**: Spec System doesn't just generate files—it **interactively guides you** through the entire development process:

```markdown
@plan-product

AI: "What type of project are you building?"
You: "A SaaS tool for customer feedback"

AI: "Who are your target users?"
You: "Product managers at B2B SaaS companies"

AI: "What are your key features?"
You: "Feedback collection, sentiment analysis, reporting dashboard"

AI: "Do you have a preferred tech stack?"
You: "Use my defaults"

AI: "Let me create your project structure..."
```

#### **Phase 3: Specification Creation** (`create-spec.md`)
For each new feature, a detailed specification is created. This includes user stories, scope, technical requirements, and potentially database and API specifications. The output is a set of "sub-spec" documents.

#### **Phase 4: Task Execution** (`execute-tasks.md`)
Once a spec is approved, the work is broken down into a `tasks.md` file. The AI then executes these tasks, following a Test-Driven Development (TDD) approach where tests are often the first sub-task.

#### **Phase 5: Status and Updates** (`status.md`, `update.md`)
The system provides commands to check the current project status and to synchronize the documentation with the actual state of the codebase.

### File Architecture

#### **Static Instructions (Shared Foundation)**

The `.spec/` directory contains a shared instruction library that serves as the foundation for all projects:

- **Commands** - Simple entry points for AI tools (`@start`, `@plan-product`, etc.)
- **Instructions** - Detailed workflows for every development task
- **Standards** - Your coding style, tech stack, and best practices

**Important**: These files are designed as a shared, reusable foundation. Individual projects don't modify these files during development - they're treated as read-only instructions. However, contributors can fork the repository to improve the system or create their own customized versions.

#### **Project-Specific Files (Auto-Generated)**

When you first run `@start` and `@plan-product`, Spec System automatically generates several key files:

**Project Documentation:**
- **`[PROJECT_NAME]-spec/product/mission.md`** - Complete product vision with pitch, users, problems, and features
- **`[PROJECT_NAME]-spec/product/tech-stack.md`** - Technology choices and configurations
- **`[PROJECT_NAME]-spec/product/roadmap.md`** - Development phases and feature timeline
- **`[PROJECT_NAME]-spec/product/decisions.md`** - Technical decisions log with rationale
- **`[PROJECT_NAME]-spec/product/mission-lite.md`** - Condensed mission for AI context efficiency

**Project Management:**
- **`[PROJECT_NAME]-spec/project-memory.md`** - AI's persistent memory and context tracking
- **`[PROJECT_NAME]-spec/checklist.md`** - Task completion tracking and progress
- **`[PROJECT_NAME]-spec/ai-log.md`** - Detailed activity log and audit trail

**AI Assistant Configuration:**
- **`.cursor/rules/`** - Cursor IDE configuration files
- **`.claude/`** - Claude Code configuration files  
- **`GEMINI.md`** - Gemini configuration file

#### **What to Expect During Setup**

1. **Interactive Questions**: AI asks about your project vision, features, users, and tech preferences
2. **Smart Defaults**: Uses your existing tech stack preferences when available
3. **Missing Information**: Prompts for any required details not provided
4. **File Generation**: Creates all documentation with your specific project details
5. **AI Integration**: Sets up your preferred AI assistants with Spec command access

### AI Memory & Context Management

#### **Persistent Memory System**

- **`project-memory.md`**: AI remembers every decision, context, and progress
- **`checklist.md`**: Tracks completed tasks and next steps
- **`ai-log.md`**: Records all AI activities and decisions
- **`decisions.md`**: Documents technical choices and rationale

#### **Context Hopping**

AI can seamlessly switch between:

- **Planning**: Review and update roadmap
- **Development**: Execute specific tasks
- **Review**: Check status and progress
- **Debugging**: Analyze issues and solutions

#### **Example Context Switching**

```markdown
# Check current status
@status

# Continue where you left off
@execute-tasks

# Create new feature spec
@create-spec

# Update project documentation
@update
```

### Runtime Integration

Spec System integrates with your existing workflow:

- **AI Tool Configuration** - Creates `.cursor/`, `.claude/`, `GEMINI.md` files
- **Project Documentation** - Generates mission, roadmap, and technical specs
- **Development Tracking** - Maintains progress and context across sessions

## 🛠️ Installation & Setup

### Quick Setup

```bash
curl -sSL https://raw.githubusercontent.com/ocentra/spec/main/setup.sh | bash
```

This downloads the complete Spec System into your project's `.spec/` directory. Then use `@start.md` to begin - the system will guide you through AI assistant setup and project initialization.

**Note**: The setup script removes itself after installation, so your project root stays clean.

### AI Tool Integration

Spec System works with all major AI coding tools. After running `@start.md`, you'll be guided through setting up:

- **Cursor IDE** - Creates `.cursor/rules/` files
- **Claude Code** - Creates `.claude/` configuration
- **Gemini** - Creates `GEMINI.md` configuration
- **Other AI tools** - Manual setup instructions provided

The system automatically detects your preferred AI tools and creates the necessary configuration files.

## 📁 File Structure

### Token Optimization

**NEW**: Check `.spec/FILE_INDEX.md` first for efficient token usage. This index provides:

- Quick lookup of all files and their purposes
- Task-specific reading guides
- File size and complexity indicators
- Smart reading strategies to minimize token consumption

### File Structure Details

```markdown
.spec/
├── commands/           # Command entry points for AI tools
│   ├── start-cmd.md   # Project initialization
│   ├── plan-product-cmd.md # Product planning
│   ├── create-spec-cmd.md  # Feature specification
│   ├── execute-tasks-cmd.md # Task execution
│   ├── status-cmd.md  # Project status
│   ├── update-cmd.md  # Project updates
│   ├── analyze-product-cmd.md # Existing codebase analysis
│   ├── phase-orchestrator-cmd.md # Phase-based development
│   └── markdown-rules-cmd.md # Documentation standards
├── instructions/       # Detailed instruction files (comprehensive)
│   ├── plan-product.md # Product planning rules
│   ├── create-spec.md  # Spec creation rules
│   ├── execute-tasks.md # Task execution rules
│   ├── phase-orchestrator.md # Phase-based development
│   ├── ai-rules.md    # AI operating rules
│   ├── ai-logging.md  # AI activity logging
│   ├── config-management.md # Configuration management
│   ├── analyze-product.md # Existing codebase analysis
│   ├── checklist-management.md # Task tracking
│   ├── markdown-rules.md # Documentation standards
│   └── config.yml     # System configuration
├── standards/         # Global development standards
│   ├── tech-stack.md  # Default technology choices
│   ├── code-style.md  # Code formatting rules
│   └── best-practices.md # Development philosophy
├── ARCHITECTURE.md    # System architecture explanation
├── start.md          # Main start instruction
├── status.md         # Status check instruction
├── update.md         # Update instruction
└── README.md         # This file
```

### Generated Project Structure (After Setup)

After running `@start` and `@plan-product`, your project will have this structure:

```markdown
your-project/
├── .cursor/           # Cursor IDE configuration
│   └── rules/        # AI assistant rules
├── .claude/          # Claude Code configuration (if using)
├── GEMINI.md         # Gemini configuration (if using)
├── [PROJECT_NAME]-spec/  # Project-specific documentation
│   ├── product/      # Product documentation
│   │   ├── mission.md # Product vision and goals
│   │   ├── tech-stack.md # Project-specific tech choices
│   │   ├── roadmap.md # Feature roadmap and phases
│   │   ├── decisions.md # Technical decisions log
│   │   └── config.yml # Project configuration
│   ├── specs/        # Feature specifications
│   │   └── [DATE]-[feature-name]/ # Individual feature specs
│   │       ├── spec.md # Feature requirements
│   │       ├── technical-spec.md # Technical implementation
│   │       ├── tasks.md # Task breakdown
│   │       └── sub-specs/ # Detailed sub-specifications
│   ├── project-memory.md # AI memory and context
│   ├── checklist.md  # Project progress tracking
│   └── ai-log.md     # AI activity log
├── checklist.md      # Project task checklist (project root)
├── src/              # Your source code
├── tests/            # Your test files
├── docs/             # Project documentation
├── README.md         # Project overview
└── package.json      # Project dependencies
```

## 🚀 Usage Examples

### Starting a New Project

```bash
@start
```

Your agent will:

- ✅ Analyze project requirements
- ✅ Set up AI assistant configurations
- ✅ Create project structure
- ✅ Generate initial documentation

### Planning a Product

```bash
@plan-product

I want to build a SaaS tool for tracking customer feedback
Key features: feedback collection, sentiment analysis, reporting dashboard
Target users: Product managers at B2B SaaS companies
Tech stack: Use my defaults
```

Your agent will:

- ✅ Create `[PROJECT_NAME]-spec/product/` structure
- ✅ Generate mission.md with product vision
- ✅ Create a comprehensive roadmap
- ✅ Document all technical decisions
- ✅ Set up your preferred tech stack

### Creating a Feature Spec

```bash
@create-spec

Let's add user authentication with email/password and OAuth
```

Your agent will:

- 📋 Create a Spec Requirements Document (SRD)
- 🔧 Write technical specifications
- 💾 Design database schemas (if needed)
- 🔌 Document API endpoints (if needed)
- ✅ Break down work into ordered tasks

### Executing Tasks

```bash
@execute-tasks

Work on the next task in the user authentication project
```

Your agent will:

- 📝 Follow your coding standards exactly
- 🧪 Write tests first (if that's your style)
- 💾 Commit with clear messages
- ✅ Update task progress as it goes
- 🔊 Play a sound when done

## 🔧 Key Features

### **Comprehensive Instruction Set**

- Highly detailed instructions
- Covers every aspect of AI-driven development
- Structured, reusable, and maintainable

### **Multi-Tool Support**

- Works with Claude Code, Cursor, Gemini, and more
- Consistent experience across all AI tools
- Easy setup and configuration

### **Structured Development**

- **Spec-driven development** workflow
- **TDD-focused** task execution
- **Phase-based** project orchestration

### **Context Management**

- Smart context loading for efficiency
- Project-specific customization
- Persistent memory across sessions

### **Quality Assurance**

- Built-in code review processes
- Automated testing integration
- Documentation standards enforcement

## 🎯 Workflow Examples

### **Monday Morning Routine**

```bash
What's next on the roadmap?
```

Your agent checks the roadmap and suggests the next uncompleted feature.

### **Quick Bug Fix**

```bash
@create-spec

Users report the dashboard is slow when filtering by date
```

Even for bug fixes, your agent creates a mini-spec with clear tasks.

### **Continuing Work**

```bash
@execute-tasks

Continue where we left off yesterday
```

Your agent reads the task list and picks up exactly where it stopped.

## 🔄 Continuous Improvement

Spec System gets better with use. Each spec teaches you something about your process, your preferences, and how to better guide your AI agents.

### **The Refinement Loop**

After each feature or spec, ask yourself:

- **What worked well?** → Patterns to document and repeat
- **What needed correction?** → Gaps in your standards or instructions
- **What surprised you?** → Unexpected approaches worth adopting

### **Common Refinements**

- Add specific examples to code-style.md based on actual code
- Update best-practices.md with patterns you had to correct
- Clarify any tech stack choices that caused confusion

## 🛡️ Critical Enforcement

### NO PROJECT-CENTRIC CODE WRITING UNTIL ALL SPEC TASKS COMPLETE

Spec System enforces a critical rule: All spec-related tasks must be completed and verified before any project code is written. This ensures:

- Complete project planning and mission definition
- Comprehensive tech stack analysis and documentation
- Detailed product roadmap creation
- Thorough feature specification development
- Complete task breakdown and prioritization

This enforcement applies across all project phases and cannot be bypassed.

## 📚 Documentation

- **[ARCHITECTURE.md](ARCHITECTURE.md)** - Detailed system architecture
- **[commands/](commands/)** - Command entry points and usage
- **[instructions/](instructions/)** - Detailed instruction files
- **[standards/](standards/)** - Development standards and best practices

## 🤝 Contributing

This is a static instruction system designed for continuous improvement. The `.spec/` files serve as a shared foundation that individual projects use as read-only instructions, but the system itself can be improved and customized.

### To contribute to the core system

1. Fork the repository
2. Make changes to instruction files
3. Test with multiple projects
4. Submit a pull request

**For detailed development instructions, see [DEVELOPMENT.md](DEVELOPMENT.md)**

### To create your own customized version

1. Fork the repository
2. Modify instructions to match your team's preferences
3. Use your customized version in your projects
4. Share improvements back to the community if desired

## 📄 License

MIT License - see [LICENSE](LICENSE) file for details.

## ❓ Frequently Asked Questions

<details>
<summary><strong>What is Spec System?</strong></summary>

Spec System is a comprehensive, static instruction library designed to make AI agents work like senior developers on your team. It provides structured workflows, coding standards, and development processes that transform chaotic AI prompting into predictable, consistent development.

</details>

<details>
<summary><strong>What is 'spec-driven development'?</strong></summary>

Spec-driven development is a methodology where all application code is written only after complete specifications are finalized. This includes product definition, technology stack decisions, feature breakdowns, and detailed task specifications. The system enforces this rule strictly to ensure proper planning before implementation.

</details>

<details>
<summary><strong>What makes Spec System different?</strong></summary>

Unlike basic AI setups, Spec System provides:

- **Complete Context**: Not just prompts, but comprehensive instructions that work together
- **Structured Workflow**: Replaces random prompting with proven, phase-based development
- **Your Standards**: Completely customizable to match your team's preferences
- **AI-Agnostic**: Works with any AI tool (Cursor, Claude, Gemini, etc.)
- **Memory & Logging**: Maintains context and provides full auditability

</details>

<details>
<summary><strong>Who created Spec System and what was the idea?</strong></summary>

Spec System was created by **Sujan Mishra** to address the common struggles developers face with AI-assisted development. After observing many people struggle with chaotic AI workflows, inconsistent code quality, and the need to constantly re-explain requirements, the system was designed to provide a "senior developer in a box" experience that enforces disciplined, spec-driven development processes.

**Connect with the creator:**
- **Website**: [Ocentra](https://ocentra.ca/) - Professional services and consulting
- **LinkedIn**: [Sujan Mishra](https://www.linkedin.com/in/sujanmishra/) - Connect for questions and collaboration

</details>

<details>
<summary><strong>How does Spec System manage context efficiently?</strong></summary>

The system uses several strategies:

- **Smart File Index**: `FILE_INDEX.md` helps AI choose only necessary files
- **Task-Specific Reading**: Different workflows require different instruction sets
- **Reference vs. Read**: Auto-generated files are referenced, not read entirely
- **Memory System**: `project-memory.md` maintains persistent context across sessions
- **Token Optimization**: Reading guides help minimize token consumption

</details>

<details>
<summary><strong>Does Spec System support Claude, Gemini, and other AI assistants?</strong></summary>

Yes! Spec System is designed to work with all major AI coding tools:

- **Cursor IDE**: Creates `.cursor/rules/` configuration files
- **Claude Code**: Generates `.claude/` configuration
- **Gemini**: Creates `GEMINI.md` instruction file
- **Other AI tools**: Manual setup instructions provided

The system automatically detects your preferred AI tools and creates the necessary configuration files.

</details>

<details>
<summary><strong>How do I get started with Spec System?</strong></summary>

1. **Quick Setup**: Run `curl -sSL https://raw.githubusercontent.com/ocentra/spec/main/setup.sh | bash`
2. **Start Project**: Use `@start.md` to begin
3. **Plan Product**: Use `@plan-product.md` to define your project
4. **Create Specs**: Use `@create-spec.md` for feature specifications
5. **Execute Tasks**: Use `@execute-tasks.md` to implement features

The system will guide you through each step interactively.

</details>

<details>
<summary><strong>Can I customize Spec System for my team?</strong></summary>

Absolutely! Spec System is designed to be completely customizable:

- **Fork & Modify**: Create your own version with team-specific standards
- **Custom Instructions**: Modify any instruction file to match your preferences
- **Team Standards**: Define your own coding style, tech stack, and workflows
- **Share Improvements**: Contribute back to the community if desired

</details>

<details>
<summary><strong>I have more questions!</strong></summary>

Great! Feel free to reach out:

- **LinkedIn**: [Sujan Mishra](https://www.linkedin.com/in/sujanmishra/)
- **Issues**: Open an issue for technical questions in github here, or directly message me in LinkedIn

Always happy to help you get the most out of Spec System!

</details>

---

**Ready to transform your AI coding experience?** Start with `@start` and let Spec System guide your AI agents to write code that looks like you wrote it—first time, every time.
