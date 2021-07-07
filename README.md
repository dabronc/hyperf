The HyPerf Project README
=========================

Table of Contents
-----------------
- What is HyPerf?
- Where did the HyPerf project originate?
- What are the HyPerf project objectives?
- What is the HTK, in a nutshell?
- What are the primary components of the HTK?
- How to get started using the HTK?


What is HyPerf?
---------------
HyPerf stands for (Hy)per (Perf)ormance, or if you'd rather, Hy (Perf)ormance.
Either way, it is about giving the user a method of over-performing what they
can normally do with their Free and Open Source (FOSS) environments, tools, and
skills.

HyPerf is:
 * A Project
 * A Paradigm
 * A Toolkit

**The Project** --
HyPerf is this FOSS project dedicated to helping Linux power users, engineers,
and administrators make the most of their Linux skills by providing them an easy
means of taking those skills with them from instance to instance, server to
server, project to project, and job to job.

**The Paradigm** --
HyPerf is also a paradigm associated with the project that breaks from
traditional Unix methodology: In the classic Unix paradigm, one has a single
tool to do a single job.  This means there are many different, important, and
powerful tools spread throughout many disparate projects and varied packages.
Such a broad dispersal of tools can be detrimental when it comes to:
   * Skilling-up for GNU/Linux environment beginners

   * Collating those skills and tools for intermediate and power users

   * Maintaining those skills at a professional level over an entire career
     that is evolving with rapidly-changing technology fields and stacks.

It's tough out there, and very competitive! :-)

The HyPerf project utilizes a different paradigm than the classic 1-tool/1-job
paradigm of Unix.  The HyPerf philosophy considers the entire mass of code,
tools, and experiences needed to be successful in information technology as a
set bound together by key skills in the GNU/Linux Environment and Tools (GLET),
which is itself just a set of core tools that include...
   * Vim
   * Bash (The GNU shell)
   * The Linux Kernel
   * The util-linux package tools
   * The other core components of the GNU environment
     - GNU build chain
     - GNU coreutils package tools 
     - Other key GNU tools (find, grep, sed, awk, etc., etc.)
   * and other disparate tools spread out all over the place.

The HyPerf project puts its paradigm and methodology into practice by providing
a single, primary kit called the HyPert ToolKit.

        NOTE: The HyPerf paradigm considers all of the tools such as the Linux
              Kernel's **util-linux** and the GNU **coreutils** packages, plus
              all of the other key tools that one would expect to be in a
              standard Linux-like setup to be a toolset called
              **"coreutilinux"**.

              Essentially:
                * The GNU/Linux Environment and Tools packages
                * The Linux util-linux toolset package
                * The GNU coreutils toolset package

              An even shorter term that HyPerf uses to reference the entire
              Linux-like environment is just to call the whole thing "GLET",
              which effectively means the same thing, so...

              GLET = GNU/Linux Environment and Tools

This paradigm makes things easier for the individual to identify, manage, and
deal with all of those career-long skill as a single thing: a kit.

**The Toolkit** --
Finally, and just as important, HyPerf is **a toolkit**.  Specifically, the
**htk.sh** file that you can see at the top of its Git repo.  The HTK has many
tools and configuration settings included in the kit, for use in situations
where having a single toolkit file helps the user to keep track of HyPerf's (or
their own) tools, configurations, skills, and knowledge, instead of having to
deal with multiple packages, files, skills, experience, bookmarks, etc.

In other words, HyPerf let's you have my 20ish years of experience (is it 20
years now?  Whew!) compiled down to an object that you can utilize wherever to
can get to it and are able.  If you don't like my skills and tools, you can use
your own concept and "re-compile" them for your own use, and patch things to
'fix' broken stuff of mine, etc., etc.

So *HOW* do you take your skills from place to place, from system to system,
from job to job?

Use a kit!

Similar to the way Infrastructure as Code (IaC) gives its DevOps practitioners
incredible advantages, Skills as a Kit (SaaK?) gives users incredible super
powers in working with the tech that is all around and available to most
professionals today.  HyPerf acts as a unified object (project + paradigm +
toolkit) that represents an entire career's worth of skill, thought, and
muscle-memory codified into a single object that you can take with you.

I know I certainly do.

Since I started the project, I have used it everywhere that I have
professionally worked with tech, and it has been a valuable resource that has
given me advantages in my work, despite being surrounded by superior colleagues,
career pivots, challenging work environments, and work paces that I could not
have sustained without it.


Where did the HyPerf project originate?
---------------------------------------
HyPerf used to be a BSD licensed SourceForge project that I created and
maintained when I worked at Novell/SUSE in its Advanced Technical Training (ATT)
department.  That project was called 'Mooty' back then, and it was released with
the blessing of Novell's Open Source Review Board (OSRB).

I forked the HyPerf project from Mooty when I left Novell/SUSE, some years ago.
The Mooty project was abandoned at that point and this project is no longer
associated with that one at all.


What are the HyPerf project objectives?
---------------------------------------
These are the main objectives of the HyPerf project:
* To leverage the power of the primary, default Linux user interface tools:
  - The Vim Editor
  - The Bash Shell
  - The Linux Kernel
  - The GNU Tool Set
* To offer **powerful** default configuration settings to users
* To make the use of a system be as fast and as easy for the user as possible
* To provide a means of extending power user, administrator, and engineer skills
* To provide a framework for easy ad-hoc mass management
* To provide a standardized, open source means of transferring Linux skills
  between systems and even between employments


What is the HTK, in a nutshell?
-------------------------------
The HTK is a multi-function installer, toolkit, and payload **bash script** that
acts as the primary delivery mechanism (and deliverable) of the HyPerf project.

The HTK is an attempt to fulfill the listed objectives of the project by having
a single toolkit script file to download from the project, with all of the tools
included within.

The toolkit, called 'The HyPerf ToolKit' or just 'HTK', allows users to leverage
native features of GLET, without having to add on a lot of additional packages
to the system in order for itself to be useful.

For the most part, there is really only a single file to download:
        **htk.sh**

You may see an optional extension included with that name, depending on how you
got the HTK.  It may look something like this:
   **htk.sh--0.5.18--20200127204233**

The long extension, beginning with double-dashes, just indicates when the kit
was built.  The extension name is not required for the kit to work, it simply
makes it easy to tell, by filename, which version it is.

The version can also be obtained by executing **"bash htk.sh -v"**.

As for the code of the htk.sh file, it is written entirely in Bash, so it should
be pretty easy to read and understand, assuming you understand bash scripting.
The code is filled with documentation and self-help features to make it easy to
learn what it is doing underneath.

The HTK makes it easy to do mass amounts of work in various GLET environments.
These are the primary environments where I have used it:
* Pure SUSE Linux workstations
* Myriad other Linux servers (SUSE, Redhat, Centos, Debian, Ubuntu, Amazon
  Linux, etc.)
* Cygwin (w/ MinTTY, on Windows workstations)
* Hombrew + iTerm2 (Mac OS X).

The HTK includes a number of major features for applying the HyPerf Paradigm to
GLET systems.

It is BSD licensed code (other than an included, modified copy of the Bash Man
Page, which is GPL licensed), so other than that man page, users can copy and
use the HTK any way they want, with one caveat: **HYPERF IS NOT SUPPORTED AT
ALL, IN ANY WAY.  See the license for details.**

        ------------------------------------------------------------------------
        NOTE: I do **NOT** warranty the HTK from damaging your system.
              I do **NOT** guarantee its functionality in any way.
              I do **NOT** offer **ANY** form of warranty or guarantee.

              I **DO** advise you to make backups of your systems before using
                 any tool such as the HTK (htk.sh).

              I **DO** advise you that when using **ANY TOOL** from the HyPerf
              project, you are doing so at your own risk.

              If those conditions are not acceptable to you, do **NOT use
              anything from the HyPerf project!!!
        ------------------------------------------------------------------------


What are the primary features of the HTK?
-----------------------------------------
The HTK comes with myriad sub-tools, collated from over 20 years working GLET
environments.  Those tools include a:
* **Help-system:** For easily exploring the HTK before and after install.

* **Payload:**     A base64 encoded, tarball, kit filled with useful
                   - **Tools**,
                   - **Documents**, and
                   - **Configs** that are easy to utilize on GLET systems.

* **Package manager:** GLET-agnostic, self-contained system for...
  + **Browsing** to specific components
  + **Selection** of specific files for extraction
  + **Extraction** of the entire payload
  + **Installation** of the kit
  + **Upgrade**, and
  + **Removal** of the kit, either manually or via fully automated options.

* **SSH MME:**  Ad-hoc Mass-Management Engine (similar to Ansible) with both
                parallel and serial operation, which uses standard GLET SSH and
                Bash and requires **NO** special or custom-compiled components
                needed for operation.

* **Documentation:** for using the ad-hoc MME, as well as the various primary
                     tools of the system.

* **Source code manager:** to build customized versions of the HTK, for ones
                           own use (this is how you 'take it with you, when you
                           go').

* **Example use code:** A safe and easy to way to see and use code from the HTK
                        in other scripts, even proprietary ones.

* **Exo.shell:** A wrapper shell for cloud, devops, power user, and
                 configuration management operations, using Vagrant, Ansible,
                 and SSH.
                 
                 (Coming soon (riiiight!):
                    + OpenSSL
                    + AWS
                    + Docker,
                    + Packer
                    + Terraform
                    + Kubernetes.)

* **PLUSH:** The (P)ortable (L)inux (U)ser (SH)ell for fast, easy,
             HyPerf-customized pre-configuration of the default Linux Bash shell
             environment, including:
   - **plush:**    Shows alls the aliases, functions, and settings of PLUSH.
   - **boost:**    Injects pre-configured HyPerf features into the env (see below).
   - **jailbird:** Create chroot jail containers for use with Jail_tools (see below).
   - **leaks:**    Displays network information leaks from the system.
   - **manclean:** Cleans nroff formatting from man page streams, and formats.
   - **finfo:**    Cleans nroff formatting from info page streams, and formats.
   - **duchs:**    Displays easily-human-readable list of disk usage.
   - **r\*:**      Recursive counting tools.
   - **top\*:**    List the most recently-modified files in top-down list.
   - **qdiff:**    Quick differentiation helper tool.
   - **vault:**    Easily create and use encrypted, expandable volume files for secrets.
   - **vime:**     Easily create, open, and use encrypted Vim files to protect secrets.
   - **dbak:**     Easily create backups with encryption and date-time-stamps.
   - **(many more...)**

* **Boost:** Fast customized configuration overlay of the standard HyPerf Linux
             environment, which includes:
   - **HYPERF.VIMRC.vim**         -- Powerful Vim pre-config for the Vim editor.
   - **HYPERF.BASHRC.sh**         -- Powerful Bash pre-config for the Linux Bash env.
   - **HYPERF.INPUTRC.sh**        -- Powerful Bash readline pre-configuration.
   - **EXAMPLE.CYGWIN.BASHRC.sh** -- Example Cygwin Bash pre-configuration.

* **Freecans:** A suite of various, handy, CLI-extending tools such as:
   - **Jail_Tools:**              Tools for use with jailbird.
   - **Jic:**                     Easy, incremental, backup, troubleshooting, & recovery system.
   - **Mobile_Home:**             Personal root (& other) home directory, on shared systems.
   - **Demo_System:**             Simple text-based recorder for demos and such.
   - **Type4me:**                 Auto-typing system for use with demo-system demos.
   - **Dmap:**                    Dynamic registration tool for system ports, serial numbers, etc.
   - **Linprep:**                 System prep script for use with cloned VMs.
   - **Nwfix:**                   Dynamic network fix script, for use with cluster nodes.
   - **Mk_Enc:**                  Encrypted script creation and execution tool.
   - **Slam:**                    Encrypted volume auto-closing script for use with vault and crond.
   - **SMK.template:**            Self-managing kit template for creating .SMK scripts.
   - **HYPERF.PROJECT.template:** Project template for working with screen projects.
   - **CQT:**                     Cluster Quick Tools for SUSE (partially functional with other distros).
   - **Grouper:**                 Easy cluster grouping management tool for use with HTK & CQT.
   - **(many more...)**


How to get started using the HTK?
---------------------------------
1. Get the HTK: -----------------------------------> **git clone https://github.com/dabronc/hyperf**
2. View the pre-installation help: --------------------> **bash htk.sh --help**
3. Install, upgrade, or downgrade with the HTK file: -----> **bash htk.sh --full-auto-install-upg**
4. Assure Plush is available in the shell: ---------------> **source /etc/bash.bashrc.local**
5. Boost the shell: ---------------------------------> **boost** (Enter 'y' at all prompts)
6. View the post-installation help: -------------------> **htk.sh --help**


