---
description: Deployment Planning Rules for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Deployment Planning Rules

## Overview

Gather comprehensive deployment strategy information during product planning and spec creation phases. This ensures deployment considerations are built into the project architecture from the beginning.

***CRITICAL ENFORCEMENT: DEPLOYMENT STRATEGY MUST BE DEFINED BEFORE ANY INFRASTRUCTURE-DEPENDENT CODE WRITING***

## Process Flow

### Step 1: Project Type Classification

#### Primary Question for Project Type Classification

"What type of project are you building?"

#### Multiple Choice Options

- [ ] **Framework/Library** (npm package, Rust crate, Python package, etc.)
- [ ] **Static Website** (HTML/CSS/JS, Jekyll, Hugo, etc.)
- [ ] **Web Application** (SaaS, DaaS, traditional web app)
- [ ] **Mobile Application** (React Native, Flutter, native iOS/Android)
- [ ] **Desktop Application** (Electron, Tauri, native desktop)
- [ ] **Game** (Unity, Unreal, Web-based game, mobile game)
- [ ] **API/Backend Service** (REST API, GraphQL, microservice)
- [ ] **Microservices Architecture** (multiple services, distributed system)
- [ ] **Data/AI Application** (ML pipeline, data processing, analytics)
- [ ] **Other** (specify)

#### Follow-up Questions Based on Type

##### For Framework/Library

- "What package manager will you use for distribution?"
  - [ ] npm (JavaScript/TypeScript)
  - [ ] PyPI (Python)
  - [ ] Crates.io (Rust)
  - [ ] NuGet (C#)
  - [ ] Maven Central (Java)
  - [ ] Other: [specify]

##### For Static Website

- "What's your target hosting approach?"
  - [ ] CDN/Edge hosting (Cloudflare Pages, Netlify, Vercel)
  - [ ] Traditional web hosting
  - [ ] GitHub Pages
  - [ ] AWS S3 + CloudFront
  - [ ] Other: [specify]

##### For Web Application

- "What's your preferred deployment architecture?"
  - [ ] Containerized (Docker + Kubernetes)
  - [ ] Serverless (AWS Lambda, Vercel, Netlify Functions)
  - [ ] Platform as Service (Heroku, Railway, Render)
  - [ ] Traditional VPS/Cloud (Digital Ocean, AWS EC2)
  - [ ] Hybrid approach
  - [ ] Other: [specify]

##### For Mobile Application

- "What's your distribution strategy?"
  - [ ] App Store (iOS) + Google Play (Android)
  - [ ] Enterprise distribution
  - [ ] Web-based (PWA)
  - [ ] Cross-platform framework
  - [ ] Other: [specify]

##### For Desktop Application

- "What's your distribution approach?"
  - [ ] App stores (Mac App Store, Microsoft Store)
  - [ ] Direct download distribution
  - [ ] Package managers (Homebrew, Chocolatey, etc.)
  - [ ] Auto-updater system
  - [ ] Other: [specify]

##### For Game

- "What's your target platform?"
  - [ ] Web browser
  - [ ] Mobile (iOS/Android)
  - [ ] Desktop (Windows/Mac/Linux)
  - [ ] Console
  - [ ] VR/AR
  - [ ] Other: [specify]

##### For API/Backend Service

- "What's your deployment model?"
  - [ ] Containerized microservices
  - [ ] Serverless functions
  - [ ] Traditional server deployment
  - [ ] Platform as Service
  - [ ] Other: [specify]

##### For Microservices Architecture

- "What's your orchestration strategy?"
  - [ ] Kubernetes
  - [ ] Docker Swarm
  - [ ] AWS ECS/EKS
  - [ ] Azure AKS
  - [ ] Google GKE
  - [ ] Other: [specify]

##### For Data/AI Application

- "What's your processing model?"
  - [ ] Batch processing
  - [ ] Real-time streaming
  - [ ] Interactive notebooks
  - [ ] API-based inference
  - [ ] Other: [specify]

### Step 2: Infrastructure Provider Selection

#### Primary Question for Infrastructure Provider

"Where will you deploy your application?"

#### Multiple Choice Options for Infrastructure Provider

- [ ] **Local/On-premises** (self-hosted infrastructure)
- [ ] **AWS** (Amazon Web Services)
- [ ] **Google Cloud Platform** (GCP)
- [ ] **Microsoft Azure**
- [ ] **Digital Ocean**
- [ ] **Vercel** (for web applications)
- [ ] **Netlify** (for static sites and functions)
- [ ] **Heroku** (Platform as Service)
- [ ] **Railway** (Platform as Service)
- [ ] **Render** (Platform as Service)
- [ ] **Cloudflare** (Pages, Workers, R2)
- [ ] **AliCloud** (Alibaba Cloud)
- [ ] **Hybrid approach** (multiple providers)
- [ ] **Other** (specify)

#### Follow-up Questions for Infrastructure Provider

##### For Cloud Providers (AWS/GCP/Azure/AliCloud)

- "Which regions will you deploy to?"
  - [ ] Single region (specify: [region])
  - [ ] Multi-region for high availability
  - [ ] Global distribution
  - [ ] Region closest to target users

##### For Platform as Service

- "What's your scaling strategy?"
  - [ ] Auto-scaling based on demand
  - [ ] Fixed resources
  - [ ] Manual scaling
  - [ ] Other: [specify]

### Step 3: Containerization Strategy

#### Primary Question for Containerization

"Will you use containerization for deployment?"

#### Multiple Choice Options for Containerization

- [ ] **Yes - Docker containers**
- [ ] **Yes - Docker + Kubernetes**
- [ ] **Yes - Docker + Docker Compose**
- [ ] **Yes - Other container platform** (specify)
- [ ] **No - Direct deployment**
- [ ] **No - Platform handles containerization**
- [ ] **Not applicable for this project type**

#### Follow-up Questions for Containerization

##### For Docker

- "What's your container orchestration strategy?"
  - [ ] Docker Compose (single host)
  - [ ] Kubernetes (self-managed)
  - [ ] Managed Kubernetes (EKS, GKE, AKS)
  - [ ] Docker Swarm
  - [ ] Other: [specify]

##### For Kubernetes

- "What's your cluster management approach?"
  - [ ] Self-managed on cloud VMs
  - [ ] Managed service (EKS, GKE, AKS)
  - [ ] Local development cluster
  - [ ] Other: [specify]

### Step 4: CI/CD Pipeline Strategy

#### Primary Question for CI/CD Pipeline

"What's your CI/CD pipeline strategy?"

#### Multiple Choice Options for CI/CD Pipeline

- [ ] **GitHub Actions**
- [ ] **GitLab CI/CD**
- [ ] **Jenkins**
- [ ] **CircleCI**
- [ ] **Travis CI**
- [ ] **Azure DevOps**
- [ ] **AWS CodePipeline**
- [ ] **Google Cloud Build**
- [ ] **Manual deployment**
- [ ] **Platform-specific CI/CD** (Vercel, Netlify, etc.)
- [ ] **Other** (specify)

#### Follow-up Questions for CI/CD Pipeline

##### For CI/CD Platforms

- "What triggers your deployment pipeline?"
  - [ ] Push to main branch
  - [ ] Pull request merge
  - [ ] Tagged releases
  - [ ] Manual trigger
  - [ ] Scheduled deployments
  - [ ] Other: [specify]

- "How many environments do you need?"
  - [ ] Development only
  - [ ] Development + Production
  - [ ] Development + Staging + Production
  - [ ] Multiple staging environments
  - [ ] Other: [specify]

### Step 5: Database and Storage Strategy

#### Primary Question for Database and Storage

"What's your data storage strategy?"

#### Multiple Choice Options for Database and Storage

- [ ] **Managed database service** (AWS RDS, GCP Cloud SQL, Azure Database)
- [ ] **Self-hosted database** (on VMs or containers)
- [ ] **Serverless database** (AWS Aurora Serverless, PlanetScale)
- [ ] **NoSQL managed service** (MongoDB Atlas, AWS DynamoDB, GCP Firestore)
- [ ] **File-based storage** (local files, S3, Cloud Storage)
- [ ] **No persistent data storage needed**
- [ ] **Other** (specify)

#### Follow-up Questions for Database and Storage

##### For Database Services

- "What type of database do you need?"
  - [ ] PostgreSQL
  - [ ] MySQL
  - [ ] SQL Server
  - [ ] MongoDB
  - [ ] Redis (caching)
  - [ ] Other: [specify]

##### For File Storage

- "What's your file storage strategy?"
  - [ ] Local storage
  - [ ] Cloud object storage (S3, Cloud Storage, Azure Blob)
  - [ ] CDN with origin storage
  - [ ] Other: [specify]

### Step 6: Security and Compliance

#### Primary Question for Security and Compliance

"What security and compliance requirements do you have?"

#### Multiple Choice Options for Security and Compliance

- [ ] **Basic security** (HTTPS, environment variables)
- [ ] **SOC 2 compliance**
- [ ] **GDPR compliance**
- [ ] **HIPAA compliance**
- [ ] **PCI DSS compliance**
- [ ] **ISO 27001 compliance**
- [ ] **Custom security requirements**
- [ ] **No specific compliance needs**
- [ ] **Other** (specify)

#### Follow-up Questions for Security and Compliance

##### For Security Requirements

- "What's your secrets management strategy?"
  - [ ] Environment variables
  - [ ] Cloud secrets manager (AWS Secrets Manager, GCP Secret Manager)
  - [ ] HashiCorp Vault
  - [ ] Kubernetes secrets
  - [ ] Other: [specify]

- "What's your SSL/TLS strategy?"
  - [ ] Let's Encrypt (automatic)
  - [ ] Cloud provider managed certificates
  - [ ] Custom certificates
  - [ ] Platform handles SSL
  - [ ] Other: [specify]

### Step 7: Monitoring and Observability

#### Primary Question for Monitoring and Observability

"What monitoring and observability do you need?"

#### Multiple Choice Options for Monitoring and Observability

- [ ] **Basic logging** (application logs)
- [ ] **Application performance monitoring** (APM)
- [ ] **Infrastructure monitoring**
- [ ] **Error tracking and alerting**
- [ ] **User analytics**
- [ ] **Business metrics dashboard**
- [ ] **No monitoring needed**
- [ ] **Other** (specify)

#### Follow-up Questions for Monitoring and Observability

##### For Monitoring

- "What monitoring tools do you prefer?"
  - [ ] Cloud provider monitoring (CloudWatch, Stackdriver, Azure Monitor)
  - [ ] Prometheus + Grafana
  - [ ] DataDog
  - [ ] New Relic
  - [ ] Sentry (error tracking)
  - [ ] Other: [specify]

### Step 8: Cost and Scaling Strategy

#### Primary Question for Cost and Scaling

"What's your cost and scaling strategy?"

#### Multiple Choice Options for Cost and Scaling

- [ ] **Cost optimization priority** (minimize infrastructure costs)
- [ ] **Performance priority** (scale for maximum performance)
- [ ] **Auto-scaling** (scale based on demand)
- [ ] **Fixed resources** (predictable costs)
- [ ] **Serverless** (pay per use)
- [ ] **Hybrid approach**
- [ ] **Other** (specify)

#### Follow-up Questions for Cost and Scaling

##### For Cost Strategy

- "What's your expected traffic/usage pattern?"
  - [ ] Low traffic (personal/small business)
  - [ ] Medium traffic (startup/growing business)
  - [ ] High traffic (enterprise/large user base)
  - [ ] Variable traffic (seasonal spikes)
  - [ ] Unknown/To be determined
  - [ ] Other: [specify]

### Step 9: Disaster Recovery and Backup

#### Primary Question for Disaster Recovery

"What's your disaster recovery strategy?"

#### Multiple Choice Options for Disaster Recovery

- [ ] **Basic backups** (database backups)
- [ ] **Multi-region deployment**
- [ ] **Automated failover**
- [ ] **Point-in-time recovery**
- [ ] **No disaster recovery needed**
- [ ] **Other** (specify)

#### Follow-up Questions for Disaster Recovery

##### For Disaster Recovery

- "What's your recovery time objective (RTO)?"
  - [ ] Minutes (high availability)
  - [ ] Hours (standard business continuity)
  - [ ] Days (basic recovery)
  - [ ] No specific requirement
  - [ ] Other: [specify]

### Step 10: Development Workflow Integration

#### Primary Question for Development Workflow

"How should deployment integrate with your development workflow?"

#### Multiple Choice Options for Development Workflow

- [ ] **Local development** (Docker Compose, local databases)
- [ ] **Development environment** (shared dev environment)
- [ ] **Feature branch deployments** (preview environments)
- [ ] **Staging environment** (production-like testing)
- [ ] **Production-like local setup**
- [ ] **Other** (specify)

#### Follow-up Questions for Development Workflow

##### For Development Workflow

- "What's your local development setup preference?"
  - [ ] Everything local (databases, services)
  - [ ] Hybrid (local app, remote services)
  - [ ] Remote development environment
  - [ ] Container-based local development
  - [ ] Other: [specify]

## Output Generation

### File Generation Rules

#### Static vs Generated Files

- **STATIC FILES**: This file (`instructions/deployment-planning.md`) is a template - DO NOT MODIFY
- **GENERATED FILES**: Create new project-specific files in `[PROJECT_NAME]-spec/` directories
- **MARKDOWN RULES**: Apply `@.spec/instructions/markdown-rules.md` to all generated files

#### File Creation Process

1. **Read** this static instruction file for guidance
2. **Generate** new project-specific files following markdown rules
3. **Place** generated files in appropriate project directories
4. **Apply** proper markdown formatting to generated files only

### Create deployment-strategy.md

#### File Location

`[PROJECT_NAME]-spec/product/deployment-strategy.md` ← **GENERATED FILE**

#### Template Structure

```markdown
# Deployment Strategy

## Project Type
- **Type:** [PROJECT_TYPE]
- **Deployment Model:** [DEPLOYMENT_MODEL]
- **Distribution Method:** [DISTRIBUTION_METHOD]

## Infrastructure
- **Primary Provider:** [PROVIDER]
- **Secondary Provider:** [SECONDARY_PROVIDER]
- **Regions:** [REGIONS]
- **Environment Strategy:** [ENVIRONMENT_STRATEGY]

## Containerization
- **Docker:** [YES/NO]
- **Kubernetes:** [YES/NO]
- **Orchestration:** [ORCHESTRATION_TOOL]
- **Local Development:** [LOCAL_SETUP]

## CI/CD Pipeline
- **Platform:** [CI/CD_PLATFORM]
- **Triggers:** [DEPLOYMENT_TRIGGERS]
- **Environments:** [ENVIRONMENT_LIST]
- **Testing Strategy:** [TESTING_APPROACH]

## Database and Storage
- **Database Type:** [DATABASE_TYPE]
- **Storage Strategy:** [STORAGE_STRATEGY]
- **Backup Strategy:** [BACKUP_STRATEGY]
- **Scaling:** [SCALING_APPROACH]

## Security and Compliance
- **Compliance Requirements:** [COMPLIANCE_LIST]
- **Secrets Management:** [SECRETS_STRATEGY]
- **SSL/TLS:** [SSL_STRATEGY]
- **Access Control:** [ACCESS_CONTROL]

## Monitoring and Observability
- **Monitoring Tools:** [MONITORING_TOOLS]
- **Logging Strategy:** [LOGGING_STRATEGY]
- **Alerting:** [ALERTING_STRATEGY]
- **Analytics:** [ANALYTICS_STRATEGY]

## Cost and Scaling
- **Cost Strategy:** [COST_APPROACH]
- **Scaling Model:** [SCALING_MODEL]
- **Resource Allocation:** [RESOURCE_STRATEGY]
- **Budget Considerations:** [BUDGET_NOTES]

## Disaster Recovery
- **Recovery Strategy:** [RECOVERY_STRATEGY]
- **RTO/RPO:** [RECOVERY_OBJECTIVES]
- **Backup Strategy:** [BACKUP_APPROACH]
- **Failover Plan:** [FAILOVER_STRATEGY]

## Development Workflow
- **Local Development:** [LOCAL_SETUP]
- **Environment Strategy:** [ENVIRONMENT_APPROACH]
- **Feature Branch Strategy:** [BRANCH_STRATEGY]
- **Testing Integration:** [TESTING_INTEGRATION]
```

### Update tech-stack.md

#### Add Deployment Section

```markdown
## Deployment Configuration

- Deployment Strategy: [STRATEGY]
- Infrastructure Provider: [PROVIDER]
- Containerization: [CONTAINER_STRATEGY]
- CI/CD Platform: [CI/CD_PLATFORM]
- Environment Strategy: [ENVIRONMENT_STRATEGY]
- Database Hosting: [DATABASE_HOSTING]
- Asset Storage: [ASSET_STORAGE]
- Monitoring: [MONITORING_TOOLS]
- Security: [SECURITY_STRATEGY]
```

### Update decisions.md

#### Add Deployment Decision

```markdown
## [CURRENT_DATE]: Deployment Strategy Decision

**ID:** DEC-[NEXT_NUMBER]
**Status:** Accepted
**Category:** Technical
**Stakeholders:** Tech Lead, DevOps, Product Owner

### Decision

[SUMMARIZE: deployment strategy, infrastructure choices, key technologies]

### Context

[EXPLAIN: why this deployment approach, business requirements, technical constraints]

### Alternatives Considered

1. **[ALTERNATIVE_APPROACH]**
   - Pros: [LIST]
   - Cons: [LIST]

### Rationale

[EXPLAIN: key factors in deployment decision]

### Consequences

##### Positive

- [EXPECTED_BENEFITS]

##### Negative

- [KNOWN_TRADEOFFS]

##### Implementation Notes

- [SPECIFIC_IMPLEMENTATION_DETAILS]
- [TIMELINE_CONSIDERATIONS]
- [RESOURCE_REQUIREMENTS]
```

## Integration Points

### With plan-product.md

- **ACTION**: Include deployment planning questions in Step 1 user input gathering
- **TIMING**: After basic project information, before tech stack decisions
- **OUTPUT**: Create deployment-strategy.md as part of product documentation

### With create-spec.md

- **ACTION**: Consider deployment implications for each feature
- **VALIDATION**: Ensure feature specs align with deployment strategy
- **UPDATES**: Modify deployment strategy if new requirements emerge

### With execute-tasks.md

- **CONSTRAINT**: Ensure all infrastructure-dependent code follows deployment strategy
- **VALIDATION**: Check deployment compatibility before implementation
- **DOCUMENTATION**: Update deployment strategy as implementation progresses

## Validation Rules

### Required Information

- Project type must be specified
- Infrastructure provider must be selected
- CI/CD strategy must be defined
- Security requirements must be documented

### Consistency Checks

- Deployment strategy must align with project type
- Infrastructure choices must support selected deployment model
- Security requirements must be implementable with chosen infrastructure
- Cost strategy must be realistic for project scope

### Dependencies

- Database strategy must align with infrastructure provider
- Monitoring tools must be compatible with deployment platform
- Development workflow must support chosen deployment approach
- Disaster recovery must be feasible with selected infrastructure

## Error Handling

### Missing Information

- **ACTION**: Prompt user for missing required information
- **FALLBACK**: Use default values where appropriate
- **DOCUMENTATION**: Note assumptions in deployment-strategy.md

### Inconsistent Choices

- **ACTION**: Flag inconsistencies and request clarification
- **SUGGESTION**: Provide alternative approaches that resolve conflicts
- **DOCUMENTATION**: Record resolution in decisions.md

### Unsupported Combinations

- **ACTION**: Identify unsupported technology combinations
- **ALTERNATIVE**: Suggest supported alternatives
- **RESEARCH**: Provide links to relevant documentation

## Success Criteria

### Complete Deployment Strategy

- All required sections filled
- No conflicting choices
- Implementation plan clear
- Resource requirements identified

### Integration Success

- Deployment strategy aligns with project type
- Tech stack supports deployment approach
- Development workflow integrates with deployment
- Security requirements are addressed

### Documentation Quality

- Clear and comprehensive strategy document
- Decision rationale documented
- Implementation steps outlined
- Future considerations noted
