CLOUD COMPUTING

LAB 04

![](media/image1.jpeg){width="1.125in" height="1.3819444444444444in"}

Submitted To:

Engr. Shoaib

Submitted By:

Komal Kashif

BSE V-A

2023-BSE-031

**Task 1 -- Verify VM resources in VMware**

Confirm the VM resources that were allocated in Lab 1.

Steps

1.  Open VMware Workstation and locate the Ubuntu Server VM you used in
    Lab 1.

2.  Inspect VM settings and note the following (no commands required for
    GUI): VM name, RAM, CPU, disk, and network adapter type.

3.  Take a screenshot of the VM settings window showing RAM, CPU, disk
    and networking. 

> ![](media/image2.PNG){width="5.340277777777778in"
> height="3.2572265966754155in"}

**Task 2 -- Start VM and log in**

Steps

1.  Start (or resume) the VM in VMware Workstation on your host.

2.  From your host, open your preferred terminal (for example: Windows
    Command Prompt, PowerShell, macOS Terminal, or Linux Terminal) and
    connect to the VM using SSH

![](media/image3.PNG){width="4.152777777777778in"
height="3.5427274715660544in"}

Since my vm couldn't connect to host through ssh username@\<ip\>, I did
it through port forwarding.

3.  After logging in, run both commands and capture them together in a
    single screenshot:

whoami

pwd

![](media/image4.PNG){width="2.7987554680664917in"
height="0.888934820647419in"}

**Task 3 -- Filesystem exploration --- root tree and dotfiles**

Steps (run inside VM terminal)

1.  List root directory contents:

![](media/image5.PNG){width="3.4097222222222223in"
height="2.8851509186351705in"}

2.  Inspect these directories:

-   ls -la /bin

![](media/image6.PNG){width="3.118216316710411in"
height="0.23612314085739283in"}

-   ls -la /sbin

![](media/image7.PNG){width="3.180718503937008in"
height="0.25001312335958004in"}

-   ls -la /usr

![](media/image8.PNG){width="3.222387357830271in"
height="1.604248687664042in"}

-   ls -la /opt

> ![](media/image9.PNG){width="3.014044181977253in"
> height="0.7083694225721785in"}

-   ls -la /etc

![](media/image10.PNG){width="4.2384612860892386in"
height="2.7291666666666665in"}

-   ls -la /dev

![](media/image11.png){width="4.030768810148731in"
height="2.639438976377953in"}

-   ls -la /var

![](media/image12.PNG){width="3.7224136045494314in"
height="2.0209372265966756in"}

-   ls -la /tmp

![](media/image13.PNG){width="6.5in" height="1.6236111111111111in"}

3.  List your home directory and show hidden (dot) files:

ls -la \~

![](media/image14.PNG){width="4.451617454068241in"
height="1.250064523184602in"}

4.  Write a short paragraph (3--5 sentences) that explains the
    difference between /bin, /usr/bin and /usr/local/bin. Open your
    editor:

nano \~/answers.md

-   Type the paragraph in the editor, save and exit.

-   After saving, open the editor display (or show the file) and capture
    a screenshot of the paragraph.

> ![](media/image15.png){width="5.967822615923009in"
> height="0.7153849518810149in"}

**Task 4 -- Essential CLI tasks --- navigation and file operations**

Steps (inside VM terminal)

1.  Create a workspace and navigate:

-   mkdir -p \~/lab4/workspace/python_project

![](media/image16.PNG){width="4.2510192475940505in"
height="0.16153871391076116in"}

-   cd \~/lab4/workspace/python_project

![](media/image17.PNG){width="3.7762248468941384in"
height="0.2307688101487314in"}

-   pwd

![](media/image18.PNG){width="3.4999978127734033in"
height="0.29230752405949256in"}

2.  Create files using an editor (open each editor session and save a
    screenshot showing content):

-   nano README.md

> Inside nano add: Lab 4 README and save.

![](media/image19.PNG){width="2.15288823272091in"
height="0.45835739282589677in"}

-   nano main.py

> Inside nano add: print(\"hello lab4\") and save.
>
> ![](media/image20.PNG){width="1.9931583552055994in"
> height="0.5625284339457568in"}

-   nano .env

> Inside nano add: ENV=lab4 and save.
>
> ![](media/image21.PNG){width="1.8334273840769904in"
> height="0.513915135608049in"}

3.  List files and capture:

ls -la

![](media/image22.PNG){width="3.5769225721784776in"
height="0.8238188976377953in"}

4.  Copy, move and remove:

-   cp README.md README.copy.md

> ![](media/image23.PNG){width="4.97205927384077in"
> height="0.2307688101487314in"}

-   mv README.copy.md README.dev.md

> ![](media/image24.PNG){width="5.265155293088364in"
> height="0.22307633420822398in"}

-   rm README.dev.md

> ![](media/image25.PNG){width="4.200866141732283in"
> height="0.23076990376202974in"}

-   mkdir -p \~/lab4/workspace/java_app

> ![](media/image26.PNG){width="4.673611111111111in"
> height="0.2361111111111111in"}

-   cp -r \~/lab4/workspace/python_project
    \~/lab4/workspace/java_app_copy

> ![](media/image27.PNG){width="6.5in" height="0.22013888888888888in"}

-   ls -la \~/lab4/workspace

![](media/image28.PNG){width="4.319666447944007in"
height="0.6805905511811023in"}

5.  Use command history and tab completion:

-   history

![](media/image29.PNG){width="3.961538713910761in"
height="3.436253280839895in"}

-   Demonstrate tab completion (type partial name and press Tab) and
    capture that action as tab_completion.png.

![](media/image30.PNG){width="4.222215660542433in"
height="0.29230752405949256in"}

**Task 5 -- System info, resources & processes**

Steps (inside VM terminal)

1.  Kernel and OS:

uname -a

![](media/image31.PNG){width="6.5in" height="0.25in"}

2.  CPU (ensure model name visible):

cat /proc/cpuinfo

![](media/image32.PNG){width="6.666476377952756in"
height="2.9846161417322836in"}

3.  Memory:

free -h

![](media/image33.PNG){width="4.611348425196851in"
height="0.47919181977252845in"}

4.  Disk:

df -h

![](media/image34.PNG){width="6.829289151356081in"
height="1.5538451443569554in"}

5.  View OS release information:

cat /etc/os-release

![](media/image35.PNG){width="4.791912729658793in"
height="1.5764698162729658in"}

6.  Processes (show top lines of ps output):

ps aux

Some of the running processes are:

![](media/image36.PNG){width="6.5in" height="2.74375in"}

**Task 6 -- Users and account verification (no sudo group change)**

Steps (inside VM terminal)

1.  Create a new user named lab4user:

sudo adduser lab4user

![](media/image37.PNG){width="4.576624015748031in"
height="2.3612325021872267in"}

2.  Verify the user entry:

getent passwd lab4user

![](media/image38.PNG){width="5.929409448818897in"
height="0.2461537620297463in"}

3.  Switch to the new user to verify login:

su - lab4user

![](media/image39.PNG){width="2.196755249343832in"
height="0.3461537620297463in"}

4.  From the new user you may attempt a sudo command to show that sudo
    is not available for this account (expected failure), e.g.:

sudo whoami

![](media/image40.PNG){width="2.645968941382327in"
height="0.36807414698162727in"}

5.  Return to the original user:

> exit

![](media/image41.PNG){width="2.3195636482939634in"
height="0.5347495625546806in"}

6.  (Optional) Remove the test user when finished:

sudo deluser \--remove-home lab4user

![](media/image42.PNG){width="3.2987806211723534in"
height="0.6875349956255468in"}

**Bonus Task 7 -- Create a small demo script using an editor and run
it**

Steps (inside VM)

1.  Open an editor to create the script:

nano \~/lab4/workspace/run-demo.sh

-   Type the following lines into the editor (manually or paste), save
    and exit:

#!/bin/bash

echo \"Lab 4 demo: current user is \$(whoami)\"

echo \"Current time: \$(date)\"

uptime

free -h

![](media/image43.PNG){width="4.132156605424322in"
height="1.0486646981627297in"}

2.  Make the script executable:

chmod +x \~/lab4/workspace/run-demo.sh

![](media/image44.PNG){width="3.792307524059493in"
height="0.34123031496062994in"}

3.  Run the script as your regular user:

\~/lab4/workspace/run-demo.sh

![](media/image45.PNG){width="4.631943350831146in"
height="0.7956189851268591in"}

4.  Optionally run it with sudo:

sudo \~/lab4/workspace/run-demo.sh

![](media/image46.PNG){width="4.597458442694663in"
height="0.9236581364829396in"}

**EXAM EVALUATION QUESTIONS**

**1. Remote Access Verification (Cyber Login Check)**

Scenario:\
You are part of a SOC (Security Operations Center) investigating
unauthorized access to a Linux server hosted on VMware. Prove you can
securely connect and verify your identity.

Steps:

1.  Connect to the Ubuntu VM remotely from your host terminal.

> ![](media/image3.PNG){width="4.438461286089239in"
> height="3.7864435695538057in"}

2.  Verify your current user and home directory path.

> ![](media/image4.PNG){width="2.2in" height="0.698759842519685in"}

3.  Confirm you are connected to the correct host machine.

![](media/image47.PNG){width="1.7615387139107612in"
height="0.27270669291338584in"}

**2. Filesystem Inspection for Forensic Evidence**

Scenario:\
The incident response team suspects malicious files in system
directories. You must explore the filesystem to locate and document the
system's structure.

Steps:

1.  Display the contents of the root directory.catc

> ![](media/image48.PNG){width="4.382169728783902in"
> height="2.0209372265966756in"}

2.  Display the OS version and release information.

> ![](media/image49.PNG){width="4.757189413823272in"
> height="1.604248687664042in"}

3.  Explore and record directory listings
    for /bin, /sbin, /usr, /opt, /etc, /dev, /var, and /tmp.

> For this step, save all the listings in one file
> directory_listings.txt using:
>
> ls -l /bin \>\> \~/directory_listings.txt
>
> And same for all the files.
>
> Then, run
>
> cat \~/directory_listings.txt
>
> ![](media/image50.png){width="6.137645450568679in"
> height="2.515384951881015in"}

4.  Display all hidden files in your home directory.

> ![](media/image51.PNG){width="4.423838582677165in"
> height="2.1459437882764654in"}

5.  Create a markdown file summarizing your findings on key binary
    directories.

> For this step, create a file report.md in /lab4/workspace. Add summary
> to report.md by:
>
> nano report.md
>
> Then, run
>
> cat report.md
>
> ![](media/image52.PNG){width="4.743299431321085in"
> height="1.152836832895888in"}
>
> **3. Evidence Handling & File Operations**
>
> **Scenario:**\
> You are creating a sandbox environment to safely analyze and handle
> suspicious files collected from a compromised system.
>
> **Steps:**

1.  Create a structured folder hierarchy under your home directory for
    analysis.

> ![](media/image53.PNG){width="3.3913035870516186in"
> height="0.24637685914260718in"}

2.  Create three text files, including one hidden file, in your
    workspace.

> ![](media/image54.PNG){width="4.937753718285214in"
> height="1.152836832895888in"}

3.  Create a backup copy of one file, rename it, and then delete it
    after verification.

> ![](media/image55.png){width="4.80580271216098in"
> height="0.8055971128608924in"}

4.  Copy the entire workspace as an evidence backup folder.

> ![](media/image56.PNG){width="3.215442913385827in"
> height="1.2570089676290463in"}

5.  Display your command history to document all actions performed.

> ![](media/image57.PNG){width="3.4256944444444444in"
> height="1.956398731408574in"}

6.  Demonstrate Linux auto-completion by typing a partial command or
    filename.

> ![](media/image58.PNG){width="2.634782370953631in"
> height="0.2710061242344707in"}
>
> **4. System Profiling and Process Monitoring**
>
> **Scenario:**\
> You are investigating a potential malware infection that is consuming
> excessive resources on the Linux VM.
>
> **Steps:**

1.  Display the system's OS and kernel version for the investigation
    report.

> ![](media/image59.PNG){width="4.798858267716535in"
> height="1.791758530183727in"}

2.  Display CPU, memory, and disk usage information.

> ![](media/image60.PNG){width="5.747825896762905in"
> height="3.3295636482939632in"}

3.  Display all active running processes to identify suspicious
    activity.

> ![](media/image61.PNG){width="6.5in" height="2.0618055555555554in"}
>
> **5. User Account Audit & Privilege Escalation Simulation**
>
> **Scenario:**\
> You are performing a **user activity audit** on a compromised Linux
> server.\
> The SOC suspects a newly created account (lab4user) may have been used
> for unauthorized access.\
> Your task is to simulate the account creation, perform privilege
> tests, and analyze authentication logs for forensic evidence.
>
> **Steps:**

1.  Create a new test user named lab4user.

> ![](media/image37.PNG){width="4.576624015748031in"
> height="2.3612325021872267in"}

2.  Verify that the new user record exists in the system's user
    database.

![](media/image38.PNG){width="5.486956474190726in"
height="0.22778543307086613in"}

3.  Log in as lab4user and confirm successful login.

> ![](media/image39.PNG){width="2.1688353018372704in"
> height="0.35652121609798776in"}

4.  Attempt to run an administrative command as lab4user (expect
    permission denied).

> ![](media/image40.PNG){width="2.645968941382327in"
> height="0.36807414698162727in"}

5.  Switch back to your main analyst account.

![](media/image41.PNG){width="2.3195636482939634in"
height="0.5347495625546806in"}

6.  (Optional) Remove the lab4user account after the audit and verify
    deletion.

> ![](media/image42.PNG){width="3.2987806211723534in"
> height="0.6875349956255468in"}
