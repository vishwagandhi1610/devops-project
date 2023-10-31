
# 🐺 EspressoOps: Quick Deploys, No Spills

## ☕ TEAM MEMBERS:-

Vishwa Gandhi (vgandhi)

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

## ☕ PIPELINE DESIGN:-




