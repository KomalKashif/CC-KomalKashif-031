Name: Komal Kashif

Class: BSE- VA

Roll No: 2023-BSE-031

CLOUD COMPUTING

LAB 03

![](media/image1.jpeg){width="1.125in" height="1.3819444444444444in"}

**Task 1 -- Handling Local and Remote Commit Conflicts (Pull vs Pull
\--rebase)**

**Steps:**

Open your repository on GitHub and edit the README.md file directly in
the browser.

![](media/image2.JPG){width="3.7291666666666665in"
height="1.6716382327209098in"}

Commit your change on GitHub (e.g., message: *Remote update to README*).

![](media/image3.JPG){width="4.055555555555555in"
height="1.4601935695538057in"}

On your **local machine**, open the same repository folder. Edit the
same README.md file locally,

![](media/image4.JPG){width="3.186557305336833in" height="0.58125in"}

![](media/image5.JPG){width="3.3194444444444446in"
height="1.6303980752405949in"}

Try to push:

![](media/image6.JPG){width="4.555555555555555in"
height="1.1587303149606298in"}

To fix this, pull the latest changes from remote:

> ![](media/image7.JPG){width="4.201090332458443in" height="1.5in"}

Git will **merge** your local and remote commits, creating a *merge
commit*.

Push again:

![](media/image8.JPG){width="3.6041666666666665in"
height="0.6388888888888888in"}

![](media/image9.JPG){width="3.6597222222222223in"
height="0.9633847331583552in"}

We see that both of our lines are added now.

Now repeat the same process, but this time use **rebase instead of
merge**. Make another remote edit on GitHub in README.md.

![](media/image10.JPG){width="6.5in" height="1.382638888888889in"}

Then make another local edit and commit it.

![](media/image11.JPG){width="3.5277777777777777in"
height="1.0277777777777777in"}

Instead of using git pull, run: git pull \--rebase origin main

Git will **replay your local commits on top** of the pulled commits,
keeping history linear.

![](media/image12.JPG){width="4.944444444444445in"
height="2.9613845144356956in"}

Push again:

![](media/image13.JPG){width="3.8541666666666665in"
height="1.3543186789151356in"}

Now we see that:

![](media/image14.JPG){width="4.854166666666667in"
height="1.3706780402449694in"}

**Task 2 -- Creating and Resolving Merge Conflicts Manually**

**Steps:**

On **GitHub (remote)**, open your README.md file and change an existing
line. Commit your change with the message: *Remote conflicting change*

![](media/image15.JPG){width="2.3958333333333335in"
height="1.2084711286089238in"}

On your **local machine**, edit the **same line** in the same file but
make a **different change**.

![](media/image16.JPG){width="4.090277777777778in"
height="0.6666666666666666in"}

Try to push:

![](media/image17.JPG){width="3.0902777777777777in"
height="0.9846183289588801in"}

Pull with rebase to bring in remote changes:

![](media/image18.JPG){width="5.3125in" height="1.3585870516185476in"}

Open the README.md file in your editor --- you'll see conflict markers.

![](media/image19.JPG){width="3.151347331583552in" height="1.49375in"}

Manually edit the file to keep the correct line.

![](media/image20.JPG){width="2.9573589238845144in"
height="1.0055555555555555in"}

After fixing the file, mark the conflict as resolved and continue the
rebase.

![](media/image21.JPG){width="3.5625in" height="0.7777777777777778in"}

![](media/image22.JPG){width="4.041666666666667in"
height="2.815959098862642in"}

![](media/image23.JPG){width="3.8541666666666665in"
height="0.5555555555555556in"}

Finally, push your changes:

![](media/image24.JPG){width="4.006944444444445in"
height="1.4104910323709536in"}

![](media/image25.JPG){width="4.451388888888889in"
height="1.0458398950131234in"}

![](media/image26.JPG){width="3.886111111111111in"
height="0.8137489063867016in"}

**Task 3 -- Managing Ignored Files with .gitignore and Removing Tracked
Files**

**Steps:**

Create a new folder named textfiles inside your repository. Inside
the textfiles folder, create three text files. Add and commit the new
directory.

![](media/image27.JPG){width="5.013888888888889in"
height="3.584179790026247in"}

Now, create a .gitignore file in the root of your repository.

![](media/image28.JPG){width="6.451388888888889in"
height="2.7534722222222223in"}

Go to GitHub and check your repository --- notice that
the textfiles directory is still visible on the remote.

![](media/image29.JPG){width="5.597222222222222in"
height="1.1696762904636921in"}

Remove already tracked files from Git (but not from your local system)

![](media/image30.JPG){width="5.180555555555555in"
height="3.669293525809274in"}

Check your GitHub repository again --- the textfiles folder should now
be deleted remotely.

![](media/image31.JPG){width="6.145833333333333in"
height="1.122140201224847in"}

**Task 4 -- Create Temporary Changes and Use git stash**

**Steps:**

Create a feature-branch. Modify any file (for example, README.md) by
adding a few test lines.

![](media/image32.JPG){width="2.9710575240594927in"
height="1.2902777777777779in"}

![](media/image33.JPG){width="3.763888888888889in"
height="0.9954090113735783in"}

Modify any file (for example, README.md) by adding a few new lines.

![](media/image34.JPG){width="3.375in" height="1.507863079615048in"}

Without committing or stashing the changes, try to switch to another
branch:

![](media/image35.JPG){width="6.395833333333333in"
height="0.9861111111111112in"}

To fix this, **stash your changes**:

![](media/image36.JPG){width="6.5in" height="0.49930555555555556in"}

Try switching branches again --- it should now work:

![](media/image37.JPG){width="3.7569444444444446in"
height="0.6394794400699912in"}

Return to your previous branch (for example, feature-branch):

![](media/image38.JPG){width="3.6666666666666665in"
height="0.7823775153105862in"}

Check your working directory status:

![](media/image39.JPG){width="3.7847222222222223in"
height="0.5887346894138232in"}

Now restore your stashed changes:

![](media/image40.JPG){width="4.277777777777778in"
height="1.1535575240594926in"}

Confirm that your previous edits are back in the file.

![](media/image41.JPG){width="2.9230883639545056in"
height="1.5486111111111112in"}

**Task 5 -- Checkout a Specific Commit Using git log**

**Steps:**

View commit history:

git log --oneline

![](media/image42.JPG){width="4.1875in" height="2.3209022309711287in"}

Copy any previous commit hash. Checkout that commit:

![](media/image43.JPG){width="4.451388888888889in"
height="2.1916940069991253in"}

Return to main branch:

> ![](media/image44.JPG){width="3.6041666666666665in"
> height="1.0756856955380578in"}

**Task 6 -- Resetting Commits (Soft vs Hard Reset) (With Verification
Steps)**

**Steps:**

Add a new line in any file and commit it.

![](media/image45.JPG){width="2.595138888888889in"
height="1.1032261592300963in"}

![](media/image46.JPG){width="3.3125in" height="1.0930588363954505in"}

Add another change and commit again.

![](media/image47.JPG){width="3.138888888888889in"
height="1.4884405074365705in"}

![](media/image48.JPG){width="3.5277777777777777in"
height="1.0160509623797025in"}

View the history before reset:

![](media/image49.JPG){width="3.736111111111111in"
height="2.3321248906386702in"}

Check file contents for both changes. Open the edited file (e.g.,
README.md) and visually confirm BOTH added lines exist.

![](media/image50.JPG){width="3.0625in" height="1.4568143044619422in"}

Perform a soft reset (keeps changes in working directory):

![](media/image51.JPG){width="3.4722222222222223in"
height="0.4166666666666667in"}

Check commit history after soft reset:

![](media/image52.JPG){width="3.9930555555555554in"
height="2.4305555555555554in"}

Verify changes in the file. Open the file again and confirm both edits
are still present (nothing lost).

![](media/image53.JPG){width="2.4652777777777777in"
height="1.226505905511811in"}

Check git status:

> ![](media/image47.JPG){width="2.7430555555555554in"
> height="1.3074792213473316in"}

Perform a hard reset (discards changes completely):

![](media/image54.JPG){width="3.5208333333333335in"
height="0.5694444444444444in"}

Check commit history after hard reset:

![](media/image55.JPG){width="4.053784995625547in"
height="2.3402777777777777in"}

Verify changes in the file. Open the file and confirm the second edit is
gone (reverted to previous commit).

![](media/image56.JPG){width="3.0277777777777777in"
height="1.4988998250218724in"}

Check git status:

![](media/image57.JPG){width="3.6805555555555554in"
height="1.0297922134733157in"}

**Task 7 -- Amending the Last Commit**

**Steps:**

Make a small change in any file. Stage it and commit.

![](media/image58.JPG){width="2.861111111111111in"
height="1.5533180227471566in"}

![](media/image59.JPG){width="3.2708333333333335in"
height="0.967082239720035in"}

Realize you forgot to change another file. Update it now. Add it and
amend the last commit:

![](media/image60.JPG){width="2.5806649168853895in"
height="1.5340277777777778in"}

![](media/image61.JPG){width="3.1527777777777777in"
height="0.7527176290463692in"}

![](media/image62.JPG){width="4.356069553805774in"
height="2.548611111111111in"}

![](media/image63.JPG){width="2.9583333333333335in"
height="0.6666666666666666in"}

**Task 8 -- Reverting a Commit (Safe Undo on Remote Branch)**

**Steps:**

Make a change and commit it:

![](media/image64.JPG){width="4.604166666666667in"
height="2.5523632983377076in"}

Now revert that commit safely (do not delete it):

![](media/image65.JPG){width="4.297664041994751in"
height="2.701388888888889in"}

![](media/image66.JPG){width="4.027777777777778in"
height="3.249785651793526in"}

![](media/image67.JPG){width="4.006944444444445in"
height="0.6180555555555556in"}

Push the revert commit:

![](media/image68.JPG){width="4.111111111111111in"
height="1.692810586176728in"}

**Task 9 -- Force Push (With Caution)**

Create a new branch:

![](media/image69.JPG){width="3.1597222222222223in"
height="0.7396248906386702in"}

Make and commit a small change.

![](media/image70.JPG){width="2.6527777777777777in"
height="1.64625656167979in"}

![](media/image71.JPG){width="3.0555555555555554in"
height="0.8572386264216972in"}

Push it:

![](media/image72.JPG){width="4.340277777777778in"
height="1.6090277777777777in"}

Perform a hard reset:

![](media/image73.JPG){width="4.138888888888889in"
height="0.5527088801399825in"}

Push again

> ![](media/image74.JPG){width="4.666666666666667in"
> height="1.0104166666666667in"}

Now force-push to remote:

![](media/image75.JPG){width="3.9444444444444446in"
height="0.7304527559055118in"}

**Task 10 -- Running Gitea in GitHub Codespaces via Docker Compose**

**Steps**

Fork the Gitea Repository:

![](media/image76.JPG){width="5.590277777777778in"
height="3.0555555555555554in"}

![](media/image77.JPG){width="5.548611111111111in"
height="2.088888888888889in"}

Open the Forked Repo in GitHub Codespaces

![](media/image78.JPG){width="2.5277777777777777in"
height="2.213888888888889in"}

![](media/image79.jpeg){width="6.152777777777778in" height="2.44375in"}

Start Gitea with Docker Compose

![](media/image80.JPG){width="4.6875in" height="1.4083333333333334in"}

Access Gitea Web Interface:

> In Codespaces, forward port 3000 (see Codespaces port forwarding UI).
> Change the Visibility of port 3000 from private to public. Click the
> forwarded port 3000 link to open Gitea in your browser tab.
>
> ![](media/image81.JPG){width="4.25in" height="0.9312773403324585in"}
>
> ![](media/image82.JPG){width="4.541666666666667in"
> height="2.748611111111111in"}
>
> ![](media/image83.JPG){width="4.479166666666667in"
> height="2.9770833333333333in"}

Install Gitea:

> ![](media/image84.JPG){width="2.6180555555555554in"
> height="2.698611111111111in"}

Log In to Gitea

![](media/image85.JPG){width="6.631944444444445in"
height="2.2163167104111987in"}

Create a New Repository in Gitea:

![](media/image86.JPG){width="5.354166666666667in"
height="2.1691240157480314in"}

Save a screenshot of the new repository page as gitea_new_repo.png.

**Task 11 -- Creating a GitHub Pages Portfolio Site**

**Steps**

Go to GitHub and create a new repository
named \<your-username\>.github.io. Make sure the repository is public.

![](media/image87.jpeg){width="4.458333333333333in"
height="2.027463910761155in"}

Add Static Website Code: Prepare a simple static website. Put your files
in a local folder.

![](media/image88.JPG){width="1.1111111111111112in"
height="1.2847222222222223in"}

Push the Files to GitHub

![](media/image89.JPG){width="4.5in" height="1.289443350831146in"}

![](media/image90.jpg){width="4.569444444444445in"
height="3.1462587489063867in"}

Go to your repository on GitHub. Click Settings \> Pages. Confirm that
your site is published and see the link to your live site
(e.g., [https://your-username.github.io](https://your-username.github.io/)).

![](media/image91.JPG){width="5.557104111986002in"
height="1.2152777777777777in"}

Visit Your Live Site

![](media/image92.JPG){width="6.076388888888889in"
height="4.557292213473316in"}

**Exam Evaluation Questions**

**1. Local vs Remote Conflict Resolution**

**Steps:**

1.  On GitHub, edit a file (e.g., README.md) and commit the change.

> ![](media/image93.JPG){width="4.256944444444445in"
> height="1.9702744969378827in"}

2.  On your local machine, edit the same file differently (Avoid
    Conflict) and commit.

> ![](media/image94.JPG){width="2.241801181102362in"
> height="0.7645833333333333in"}

3.  Try to push your local commit and observe the error.

> ![](media/image95.JPG){width="4.326388888888889in"
> height="1.8619903762029746in"}

4.  Resolve the conflict by running git pull (merge), then push.

> ![](media/image96.JPG){width="3.8819444444444446in"
> height="3.2181922572178476in"}

5.  Repeat with another remote/local change, but resolve using git pull
    \--rebase, then push.

> ![](media/image97.JPG){width="3.6875in" height="1.3444444444444446in"}
>
> ![](media/image98.JPG){width="3.888888888888889in"
> height="1.6694728783902013in"}

**2. Manual Merge Conflict Handling**

**Steps:**

1.  On GitHub, change a specific line in a file and commit.

> ![](media/image99.JPG){width="3.138888888888889in"
> height="1.1674464129483815in"}

2.  Locally, change the same line differently and commit.

> ![](media/image100.JPG){width="1.9861111111111112in"
> height="0.6597222222222222in"}

3.  Try to push your local change and observe the conflict error.

> ![](media/image101.JPG){width="4.256944444444445in"
> height="1.8399081364829397in"}

4.  Use git pull \--rebase to fetch changes and trigger the conflict.

> ![](media/image102.JPG){width="4.486111111111111in"
> height="2.2606386701662293in"}

5.  Edit the conflicted file to resolve the conflict manually.

> ![](media/image103.JPG){width="2.8125in"
> height="1.0909722222222222in"}
> ![](media/image104.JPG){width="2.1875in"
> height="1.0722222222222222in"}

6.  Mark the conflict resolved (git add \<file\>, git rebase
    \--continue) and push.

> ![](media/image105.JPG){width="4.097222222222222in"
> height="1.6915135608048995in"}
>
> **3. Managing Ignored and Tracked Files**
>
> **Steps:**

1.  Create a new folder (e.g., DocFiles) and add several files inside.

> ![](media/image27.JPG){width="5.6022386264216975in"
> height="1.2083333333333333in"}

2.  Commit and push the folder/files to GitHub.

> ![](media/image27.JPG){width="4.576388888888889in"
> height="2.2506944444444446in"}

3.  Add the folder to your .gitignore file.

> ![](media/image28.JPG){width="4.888888888888889in"
> height="0.5770067804024497in"}

4.  Commit and push the .gitignore update.

> ![](media/image28.JPG){width="4.986111111111111in"
> height="1.499562554680665in"}

5.  Remove the folder from tracking using git rm -r \--cached
    \<folder\>.

> ![](media/image30.JPG){width="3.951388888888889in"
> height="0.5243055555555556in"}

6.  Commit and push the change, then verify the folder is no longer
    tracked on GitHub.

> ![](media/image30.JPG){width="3.8541666666666665in"
> height="2.109027777777778in"}

**4. Commit History Manipulation and Recovery**

**Steps:**

1.  Make a change and commit it.

> ![](media/image106.JPG){width="2.5277777777777777in"
> height="0.8722222222222222in"}

2.  Make another change and commit again.

> ![](media/image107.JPG){width="2.5625in"
> height="0.8770833333333333in"}

3.  View your commit history.

> ![](media/image108.JPG){width="3.8541666666666665in"
> height="1.4517607174103238in"}

4.  Perform a soft reset (git reset \--soft HEAD\~1) and observe your
    file and history.

> ![](media/image109.JPG){width="3.826340769903762in" height="1.375in"}

5.  Make commit again.

> ![](media/image110.JPG){width="3.235774278215223in" height="0.9375in"}

6.  Perform a hard reset (git reset \--hard HEAD\~1) and observe the
    changes.

> ![](media/image111.JPG){width="2.826388888888889in"
> height="0.3888888888888889in"}
