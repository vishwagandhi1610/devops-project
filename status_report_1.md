## ACCOMPLISHMENTS:-

1. Successfully created a build file for running the Node.js application.
* Key Actions:
  * Reserved an instance from NCSU's Virtual Computing Lab.
  * Set up a self-hosted GitHub runner on that instance.
* Progress Highlights:
  * The build file is now capable of running test cases, downloading necessary packages, and executing the application workflow.
  * Validated the workflow's capability to identify failing test cases.
  * Developed and committed a Dockerfile for the app, which handles application dependencies and prepares the environment for deployment within a Docker container.


2. Successfuly created the docker file for the coffee-project app which runs the application. Checked the file is running locally on the my computer. The following commands are used to run the docker file:-

```
docker build -t devops .
docker run -p 3000:3000 devops 
```
3. Docker Image Preparation and Pushing:
* Successfully prepared the Docker image for the application.
* Downloaded and configured the docker on the local VCL instance.
* Configured the docker hub and made a private repository. Pushed the credentials to docker secrets.
* Began the process of pushing the Docker image to Docker Hub, crucial for later deployment stages.
* Encountered an error in the workflow during the image push process.
* Resolved the error by configuring the docker buildx.

Below displays the image which is pushed in the docker hub.

![docker hub]([https://github.ncsu.edu/vgandhi/devops-pipeline/blob/develop/assets/docker_hub.png](https://github.com/vishwagandhi1610/devops-project/blob/main/assets/docker_hub.png))

## NEXT STEPS:-

* Linting Implementation:
  * Setting up linting to activate on pull requests from the develop to release branch, ensuring code quality.
* Deployment Process:
  * Post linting approval, preparing for the final review and approval by the release engineer.
  * Utilizing an Ansible playbook for deploying the app on the VCL instance upon approval.
* Finalizing the Deployment Cycle:
  * Following successful deployment, merge the code from the develop to the main branch.

## RETROSPECTIVES:-

1. What Worked:
* Efficient setup of the build environment and GitHub runner.
* Effective testing and troubleshooting process within the workflow.
* Creating dockerfile for the app.
2. What didn't work:
* I created a private repository on my personal github account and was working on that repo. But later I found out that NCSU enterprise github does not support various actions. So I had to change my workflow.
* Encountered specific challenges in pushing the Docker image to Docker Hub.
4. What I will do differently:
* I will work directly on the NCSU github repository.
* Continuously refine workflow processes for smoother operation in future processes.
* Look for versions carefully before running the workflow.
