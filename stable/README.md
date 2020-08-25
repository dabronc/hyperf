Changes to the HyPerf HTK Release Methodology
---------------------------------------------

The HyPerf project is changing as of today (Fri Aug 21, 2020).

Here is the TL;DR: I will be providing untested, rapidly developed code, and
                   documentation in this hyperf/htk.sh file for my HyPerf
                   project on Github.
                   
                   My older, more stable code can be found beneath the
                   hyperf/stable/ directory.
                   
                   This will allow me to get my code changes out there for
                   immediate use, but still provide a stable version where it's
                   needed.


Details
-------
I will continue to present the primary release file (hyperf/htk.sh) as the
latest build or 'dev' version of the toolkit.  That will not change.

But a new sub-directory (hyperf/stable/) has been added to the project to hold
the last 'tested' and 'stable' version of the code for Linux, Cygwin (for
Windows), and Homebrew (for Mac OS X).

The 'hyperf/stable/htk.sh' file will represent the last version that was tested
and was working on all of the platforms. The 'htk.sh' file in each platform
directory will be a symbolic link to the primary 'hyperf/stable/htk.sh' file as
long as that version of code has been tested and is known to be working.

If the htk.sh is not known to be working on a platform, rather than a link, the
'htk.sh' file will simply be the version of the code that is was last known to
be stable for that platform.

This allows the user the simplicity of knowing that using
hyperf/stable/<platform>/htk.sh will always give a version of the code that is
known to work for that specific platform, but they can still get the latest
tools and code out of the dev version, in hyperf/htk.sh, if needed.

If one wants to know the version of the code that a particular HTK is, one can
always run the command: 'bash htk.sh -v'
That command will continue to show the version of the kit, as it did prior to
this change.


What 'Tested' Means to the HyPerf Project Release:
--------------------------------------------------
'Tested' does not mean an assurance of no bugs.
NOT AT *ANY* LEVEL!

*THERE IS ABSOLUTELY NO ASSURANCE OF SUPPORT OR BUG-FREE CODE.
THIS CODE IS FILLED WITH BUGS AND I DO NOT GUARANTEE IT.
(SEE THE LICENSE FOR MORE INFOMATION ABOUT THIS.)*

There will be bugs in the code, undoubtedly.

In this context, 'tested' (i.e. 'stable) means that some effort was put into
verifying that the primary components of the HTK have been tried out and should
continue to work as expected (as they previously worked) on the respective
platform(s).


'Tested' code is best effort only!

It is important to realize that as distributions of GNU/Linux tools move
forward, tools within the HTK can break and may not be working if they have not
been used in the recent past.  YMMV.

There is no support guaranteed support of the HyPerf or the HTK.  I will make an
effort to release earlier and more often under this new method, but stable
versions are likely to lag the dev release significantly.


What 'Supported' Means to the HyPerf Project:
---------------------------------------------
The word 'supported' can mean a lot of things.

In the context of the HyPerf project, and specifically the HTK, 'supported'
means that the code (or other element being talked about) functions as intended
on the platform or system, in context.

*'SUPPORTED' DOES NOT MEAN THAT OFFICIAL SUPPORT SERVICES OF ANY KIND ARE
OFFERED FOR ANY CODE IN THE HYPERF PROJECT!

ALL OF THE CODE IN THE HYPERF PROJECT IS OFFICIALL UNSUPPORTED!!!*


### Below, you can find some information about main components of HyPerf

### The primary components of the HTK include (but are not limited to):
* HTK's self-contained package manager and installer
* HTK's core mass management (MM) engine
* The PLUSH Profile: (shell aliases, exports, and functions included therein)
* Mobile_Home
* Exoshell
* Jail_Tools
* JIC
* The HTK source code builder system
* The Demo_System
* Type4me
* Vim Roles
* Dmap
* The CQT
* Grouper
* SMK.template
* Display_system_information_to_stdout
* Cygwin booster
* Super_quick_build_htk_and_update
* Htk_development_launcher_scriptlet
* Slam
* Vim_session_launcher template
* IP
* Leak.2
* Bkh.mac.iterm2.profiles.json.gz
* Sshd_config.sh.alpha

### Legacy Tools
There is an entire suite of tools that were included in the HTK at one time or
another and may offer some value to someone needing to perform specific
functions.  These tools are *NOT TESTED* and may or may not work on the
supported platforms mentioned.

Those tools include, but are not limited to:
* Aliases, exports, and function within Plush that have gone out of use
* Functions and features of the primary components that have gone out of use
* These components in the payload that are no longer being actively maintained
  and developed (not an exhaustive list):
  ------------------------------------------------------------------------------
  ------------------------------------------------------------------------------
  area bigbenfix.sh contact.csv debug.vimrc dismount.sh dmo
  exp.SUN_JAVA_auto-zypper exp.VMWARE_auto-rpm exp.h.key_parallel_copy
  exp.n.copy_ids find_contacts.sh gdmo j_bak_simplifier.sh j_bundler.sh
  key.jump.files.tgz mntndo mountup qmounter.sh set_up_rpm_top_build_dir.sh
  testme vident4 vm_mount-n-fix_nw.sh vm_n4vm.sh vmj_d vmjs
  xen_mac_randomizer.sh EXAMPLE.CYGWIN.BASHRC.sh add_locked_down_IP_user.sh
  ay_pkg_xk.sh check_sync_of_key_files.sh demo_splitter.sh exp.vmware711.bundle
  generate_openssl_self_signed_cert.sh m_sync.sh mnt_xen_disk.sh n410.sh
  nwfix3.sh prep.4.ssh prove_mk_enc.sh_works.sh remap.stnd.vimrc
  station_migration.sh sync.prep testme.adv vmlaunch.sh atomize.sh
  debug_this_script.sh fcd.simple.mngr.shell linprep.sh mk_enc.sh
  quick_mount_all_devices.sh auto_login.sh cluster_setup_checklist.txt
  ------------------------------------------------------------------------------
  ------------------------------------------------------------------------------

I hope the HTK serves you as well as it has served me, over the years.

Regards.

-bkh
