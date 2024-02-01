
# 🐺 EspressoOps: Quick Deploys, No Spills

## ☕ TEAM MEMBERS:-

Vishwa Gandhi (vgandhi)

## ☕ OVERVIEW:-

This repository contains the DevOps pipeline for automated code quality assurance. It utilizes various tools such as Docker Registry, Ansible, GitHub Actions, and ESLint to maintain high coding standards and streamline the development process. The pipeline ensures consistent code quality with automated linting, testing, and deployment, thus enhancing the overall efficiency of the DevOps cycle.

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
