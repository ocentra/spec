---
description: Deployment Execution Rules for Spec
globs:
alwaysApply: false
version: 1.0
encoding: UTF-8
---

# Deployment Execution Rules

## Overview

Execute deployment based on the previously defined deployment strategy. This command generates all necessary deployment files, sets up infrastructure, and deploys the application according to the specifications in `deployment-strategy.md`.

***CRITICAL ENFORCEMENT: DEPLOYMENT STRATEGY MUST BE COMPLETE BEFORE EXECUTION***

## Prerequisites

### Required Files

- `[PROJECT_NAME]-spec/product/deployment-strategy.md` - Must exist and be complete
- `[PROJECT_NAME]-spec/product/tech-stack.md` - Must contain deployment configuration
- `[PROJECT_NAME]-spec/product/decisions.md` - Must contain deployment decisions

### File Generation Rules

#### Static vs Generated Files

- **STATIC FILES**: `instructions/deployment-planning.md`, `instructions/deploy.md` are templates - DO NOT MODIFY
- **GENERATED FILES**: Create new files in `[PROJECT_NAME]-spec/` and `deployment/` directories
- **MARKDOWN RULES**: Apply `@.spec/instructions/markdown-rules.md` ONLY to generated files, not static instruction files

#### File Creation Process

1. **Read** static instruction files for guidance
2. **Generate** new project-specific files following markdown rules
3. **Place** generated files in appropriate project directories
4. **Apply** proper markdown formatting to generated files only

#### Directory Structure for Generated Files

```markdown
[PROJECT_NAME]-spec/
├── product/
│   ├── deployment-strategy.md    ← GENERATED 
│   ├── tech-stack.md             ← GENERATED
│   └── decisions.md              ← GENERATED 
└── ...

deployment/
├── docker/                       ← GENERATED 
├── kubernetes/                   ← GENERATED 
├── terraform/                    ← GENERATED 
├── scripts/                      ← GENERATED 
├── config/                       ← GENERATED 
└── docs/                         ← GENERATED 
```

### Validation

- **ACTION**: Verify all required files exist and are complete
- **CHECK**: Ensure deployment strategy is consistent with project type
- **VALIDATE**: Confirm all required information is available
- **ERROR**: If prerequisites not met, guide user to complete deployment planning first

### File Generation Validation

- **STATIC FILES**: Ensure you're reading from static instruction files, not modifying them
- **GENERATED FILES**: Verify all generated files follow `@.spec/instructions/markdown-rules.md` standards
- **DIRECTORY STRUCTURE**: Confirm generated files are placed in correct project directories
- **FORMATTING**: Check that generated files have proper markdown formatting

## Process Flow

### Step 1: Strategy Analysis

#### Read Deployment Strategy

- **ACTION**: Read `[PROJECT_NAME]-spec/product/deployment-strategy.md`
- **EXTRACT**: All deployment configuration details
- **VALIDATE**: Ensure strategy is complete and consistent
- **CONTEXT**: Understand project type, infrastructure, and deployment model

#### Parse Strategy Components

```yaml
Project Type: [EXTRACTED_TYPE]
Infrastructure: [EXTRACTED_INFRASTRUCTURE]
Containerization: [EXTRACTED_CONTAINERIZATION]
CI/CD: [EXTRACTED_CI_CD]
Database: [EXTRACTED_DATABASE]
Security: [EXTRACTED_SECURITY]
Monitoring: [EXTRACTED_MONITORING]
```

### Step 2: Environment Setup

#### Create Deployment Directory

- **ACTION**: Create `deployment/` directory in project root
- **STRUCTURE**: Organize deployment files by environment
- **PERMISSIONS**: Ensure proper file permissions

#### Directory Structure

```markdown
deployment/
├── docker/              # Docker-related files
│   ├── Dockerfile
│   ├── docker-compose.yml
│   └── .dockerignore
├── kubernetes/          # Kubernetes manifests
│   ├── namespace.yaml
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   └── configmap.yaml
├── terraform/           # Infrastructure as Code
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── providers.tf
├── scripts/             # Deployment scripts
│   ├── deploy.sh
│   ├── rollback.sh
│   └── health-check.sh
├── config/              # Configuration files
│   ├── production.env
│   ├── staging.env
│   └── development.env
└── docs/                # Deployment documentation
    ├── README.md
    ├── troubleshooting.md
    └── scaling-guide.md
```

### Step 3: Generate Deployment Files

#### Based on Project Type

##### For Framework/Library

- **ACTION**: Generate package distribution files
- **FILES**: `package.json`, `setup.py`, `Cargo.toml`, etc.
- **PUBLISH**: Configure publishing to package registries

##### For Static Website

- **ACTION**: Generate static site deployment files
- **FILES**: Build scripts, CDN configuration, redirects
- **HOSTING**: Configure hosting platform settings

##### For Web Application

- **ACTION**: Generate application deployment files
- **FILES**: Dockerfile, docker-compose.yml, environment configs
- **INFRASTRUCTURE**: Set up cloud infrastructure

##### For Mobile Application

- **ACTION**: Generate mobile app deployment files
- **FILES**: Build scripts, app store configuration, CI/CD
- **DISTRIBUTION**: Configure app store deployment

##### For Desktop Application

- **ACTION**: Generate desktop app deployment files
- **FILES**: Build scripts, installer configuration, auto-updater
- **DISTRIBUTION**: Configure distribution channels

##### For Game

- **ACTION**: Generate game deployment files
- **FILES**: Build scripts, platform-specific configurations
- **DISTRIBUTION**: Configure game platform deployment

##### For API/Backend Service

- **ACTION**: Generate API deployment files
- **FILES**: Dockerfile, API gateway config, load balancer
- **SCALING**: Configure auto-scaling and monitoring

##### For Microservices Architecture

- **ACTION**: Generate microservices deployment files
- **FILES**: Kubernetes manifests, service mesh config, monitoring
- **ORCHESTRATION**: Set up service discovery and load balancing

### Step 4: Infrastructure as Code

#### Based on Infrastructure Provider

##### For AWS

- **ACTION**: Generate Terraform/CloudFormation files
- **SERVICES**: EC2, ECS, RDS, S3, CloudFront, Route53
- **NETWORKING**: VPC, subnets, security groups
- **MONITORING**: CloudWatch, CloudTrail

##### For Google Cloud Platform

- **ACTION**: Generate Terraform files
- **SERVICES**: GCE, GKE, Cloud SQL, Cloud Storage, Cloud CDN
- **NETWORKING**: VPC, firewall rules, load balancers
- **MONITORING**: Stackdriver, Cloud Logging

##### For Microsoft Azure

- **ACTION**: Generate Terraform/ARM templates
- **SERVICES**: VM, AKS, Azure SQL, Blob Storage, CDN
- **NETWORKING**: VNet, NSG, Application Gateway
- **MONITORING**: Azure Monitor, Application Insights

##### For Digital Ocean

- **ACTION**: Generate Terraform files
- **SERVICES**: Droplets, Managed Databases, Spaces, Load Balancers
- **NETWORKING**: VPC, firewall rules
- **MONITORING**: Digital Ocean monitoring

##### For Platform as Service

- **ACTION**: Generate platform-specific configuration
- **FILES**: `vercel.json`, `netlify.toml`, `railway.toml`
- **ENVIRONMENT**: Configure environment variables
- **BUILD**: Set up build and deployment scripts

### Step 5: Containerization Setup

#### Docker Configuration

##### Dockerfile Generation

```dockerfile
# Base image selection based on tech stack
FROM [BASE_IMAGE]

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./
COPY requirements.txt ./
COPY Cargo.toml ./

# Install dependencies
RUN [INSTALL_COMMAND]

# Copy application code
COPY . .

# Build application
RUN [BUILD_COMMAND]

# Expose port
EXPOSE [PORT]

# Start application
CMD [START_COMMAND]
```

##### Docker Compose Configuration

```yaml
version: '3.8'
services:
  app:
    build: .
    ports:
      - "[PORT]:[PORT]"
    environment:
      - [ENV_VARS]
    depends_on:
      - database
      - redis
  
  database:
    image: [DATABASE_IMAGE]
    environment:
      - [DB_ENV_VARS]
    volumes:
      - db_data:/var/lib/postgresql/data
  
  redis:
    image: redis:alpine
    ports:
      - "6379:6379"

volumes:
  db_data:
```

#### Kubernetes Configuration

##### Namespace

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: [PROJECT_NAME]
  labels:
    name: [PROJECT_NAME]
```

##### Deployment

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: [PROJECT_NAME]
  namespace: [PROJECT_NAME]
spec:
  replicas: [REPLICA_COUNT]
  selector:
    matchLabels:
      app: [PROJECT_NAME]
  template:
    metadata:
      labels:
        app: [PROJECT_NAME]
    spec:
      containers:
      - name: [PROJECT_NAME]
        image: [IMAGE_NAME]:[TAG]
        ports:
        - containerPort: [PORT]
        env:
        - name: [ENV_VAR]
          value: [ENV_VALUE]
        resources:
          requests:
            memory: [MEMORY_REQUEST]
            cpu: [CPU_REQUEST]
          limits:
            memory: [MEMORY_LIMIT]
            cpu: [CPU_LIMIT]
```

##### Service

```yaml
apiVersion: v1
kind: Service
metadata:
  name: [PROJECT_NAME]-service
  namespace: [PROJECT_NAME]
spec:
  selector:
    app: [PROJECT_NAME]
  ports:
  - protocol: TCP
    port: [PORT]
    targetPort: [PORT]
  type: [SERVICE_TYPE]
```

##### Ingress

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: [PROJECT_NAME]-ingress
  namespace: [PROJECT_NAME]
  annotations:
    kubernetes.io/ingress.class: nginx
    cert-manager.io/cluster-issuer: letsencrypt-prod
spec:
  tls:
  - hosts:
    - [DOMAIN]
    secretName: [PROJECT_NAME]-tls
  rules:
  - host: [DOMAIN]
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: [PROJECT_NAME]-service
            port:
              number: [PORT]
```

### Step 6: CI/CD Pipeline Setup

#### GitHub Actions

##### Workflow File

```yaml
name: Deploy to [ENVIRONMENT]

on:
  push:
    branches: [main/staging]
  pull_request:
    branches: [main]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Setup Node.js
      uses: actions/setup-node@v3
      with:
        node-version: [NODE_VERSION]
    - name: Install dependencies
      run: npm ci
    - name: Run tests
      run: npm test
    - name: Build
      run: npm run build

  deploy:
    needs: test
    runs-on: ubuntu-latest
    if: github.ref == 'refs/heads/main'
    steps:
    - uses: actions/checkout@v3
    - name: Deploy to [PROVIDER]
      run: |
        [DEPLOYMENT_SCRIPT]
```

#### GitLab CI/CD

##### Pipeline File

```yaml
stages:
  - test
  - build
  - deploy

test:
  stage: test
  image: node:[NODE_VERSION]
  script:
    - npm ci
    - npm test
    - npm run build

build:
  stage: build
  image: docker:latest
  services:
    - docker:dind
  script:
    - docker build -t [IMAGE_NAME]:$CI_COMMIT_SHA .
    - docker push [IMAGE_NAME]:$CI_COMMIT_SHA

deploy:
  stage: deploy
  image: alpine:latest
  script:
    - [DEPLOYMENT_SCRIPT]
  only:
    - main
```

### Step 7: Database Setup

#### Database Configuration

##### PostgreSQL

```yaml
# docker-compose.yml database service
database:
  image: postgres:15
  environment:
    POSTGRES_DB: [DB_NAME]
    POSTGRES_USER: [DB_USER]
    POSTGRES_PASSWORD: [DB_PASSWORD]
  volumes:
    - postgres_data:/var/lib/postgresql/data
  ports:
    - "5432:5432"
```

##### MySQL

```yaml
# docker-compose.yml database service
database:
  image: mysql:8.0
  environment:
    MYSQL_DATABASE: [DB_NAME]
    MYSQL_USER: [DB_USER]
    MYSQL_PASSWORD: [DB_PASSWORD]
    MYSQL_ROOT_PASSWORD: [ROOT_PASSWORD]
  volumes:
    - mysql_data:/var/lib/mysql
  ports:
    - "3306:3306"
```

##### MongoDB

```yaml
# docker-compose.yml database service
database:
  image: mongo:6.0
  environment:
    MONGO_INITDB_DATABASE: [DB_NAME]
    MONGO_INITDB_ROOT_USERNAME: [DB_USER]
    MONGO_INITDB_ROOT_PASSWORD: [DB_PASSWORD]
  volumes:
    - mongo_data:/data/db
  ports:
    - "27017:27017"
```

### Step 8: Security Configuration

#### Secrets Management

##### Environment Variables Template

```bash
# .env.example
DATABASE_URL=postgresql://user:password@localhost:5432/dbname
REDIS_URL=redis://localhost:6379
JWT_SECRET=your-secret-key
API_KEY=your-api-key
```

##### Kubernetes Secrets

```yaml
apiVersion: v1
kind: Secret
metadata:
  name: [PROJECT_NAME]-secrets
  namespace: [PROJECT_NAME]
type: Opaque
data:
  database-url: [BASE64_ENCODED_DB_URL]
  jwt-secret: [BASE64_ENCODED_JWT_SECRET]
  api-key: [BASE64_ENCODED_API_KEY]
```

#### SSL/TLS Configuration

##### Let's Encrypt

```yaml
# cert-manager ClusterIssuer
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: [EMAIL]
    privateKeySecretRef:
      name: letsencrypt-prod
    solvers:
    - http01:
        ingress:
          class: nginx
```

### Step 9: Monitoring Setup

#### Application Monitoring

##### Prometheus Configuration

```yaml
# prometheus.yml
global:
  scrape_interval: 15s

scrape_configs:
  - job_name: '[PROJECT_NAME]'
    static_configs:
      - targets: ['[PROJECT_NAME]:[PORT]']
```

##### Grafana Dashboard

```json
{
  "dashboard": {
    "title": "[PROJECT_NAME] Dashboard",
    "panels": [
      {
        "title": "Request Rate",
        "type": "graph",
        "targets": [
          {
            "expr": "rate(http_requests_total[5m])",
            "legendFormat": "{{method}} {{endpoint}}"
          }
        ]
      }
    ]
  }
}
```

### Step 10: Deployment Scripts

#### Main Deployment Script

```bash
#!/bin/bash
# deployment/scripts/deploy.sh

set -e

ENVIRONMENT=${1:-production}
VERSION=${2:-latest}

echo "Deploying [PROJECT_NAME] to $ENVIRONMENT..."

# Load environment variables
source deployment/config/$ENVIRONMENT.env

# Build and push Docker image
docker build -t [IMAGE_NAME]:$VERSION .
docker push [IMAGE_NAME]:$VERSION

# Deploy to Kubernetes
kubectl apply -f deployment/kubernetes/namespace.yaml
kubectl apply -f deployment/kubernetes/

# Update deployment with new image
kubectl set image deployment/[PROJECT_NAME] [PROJECT_NAME]=[IMAGE_NAME]:$VERSION -n [PROJECT_NAME]

# Wait for deployment to complete
kubectl rollout status deployment/[PROJECT_NAME] -n [PROJECT_NAME]

echo "Deployment completed successfully!"
```

#### Health Check Script

```bash
#!/bin/bash
# deployment/scripts/health-check.sh

set -e

ENDPOINT=${1:-http://localhost:3000/health}
TIMEOUT=${2:-30}

echo "Checking health at $ENDPOINT..."

for i in $(seq 1 $TIMEOUT); do
  if curl -f $ENDPOINT > /dev/null 2>&1; then
    echo "Health check passed!"
    exit 0
  fi
  echo "Health check failed, retrying in 1 second... ($i/$TIMEOUT)"
  sleep 1
done

echo "Health check failed after $TIMEOUT seconds"
exit 1
```

#### Rollback Script

```bash
#!/bin/bash
# deployment/scripts/rollback.sh

set -e

PREVIOUS_VERSION=${1:-$(kubectl get deployment [PROJECT_NAME] -n [PROJECT_NAME] -o jsonpath='{.spec.template.spec.containers[0].image}' | cut -d: -f2)}

echo "Rolling back to version $PREVIOUS_VERSION..."

kubectl rollout undo deployment/[PROJECT_NAME] -n [PROJECT_NAME]

kubectl rollout status deployment/[PROJECT_NAME] -n [PROJECT_NAME]

echo "Rollback completed successfully!"
```

### Step 11: Documentation Generation

#### Deployment README

```markdown
# Deployment Guide

## Overview

This document describes how to deploy [PROJECT_NAME] to various environments.

## Prerequisites

- [PREREQUISITES_LIST]
- [TOOLS_REQUIRED]

## Quick Start

1. Clone the repository
2. Copy environment configuration
3. Run deployment script

```bash
git clone [REPO_URL]
cd [PROJECT_NAME]
cp deployment/config/production.env.example deployment/config/production.env
# Edit production.env with your values
./deployment/scripts/deploy.sh production
```

## Environments

### Development

- **URL**: [DEV_URL]
- **Deploy**: `./deployment/scripts/deploy.sh development`

### Staging

- **URL**: [STAGING_URL]
- **Deploy**: `./deployment/scripts/deploy.sh staging`

### Production

- **URL**: [PRODUCTION_URL]
- **Deploy**: `./deployment/scripts/deploy.sh production`

## Configuration

### Environment Variables Configuration

See `deployment/config/` for environment-specific configurations.

### Secrets

Secrets are managed through [SECRETS_MANAGEMENT_SYSTEM].

## Monitoring

- **Metrics**: [MONITORING_URL]
- **Logs**: [LOGGING_URL]
- **Alerts**: [ALERTING_URL]

## Troubleshooting

See [TROUBLESHOOTING_GUIDE] for common issues and solutions.

### Step 12: Validation and Testing

#### Pre-deployment Checks

- **ACTION**: Validate all configuration files
- **TEST**: Run deployment in test environment
- **VERIFY**: Check all services are accessible
- **MONITOR**: Ensure monitoring is working

#### Post-deployment Validation

- **HEALTH**: Run health checks
- **FUNCTIONALITY**: Test key application features
- **PERFORMANCE**: Verify performance metrics
- **SECURITY**: Check security configurations

## Integration Points

### With plan-product.md

- **READ**: Use deployment strategy from planning phase
- **VALIDATE**: Ensure strategy is complete
- **GENERATE**: Create deployment files based on strategy

### With create-spec.md

- **CONSIDER**: Deployment implications for each feature
- **UPDATE**: Modify deployment strategy if needed
- **DOCUMENT**: Update deployment documentation

### With execute-tasks.md

- **CONSTRAINT**: Ensure code follows deployment strategy
- **VALIDATE**: Check deployment compatibility
- **TEST**: Deploy and test features

## Error Handling

### Missing Configuration

- **ACTION**: Prompt user for missing configuration
- **GENERATE**: Create template configuration files
- **DOCUMENT**: Note required manual configuration

### Deployment Failures

- **ACTION**: Provide detailed error messages
- **ROLLBACK**: Offer automatic rollback option
- **TROUBLESHOOT**: Provide troubleshooting steps

### Infrastructure Issues

- **ACTION**: Check infrastructure status
- **ALTERNATIVE**: Suggest alternative deployment methods
- **ESCALATION**: Provide escalation procedures

## Success Criteria

### Successful Deployment

- All services are running and healthy
- Application is accessible at expected URLs
- Monitoring and logging are working
- Security configurations are active

### Documentation Complete

- Deployment guide is comprehensive
- Troubleshooting guide is available
- Configuration examples are provided
- Maintenance procedures are documented

### Team Ready

- Team can deploy independently
- Rollback procedures are tested
- Monitoring alerts are configured
- Incident response procedures are in place

### File Generation Quality

- All generated files follow `@.spec/instructions/markdown-rules.md` standards
- Static instruction files remain unmodified
- Generated files are properly placed in project directories
- All deployment files have correct formatting and syntax
