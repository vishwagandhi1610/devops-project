## ACCOMPLISHMENTS:-

1. Implementation of Linting with ESLint: 
* A crucial step in our Continuous Deployment pipeline was the successful integration of ESLint. 
* This tool significantly enhances code quality by enforcing consistent coding styles and identifying potential errors and bad patterns in JavaScript code. 
* Its implementation in my process now checks the code quality automatically when a user creates a Pull Request (PR) from the develop to the release branch.
* What ESLint Eliminates:
    * Syntax Errors: Catches syntax mistakes that could lead to runtime errors.
    * Code Smells: Identifies patterns that might be errors or lead to errors in the future.
    * Inconsistencies: Enforces a consistent coding style, improving readability and maintainability.

2. Branch Protection Rule for Release Branch: 
* I've set a branch protection rule for the release branch, ensuring that all PRs are reviewed and approved before merging.
* The release engineer is responsible for approving the requests. (In my case I am the release engineer.)
* This step adds a layer of security and quality control, ensuring that only code that meets the standards is deployed.

3. Initiation of Deployment Using Ansible: 
* I've started work on automating the app deployment process using Ansible. 
* For that I have created the Ansible playbook and hosts file. But I am facing an error so trying to fix that.

## NEXT STEPS:-

* Deployment of the App using Ansible on Ubuntu VCL:
    * To automate the deployment process of my application on an NCSU Virtual Computing Lab (VCL) environment using Ansible. 
    * This task involves scripting Ansible playbooks that will handle the deployment, ensuring that the process is efficient, repeatable, and scalable.
    * Develop Ansible playbooks for automated deployment.
    * For that I will solve the errors I am facing in the playbook yaml file.
    * Than I will configure Ansible on my remote reserved ubuntu instance.
    * Than I will write github workflow for running the ansible playbook.
    * This all will happen when user creates PR from develop to release.
    * The app will be deployed on the release branch.
    * Once the expected output is visible on port 3000. The code is ready to merge to main.
   

## RETROSPECTIVES:-

1. What Worked Well:
* The integration of ESLint has been a major success, improving code quality and consistency significantly.
* The approach of implementing branch protection rules has effectively safeguarded the release branch, ensuring that only reviewed and approved code is merged.
* The eslint also throws error while writing the code which is syntax errors so that users can eliminate that error while writing the code itself.

2. Challenges Faced:
* Initial issues with the ESLint configuration using YAML format caused some delays. 
* Switching to a JavaScript-based configuration (.eslintrc.js) resolved these issues.
* Than there were issues regarding the eslint configuration for additional dependencies which I later eliminated using changing some scripts in package.json.

3. What I will do differently:
* Configuration Flexibility: 
    * The switch from YAML to JavaScript for ESLint configuration highlighted the importance of flexibility and adaptability in tooling choices. 
    * Going forward, I will more thoroughly evaluate tool configurations to find the best fit for my project's needs.
* Incremental Implementation: 
    * For tools like Ansible, I learned the importance of implementing changes incrementally and testing thoroughly at each step. 
    * This approach will be applied to the upcoming Ansible deployment tasks to ensure smooth integration.




