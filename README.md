
# 🐺 EspressoOps: Quick Deploys, No Spills

## ☕ TEAM MEMBERS:-

Vishwa Gandhi (vgandhi)

## ☕ OVERVIEW:-

This repository contains the DevOps pipeline for automated code quality assurance. It utilizes various tools such as Docker Registry, Ansible, GitHub Actions, and ESLint to maintain high coding standards and streamline the development process. The pipeline ensures consistent code quality with automated linting, testing, and deployment, thus enhancing the overall efficiency of the DevOps cycle.

## ☕ PROBLEM STATEMENT:-

The problem is that in the fast-paced world of software development, consistent code quality is paramount. However, a recurring problem within many development teams is the lack of standardization and code quality assurance in the development process. Without automated checks in place, code may deviate from the desired coding standards, leading to less maintainable code, longer code reviews, and even the potential introduction of bugs. This not only affects the developers, but also the broader business stakeholders, as lower code quality can result in increased time to market, technical debt, and more time invested in debugging rather than feature development.

The proposed automated linting pipeline addresses this problem by providing a continuous and standardized code quality assurance process. Instead of relying on manual checks or reviews that are prone to human oversight, the pipeline autonomously evaluates code against predetermined standards every time a change is made. By automating this step, the team can ensure that all committed code adheres to the defined standards. This pipeline, activated in response to events like pull requests, doesn't necessitate direct user interaction. Instead, it serves as an unobtrusive guardrail, providing feedback directly within the developers' workflow. By addressing code quality concerns at the earliest stage, the solution reduces the chances of preventable issues cascading through to later stages of development, thereby streamlining the overall DevOps process.

## ☕ TAGLINE:-

"Brewing code and pouring deployments!" 

## ☕ USE CASE:- PR to release branch triggers automated linting for the project.

1. Preconditions
* The repository has the necessary files for linting (e.g., linting configuration files).
* A deployment machine or cloud instance (e.g., Ubuntu 22.04) is provisioned.
* Self-Hosted GitHub Actions system is set up and ready.
* Necessary branches (e.g., dev, main, release) are present in the repository.

2. Main Flow
* Developer makes a change in the development branch and commits it [S1].
* Developer initiates a PR from the development branch to the release branch [S2].
* Automated GitHub Actions detect the PR event and trigger the linting process [S3].
* The linting process checks the code changes for formatting and small errors [S4].
* If the linting process passes, than PR has to be approved by the Release Engineer (in my case I am the release engineer). [S5]
* The code is merged. [S6]

3. Subflows
* [S1] Change can be any modification, addition, or removal of code.
* [S2] Developer might provide a PR message and select appropriate reviewers.( including release engineer)
* [S3] GitHub Actions system uses the self-hosted runner for this task.
* [S4] Linting results (pass/fail) are displayed on the PR page.
* [S5] PRs that don't pass linting cannot proceed to the merging step unless errors are fixed.
* [S6] If the release engineer approves it than merging is enabled.

4. Alternative Flows
* [E1] Linting process returns errors.
* [E2] Connection or system failures during linting.

### What ESLint Eliminates:
* Syntax Errors: Catches syntax mistakes that could lead to runtime errors.
* Code Smells: Identifies patterns that might be errors or lead to errors in the future.
* Inconsistencies: Enforces a consistent coding style, improving readability and maintainability.

## ☕ PIPELINE DESIGN:-

![pipeline design](https://github.com/vishwagandhi1610/devops-project/blob/main/assets/pipeline_design.png)

## ☕ WORKFLOW:-

1. The developer writes code using an editor (e.g., VS Code).
2. Once the code is written, the developer pushes it to a "develop" branch on GitHub.
3. GitHub contains various branches such as "Develop", "Release", and "Main".
4. The building process triggers a GitHub Workflow.
5. This workflow runs npm test to execute tests on the codebase.
6. If the test passes, the next step is to push the Docker image of the application to a Docker Registry.
7. In case of test failure, the workflow fails for that specific job, which is visually represented by a red line.
8. If the test passes than the devloper creates a PR from develop to release branch.
9. A self-hosted runner is used and the automated for pipeline runs.
10. If linting fails, the pull request is denied.
11. If the linting process passes, it proceeds to the release engineer for review. (Branch protection rule)
12. The release engineer reviews the pull request (PR) from the "develop" branch to the "release" branch.
13. If the PR is approved, the release engineer is able to merge it. If not, the PR remains unmerged.
14. Post-approval from the release engineer, the Ansible deploys the image from the  Docker Registry.
15. Deployment is achieved using tools like Ansible and is deployed on the NCSU VCL.

## ☕ CONSTRAINTS:-

1. Consistent Code Style: Since linting is a step in the pipeline, developers must adhere to a consistent code style and format. Any deviation will result in the linting job failing.
2. Testing: The npm test should pass without any errors before moving forward in the pipeline.
3. Branching Strategy: Developers should always push their changes to the development branch and not directly to the main branch. This ensures that the main branch always has stable, tested code.
4. Docker: Ensure that the app is containerized properly so that it can be pushed to and pulled from the Docker Registry seamlessly.
5. Review Process: Changes should be thoroughly reviewed by a release engineer before merging into the main branch. This adds an additional layer of quality assurance.
6. Infrastructure as Code: When deploying, ensure that all infrastructure changes are coded, using tools like Ansible, so that deployments are reproducible and consistent.
7. Security: Ensure that secrets and credentials are not hardcoded in the code and are securely managed, possibly using secret management tools.

## ☕ PIPELINE ARCHITECTURE COMPONENTS:-

1. VS Code: The preferred Integrated Development Environment (IDE) for coding.
2. GitHub: The version control system used for hosting the code repository.
3. GitHub Workflow: Used to automate several process like testing, linting.
4. Ansible: An open-source automation tool that deploys the app.
5. NCSU VCL: The Virtual Computing Lab where the app is deployed.
6. Docker: Used to run the application in a container environment.

## ☕ REPOSITORY STRUCTURE:-

* .github/workflows - Contains YAML files for GitHub Actions workflows that automate building, testing, linting, and deployment.
* assets - Media files and other static content used in the project.
* public - Publicly accessible files such as HTML pages.
* test - Test scripts and configuration files.
* Dockerfile - The Dockerfile to containerize the application.
* eslint.js - Configuration file for linting process.
* README.md - Documentation of the repository and project overview (this file).
* app.js - The main application file.
* data.js - Data handling and management scripts.
* hosts.yaml - Ansible hosts file for defining server inventory.
* package.json & package-lock.json - Node.js project manifest and lock files for managing dependencies.
* playbook.yaml - Ansible playbook for deploying the application.
* project_proposal.md - The project proposal document.
* status_report_1.md and status_report_2.md - Status reports documenting the progress of the project.

## ☕ KEY COMPONENTS:-

* Initial Setup: Configuration of Ubuntu 22.04 LTS VCL machines, Docker Hub, Ansible, and GitHub runner.
* Dockerfile: Defines the steps to create a Docker image for the application.
* Build and Test Workflow: GitHub Actions workflow to build the application, run tests, and manage application workflow.
* Linting Workflow: GitHub Actions workflow for automated code linting with ESLint.
* Ansible Playbook: Script to deploy the Docker image on the VCL server.
* Branch Protection Rule: Ensures all PRs to the release branch are reviewed and approved.
* Deployment Workflow: GitHub Actions workflow for deploying the application using Ansible.

## ☕ WORKFLOWS:-

All the workflows are inside the .github/workflows folder.

* Build & Test: Validates code changes by running tests and than running the application.
* Docker: Creates and pushes Docker images to a Docker registry.
* Lint: Checks code for style and potential errors.
* Deployment: Deploys the application to the server once code is approved.

## ☕ USAGE:-

For developers:

* Clone the repository and install dependencies using npm install.
* Use the Dockerfile to build a Docker image of the application.
* Run tests using npm test.
* Check for linting errors using npm run lint.
* Push changes to the 'develop' branch to trigger automated workflows.

For release engineers:

* Review and approve PRs from 'develop' to 'release' branch.
* Ensure deployment workflow success before the application goes live.
