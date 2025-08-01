# Spec System

> **Transform AI coding from chaotic prompting into structured, predictable development**

The Spec system is a **comprehensive, static instruction library** designed to make AI agents work like senior developers on your team. With nearly **40k tokens** of detailed instructions, it provides the context, structure, and workflows that turn AI coding from frustrating trial-and-error into reliable, consistent development.

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

## 🏗️ How Spec System Works

Spec System works through a **static instruction library** that AI agents follow. Think of it as a comprehensive rulebook that tells AI exactly how to behave like a senior developer on your team.

### Static Instructions (Shared Foundation)

The `.spec/` directory contains a shared instruction library that serves as the foundation for all projects:

- **Commands** - Simple entry points for AI tools (`@start`, `@plan-product`, etc.)
- **Instructions** - Detailed workflows for every development task
- **Standards** - Your coding style, tech stack, and best practices

**Important**: These files are designed as a shared, reusable foundation. Individual projects don't modify these files during development - they're treated as read-only instructions. However, contributors can fork the repository to improve the system or create their own customized versions.

### Project-Specific Files (Generated Per Project)

When you use Spec System, it creates project-specific documentation:

- **`[PROJECT_NAME]-spec/`** - Project documentation and configuration
- **`checklist.md`** - Task tracking and progress
- **`project-memory.md`** - AI memory and context
- **`ai-log.md`** - Activity logging and audit trail

### Runtime Integration

Spec System integrates with your existing workflow:

- **AI Tool Configuration** - Creates `.cursor/`, `.claude/`, `.gemini/` files
- **Project Documentation** - Generates mission, roadmap, and technical specs
- **Development Tracking** - Maintains progress and context across sessions

## 🛠️ Installation & Setup

### Quick Setup

```bash
# Download Spec System into your project
curl -sSL https://raw.githubusercontent.com/ocentra/spec/main/setup.sh | bash
```

This downloads the complete Spec System into your project's `.spec/` directory. Then use `@start.md` to begin - the system will guide you through AI assistant setup and project initialization.

**Note**: The setup script removes itself after installation, so your project root stays clean.

### AI Tool Integration

Spec System works with all major AI coding tools. After running `@start.md`, you'll be guided through setting up:

- **Cursor IDE** - Creates `.cursor/rules/` files
- **Claude Code** - Creates `.claude/` configuration
- **Gemini** - Creates `.gemini/` configuration
- **Other AI tools** - Manual setup instructions provided

The system automatically detects your preferred AI tools and creates the necessary configuration files.

## 📁 File Structure

### Token Optimization

**NEW**: Check `.spec/FILE_INDEX.md` first for efficient token usage. This index provides:

- Quick lookup of all files and their purposes
- Task-specific reading guides
- Token count estimates for each file
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
├── instructions/       # Detailed instruction files (40k+ tokens)
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
├── .gemini/          # Gemini configuration (if using)
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

## 🔄 How Spec System Works

### Auto-Generation Process

When you first run `@start` and `@plan-product`, Spec System automatically generates several key files:

#### **Project Documentation (Auto-Generated)**

- **`[PROJECT_NAME]-spec/product/mission.md`** - Complete product vision with pitch, users, problems, and features
- **`[PROJECT_NAME]-spec/product/tech-stack.md`** - Technology choices and configurations
- **`[PROJECT_NAME]-spec/product/roadmap.md`** - Development phases and feature timeline
- **`[PROJECT_NAME]-spec/product/decisions.md`** - Technical decisions log with rationale
- **`[PROJECT_NAME]-spec/product/mission-lite.md`** - Condensed mission for AI context efficiency

#### **Project Management Files (Auto-Generated)**

- **`[PROJECT_NAME]-spec/project-memory.md`** - AI's persistent memory and context tracking
- **`[PROJECT_NAME]-spec/checklist.md`** - Task completion tracking and progress
- **`[PROJECT_NAME]-spec/ai-log.md`** - Detailed activity log and audit trail
- **`README.md`** - User-facing project documentation for GitHub

#### **AI Assistant Configuration (Auto-Generated)**

- **`.cursor/rules/`** - Cursor IDE configuration files
- **`.claude/`** - Claude Code configuration files  
- **`.gemini/`** - Gemini configuration files

#### **What to Expect During Setup**

1. **Interactive Questions**: AI asks about your project vision, features, users, and tech preferences
2. **Smart Defaults**: Uses your existing tech stack preferences when available
3. **Missing Information**: Prompts for any required details not provided
4. **File Generation**: Creates all documentation with your specific project details
5. **AI Integration**: Sets up your preferred AI assistants with Spec command access

### Interactive Question-Asking Process

Spec System doesn't just generate files—it **interactively guides you** through the entire development process:

#### **Step-by-Step Planning**

1. **Project Discovery**: AI asks targeted questions about your project
2. **Requirements Gathering**: Interactive prompts for features, users, goals
3. **Tech Stack Selection**: Guided choices based on your preferences
4. **Roadmap Creation**: Collaborative planning of development phases
5. **Spec Development**: Detailed feature breakdown with your input

#### **Example Interaction Flow**

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

```bash
# Check current status
@status

# Continue where you left off
@execute-tasks

# Create new feature spec
@create-spec

# Update project documentation
@update
```

### Expected File Purposes

#### **AI Configuration Files**

- **`.cursor/rules/`**: Enables AI commands in Cursor IDE
- **`.claude/`**: Provides context for Claude Code
- **`.gemini/`**: Configures Gemini AI assistance

#### **Project Documentation**

- **`mission.md`**: Product vision, goals, and target users
- **`tech-stack.md`**: Technology choices and configurations
- **`roadmap.md`**: Development phases and feature timeline
- **`decisions.md`**: Technical decisions with rationale

#### **Development Tracking**

- **`project-memory.md`**: AI's persistent memory and context
- **`checklist.md`**: Task completion tracking and progress
- **`ai-log.md`**: Detailed activity log and audit trail

#### **Feature Specifications**

- **`spec.md`**: Feature requirements and user stories
- **`technical-spec.md`**: Implementation details and architecture
- **`tasks.md`**: Step-by-step task breakdown
- **`sub-specs/`**: Detailed technical specifications

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

---

**Ready to transform your AI coding experience?** Start with `@start` and let Spec System guide your AI agents to write code that looks like you wrote it—first time, every time.
