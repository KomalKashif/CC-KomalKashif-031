# Komal Lab 02

CLOUD COMPUTING  

LAB 02 

HANDS-ON GIT & VERSION CONTROL LAB 

SUBMITTED TO 

ENGR. SHOAIB 

SUBMITTED BY 

Komal Kashif 

BSE- VA 

2023-BSE-031 

 
 
 
 
 
 
 
 
 
 
 
 
 
Installation GitBash: 
!(./images/git_installation.png)

GitBash was installed and started. 

TASK 1 

 Create Private GitHub Repository 

Private repository 

 !(./images/repo_private.png)
 
 
TASK 2 

Connect Repository via SSH 

SSH key-generation 
!(./images/ssh_keygen.png)

Github ssh key 
!(./images/github_sshkey.png)

SSH_clone 
!(./images/ssh_clone.png)
 
 
TASK 3 

Configure Git Username and Email 

Git_identity 
!(./images/git_identity.png)

Git config --list 
!(./images/git_config_list.png)

TASK 4 

Explore the .git Folder 

Git_folder 
!(./images/git_folder.png)

 
TASK 5 

Local Repository Management 

Delete_git
!(./images/delete_git.png) 

Git_init 
!(./images/git_init.png)

First_commit 
!(./images/first_commit.png)

First_push 
!(./images/first_push.png)
!(./images/first_push 1.png)

 
TASK 6 

File Status & Staging 

Status1 
!(./images/status1.png)

Commit_notes:
!(./images/commit_notes.png) 

TASK 7 

Branch Creation Using GitHub GUI 

Bugfix_branch_gui 
!(./images/bugfix_branch_gui.png)

Bugfix_branch_local 
!(./images/bugfix_branch_local.jpg)

 
TASK 8 

Branch Creation and Push Using Git Bash 

feature_db_branch: 
!(./images/feature_db_branch.png)

TASK 9 

Branching & Merging 

branch_create:
!(./images/branch_create.png) 

feature_commit: 
!(./images/feature_commit.png) 

merge: 
!(./images/merge.png) 

push_branches:
!(./images/push_merges.png)  

TASK 10 

Pull Request and Branch Review (GitHub GUI) 

Created Pull Request from feature/db-connection to main, pr_creation: 
!(./images/pr_creation.png) 

Click Merge Pull Request, pr_merge: 
!(./images/pr_merge.png) 


Click Delete branch, branch_deleted: 
!(./images/branch_deleted.png) 

TASK 11 

Detailed Branch Strategy (Develop/Staging) 

First creating all branches: 

 
 
 
 
 
All the required branches are created and pushed. Now, listing branches, branch_strategy: 

Merging branch feature/new-ui, branch_merges: 

 
 
 
final_merge: 

BONUS TASK  

Simulated Team Collaboration 

Creating branch collab: 

Adding Hamna as collaborator: 

Adding text to notes.txt: 

Pushing file on newly created branch, collab_commit: 

 
 
 
 
 
On Hamna’s PC: 

 
 
 
 
 
 
 
 
 
Merging both files, collab_merge: 

 
 
 
 
 
 
 
 
 
TASK 12 

Code Review Workflow 

Create a Pull Request, pr_create_details: 

Assigning Hamna as reviewer, pr_assigned_reviewer, 

Adding a new branch and making a change to README.md, then committing changes: 

 
 
 
Reviewer’s Actions: 

pr_approved: 

pr_request_changes: 

Author’s Actions: 

Making changes: 

 
 
 
 
 
pr_updated_with_commits: 

Merge the PR: 

pr_merged: 

Click on Delete branch, pr_branch_deleted: 

The branch can be restored by clicking on Restore branch. 

TASK 13 

Branch Cleanup Best Practices 

 
 
 
 
 
remote_branch_deleted: 

Update Local repository: 

EXAM EVALUATION QUESTIONS: 

1.  Advanced Branching & Merge Verification 

Create a new branch in your repository. 

 
 
 
 
 
 
Make a small change in a file and commit it. 

Merge this branch back into the main branch. 

Show the history of commits in a way that verifies the merge. 

2.  Multi-Stage Workflow Simulation 

Set up a branching workflow with three branches: main, develop, and staging. 

Create a feature branch from develop, make changes, and commit them. 

 
                  
 
 
 
 
 
Merge the feature branch into develop: 

Merge develop into staging: 

Merge staging into main: 

Screenshot showing all branches with updates: 

 
 
 
 
 
