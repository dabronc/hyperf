The HyPerf Project README
=========================

Table of Contents
-----------------
- What is HyPerf?
- What is the HTK, in a nutshell?
- What are the primary components of the HTK?
- How to get started using the HTK?


What is HyPerf?
---------------
HyPerf is...

**A project** dedicated to helping Linux power users, engineers, and
administrators make the most of their Linux skills by providing them an easy
means of taking their skills with them from instance to instance, server to
server, project to project, and job to job,

**A paradigm** associated with the project that breaks from traditional Unix
methodology: In classic Unix, you have a single tool to do a single job.  This
means there are lots and lots of tools spread all over many different projects
and packages.  This can be daunting when it comes to skill collation and
maintenance over a career.  The HyPerf project sees the
set of skills and tools needed to be successful in information technology as a
set, not disparate tools spread out all over the place.  The paradigm practices
that methodology by providing a single, primary kit.  This paradigm makes it
easier to identify, manage, and deal with all of those career-long skill as a
single kit.

**A toolkit** with many tools and configuration settings included, for use in
situations where having a single toolkit file helps the user to keep track of
their own tools, configurations, skills, and knowledge, instead of having to
deal with multiple packages, files, etc.

HyPerf used to be a SourceForge project called 'Mooty', though the HyPerf
project is no longer associated with that project at all.


HyPerf Project Objectives
-------------------------
* Leverage the power of the primary, default Linux user interface tools:
  - The Vim Editor
  - The Bash Shell
  - The Linux Kernel
  - The GNU Tool Set
* Offer default configuration settings to users
* Make the use of the system as fast and as easy for the user, as possible
* Provide a means of extending power user, administrator, and engineer skills
* Provide a framework for easy ad-hoc, mass management
* Provide a standardized means of transferring Linux skills between systems


What is the HTK, in a nutshell?
-------------------------------
The HTK is a multi-function, installer and toolkit payload **bash script** that
acts as the primary delivery mechanism, and deliverable of the HyPerf project.

The HTK is an attempt to fulfill the listed objectives of the project by having
a single toolkit script file to download from the project, with all of the tools
included within.

The toolkit, called 'The HyPerf ToolKit' or just 'HTK' allows users to leverage
native features of Linux, without having to add on a lot of additional packages
to the system to utilize itself.

For the most part, there is really only a single file to download:
        **htk.sh**

You may see an optional extension included with that name, depending on how you
got the HTK.  It may look something like this:
        **htk.sh--0.5.18--20200127204233**

The long extension, beginning with double-dashes, just comes from when the kit
is built.

The extension name is not required for the kit to work, it simply makes it easy
to tell by filename, which version it is.

The version can also be obtained by executing **"bash htk.sh -v"**.

As for the code of the htk.sh file, it is written entirely in Bash, so it is
should be pretty easy to read and understand, if you understand scripting.  The
code is filled with documentation and self-help features to make it easy to
learn what it is doing underneath.

The HTK makes it easy to do mass amounts of work in various Linux environments,
in Cygwin on Windows, and in a true Homebrew environment on Mac OS X.  It
includes a number of major features, for applying the HyPerf Paradigm to a
GNU/Linux system.

It is BSD licensed code (other than an included, modified copy of the Bash Man
Page, which is GPL licensed), so users can copy it and use it any way they want,
with one caveat: **HYPERF IS NOT SUPPORTED AT ALL, IN ANY WAY.  See the license
for details.**


What are the primary features of the HTK?
-----------------------------------------
The HTK comes with myriad sub-tools, collated from over 20 years working with
Linux environments.  Those tools include a:
* **Help-system:** For easily exploring the HTK before and after install
* **Payload:** A base64 encoded, tarball, kit filled with useful **tools**,
               **documents**, and **configs** that are easy to utilize on Linux
               systems
* **Package manager:** An agnostic, self-contained system for...
  + **Browsing** to specific components
  + **Selection** of specific files for extraction
  + **Extraction** of the entire payload
  + **Installation**, **upgrade**, and **removal** of the kit, either manually or
    via fully automated options
* **An SSH ad-hoc cluster mass-management engine:** with both parallel and serial
                                                   operation, which uses
                                                   standard Linux environment
                                                   tools (no special or
                                                   custom-compiled components
                                                   needed for operation)
* **Documentation:** for using the ad-hoc cluster management engine, as well as
                    the various primary tools of the system
* **Source code manager:** to build customized versions of the HTK, for ones
                           own use
* **Example use code:** A safe and easy to way to see and use code from the HTK
                        in other scripts, even proprietary ones
* **Exo.shell:** A wrapper shell for cloud, devops, power user, and configuration
              management operations, using Vagrant, Ansible, and SSH.
              (Coming soon: OpenSSL, AWS, Docker, and Kubernetes!)
* **PLUSH:** The (P)ortable (L)inux (U)ser (SH)ell for fast, easy,
             HyPerf-customized pre-configuration of the default Linux Bash shell
             environment, including:
   - **plush:**    Shows alls the aliases, functions, and settings of PLUSH
   - **boost:**    Injects pre-configured HyPerf features into the env (see below)
   - **jailbird:** Create chroot jail containers for use with Jail_tools (see below)
   - **leaks:**    Displays network information leaks from the system
   - **manclean:** Cleans nroff formatting from man page streams, and formats
   - **finfo:**    Cleans nroff formatting from info page streams, and formats
   - **duchs:**    Displays easily-human-readable list of disk usage
   - **r\*:**      Recursive counting tools
   - **top\*:**    List the most recently-modified files in top-down list
   - **qdiff:**    Quick differentiation helper tool
   - **vault:**    Easily create and use encrypted, expandable volume files for secrets
   - **vime:**     Easily create, open, and use encrypted Vim files to protect secrets
   - **dbak:**     Easily create backups with encryption and date-time-stamps
   - **(many more...)**
* **Boost:** Fast customized configuration overlay of the standard HyPerf Linux
             environment, which includes:
   - **HYPERF.VIMRC.vim**         -- Powerful Vim pre-config for the Vim editor
   - **HYPERF.BASHRC.sh**         -- Powerful Bash pre-config for the Linux Bash env
   - **HYPERF.INPUTRC.sh**        -- Powerful Bash readline pre-configuration
   - **EXAMPLE.CYGWIN.BASHRC.sh** -- Example Cygwin Bash pre-configuration
* **Freecans:** A suite of various, handy, CLI-extending tools such as:
   - **Jail_Tools:**              Tools for use with jailbird
   - **Jic:**                     Easy, incremental, backup, troubleshooting, & recovery system
   - **Mobile_Home:**             Personal root (& other) home directory, on shared systems
   - **Demo_System:**             Simple text-based recorder for demos and such
   - **Type4me:**                 Auto-typing system for use with demo-system demos
   - **Dmap:**                    Dynamic registration tool for system ports, serial numbers, etc.
   - **Linprep:**                 System prep script for use with cloned VMs
   - **Nwfix:**                   Dynamic network fix script, for use with cluster nodes
   - **Mk_Enc:**                  Encrypted script creation and execution tool
   - **Slam:**                    Encrypted volume auto-closing script for use with vault and crond
   - **SMK.template:**            Self-managing kit template for creating .SMK scripts
   - **HYPERF.PROJECT.template:** Project template for working with screen projects
   - **CQT:**                     Cluster Quick Tools for SUSE (partially functional with other distros)
   - **Grouper:**                 Easy cluster grouping management tool for use with HTK & CQT
   - **(many more...)**


How to get started using the HTK?
---------------------------------
1. Get the HTK: -----------------------------------------> **git clone https://github.com/dabronc/hyperf**
2. View the pre-installation help: ----------------------> **bash htk.sh --help**
3. Install, upgrade, or downgrade with an HTK file: --> **bash htk.sh --full-auto-install-upg**
4. Assure Plush is available in the shell: ---------------> **source /etc/bash.bashrc.local**
5. Boost the shell: --------------------------------------> **boost** (Enter 'y' at all prompts)
6. View the post-installation help: ----------------------> **htk.sh --help**


