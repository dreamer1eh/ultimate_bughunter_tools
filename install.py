import os
import subprocess
import time
import sys

# --- Configuration ---

# The directory where all the tools will be installed
INSTALL_DIR = os.path.join(os.path.expanduser("~"), "ultimate_bht")

# List of system dependencies to install via apt-get
# This is for Debian-based systems (like Ubuntu, Kali Linux)
APT_PACKAGES = [
    "libcurl4-openssl-dev",
    "libssl-dev",
    "jq",
    "ruby-full",
    "libxml2",
    "libxml2-dev",
    "libxslt1-dev",
    "ruby-dev",
    "build-essential",
    "libgmp-dev",
    "zlib1g-dev",
    "libffi-dev",
    "python-dev",
    "python-setuptools",
    "libldns-dev",
    "python3-pip",
    "git",
]

# List of Python packages to install via pip
PIP_PACKAGES = [
    "dnspython",
]

# List of Git repositories to clone
GIT_REPOS = [
    "https://github.com/michenriksen/aquatone.git",
    "https://github.com/rbsec/dnscan.git",
    "https://github.com/dreamer1eh/knockpy.git",
    "https://github.com/dreamer1eh/Sublist3r.git",
    "https://github.com/blechschmidt/massdns.git",
    "https://github.com/robertdavidgraham/masscan.git",
    "https://github.com/ChrisTruncer/EyeWitness.git",
    "https://github.com/maurosoria/dirsearch.git",
    "https://github.com/michenriksen/gitrob.git",
    "https://github.com/awslabs/git-secrets.git",
    "https://github.com/ZephrFish/GoogD0rker.git",
    "https://github.com/1N3/Sn1per.git",
    "https://github.com/evilsocket/xray.git",
    "https://github.com/xmendez/wfuzz.git",
    "https://github.com/lanjelot/patator.git",
    "https://github.com/DataSploit/datasploit.git",
    "https://github.com/vanhauser-thc/thc-hydra.git",
    "https://github.com/ztgrace/changeme.git",
    "https://github.com/BuffaloWill/oxml_xxe.git",
    "https://github.com/enjoiz/XXEinjector.git",
    "https://github.com/ticarpi/jwt_tool.git",
    "https://github.com/jobertabma/ground-control.git",
    "https://github.com/JacobReynolds/ssrfDetector.git",
    "https://github.com/D35m0nd142/LFISuite.git",
    "https://github.com/internetwache/GitTools.git",
    "https://github.com/kost/dvcs-ripper.git",
    "https://github.com/anshumanbh/tko-subs.git",
    "https://github.com/nahamsec/HostileSubBruteforcer.git",
    "https://github.com/insp3ctre/race-the-web.git",
    "https://github.com/GoSecure/ysoserial.git",
    "https://github.com/ambionics/phpggc.git",
    "https://github.com/RUB-NDS/CORStest.git",
    "https://github.com/RetireJS/retire.js.git",
    "https://github.com/vulnersCom/getsploit.git",
    "https://github.com/1N3/Findsploit.git",
    "https://github.com/mazen160/bfac.git",
    "https://github.com/Dionach/CMSmap.git",
    "https://github.com/OWASP/Amass.git",
    "https://github.com/s0md3v/Photon.git",
    "https://github.com/yassineaboukir/Asnlookup.git",
    "https://github.com/nahamsec/crtndstry.git",
    "https://github.com/nahamsec/JSParser.git",
    "https://github.com/tomdev/teh_s3_bucketeers.git",
    "https://github.com/wpscanteam/wpscan.git",
    "https://github.com/nahamsec/lazys3.git",
    "https://github.com/jobertabma/virtual-host-discovery.git",
    "https://github.com/BiswajeetRay7/UPI-INT.git",
    "https://github.com/nahamsec/lazyrecon.git",
    "https://github.com/danielmiessler/SecLists.git",
    "https://github.com/MobSF/Mobile-Security-Framework-MobSF.git",
    # Special case handled separately
    # "https://github.com/nahamsec/recon_profile.git",
]


def print_banner():
    """Prints the ASCII art banner."""
    banner = """
       _ _   _                 _           _     _     _
 _   _| | |_(_)_ __ ___   __ _| |_ ___    | |__ | |__ | |_
| | | | | __| | '_ ' _ \ / _' | __/ _ \   | '_ \| '_ \| __|
| |_| | | |_| | | | | | | (_| | ||  __/   | |_) | | | | |_
 \__,_|_|\__|_|_| |_| |_|\__,_|\__\___|___|_.__/|_| |_|\__|
                                     |_____|
						v1.0
 <-------{Ultimate Bug Hunting Tools v1.0}------->

  _  _   __              _
 | -- | /   _  _| _  _| |_)  o
 |_--_| \__(_)(_|(/_(_| |_)\/o
                          _/

                         ____
                        |  _ \ _ __ ___  __ _ _ __ ___   ___ _ __
                        | | | | '__/ _ \/ _' | '_ ' _ \ / _ \ '__|
                        | |_| | | |  __/ (_| | | | | | |  __/ |
                        |____/|_|  \___|\__,_|_| |_| |_|\___|_|
    """
    print(banner)
    time.sleep(1)


def run_command(command, sudo=False):
    """Runs a shell command with optional sudo."""
    if sudo and os.geteuid() != 0:
        command = ["sudo"] + command
    try:
        print(f"[*] Running: {' '.join(command)}")
        subprocess.run(command, check=True)
        print(f"[+] Command successful: {' '.join(command)}")
    except subprocess.CalledProcessError as e:
        print(f"[!] Error running command: {' '.join(command)}")
        print(f"[!] {e}")
        # sys.exit(1) # Uncomment to exit on first error
    except FileNotFoundError:
        print(f"[!] Command not found: {command[0]}. Is it installed and in your PATH?")
        # sys.exit(1)
    print("-" * 30)
    time.sleep(1)


def install_system_dependencies():
    """Installs system-level packages."""
    print("\n[#] Installing system dependencies with apt-get...")
    for package in APT_PACKAGES:
        run_command(["apt-get", "install", "-y", package], sudo=True)


def install_pip_dependencies():
    """Installs Python packages."""
    print("\n[#] Installing pip packages...")
    for package in PIP_PACKAGES:
        run_command(["pip3", "install", package], sudo=True)


def setup_recon_profile():
    """Clones and sets up the recon_profile aliases."""
    print("\n[#] Installing bash_profile aliases from recon_profile...")
    recon_profile_path = os.path.join(INSTALL_DIR, "recon_profile")
    if not os.path.isdir(recon_profile_path):
        run_command(["git", "clone", "https://github.com/nahamsec/recon_profile.git", recon_profile_path])
    
    bash_profile_source = os.path.join(recon_profile_path, "bash_profile")
    bash_profile_dest = os.path.join(os.path.expanduser("~"), ".bash_profile")

    try:
        with open(bash_profile_source, "r") as source_file:
            content = source_file.read()
        with open(bash_profile_dest, "a") as dest_file:
            dest_file.write("\n# Added by ultimate_bughunter_tools\n")
            dest_file.write(content)
        print(f"[+] Appended recon_profile aliases to {bash_profile_dest}")
        print("[!] IMPORTANT: Please run 'source ~/.bash_profile' or open a new terminal for the new aliases to take effect.")
    except IOError as e:
        print(f"[!] Error setting up recon_profile: {e}")

    time.sleep(1)


def clone_tools():
    """Clones all the tool repositories."""
    print(f"\n[#] Cloning tools into {INSTALL_DIR}...")
    if not os.path.exists(INSTALL_DIR):
        os.makedirs(INSTALL_DIR)
        print(f"[+] Created directory: {INSTALL_DIR}")

    for repo_url in GIT_REPOS:
        repo_name = repo_url.split("/")[-1].replace(".git", "")
        target_path = os.path.join(INSTALL_DIR, repo_name)
        if os.path.isdir(target_path):
            print(f"[*] {repo_name} already exists. Skipping.")
        else:
            print(f"\n[#] Downloading {repo_name}...")
            run_command(["git", "clone", repo_url, target_path])


def print_final_message():
    """Prints the concluding message with social media links."""
    message = """
[*] All tools have been downloaded!
[*] They are located in the ~/ultimate_bht directory.

[!!] Follow Dreamer On Social Media, Contact me there for any query:
	[~] Website   : https://www.dreamereh.ml/
	[~] Github    : https://github.com/dreamer1eh/
	[~] YouTube   : @i_eh_dreamer {https://www.youtube.com/iehdreamer/}
	[~] Instagram : @i_eh_dreamer {https://www.instagram.com/dreamer1eh/}
	[~] Twitter   : @i_eh_dreamer {https://twitter.com/dreamer1eh/}
    [~] LinkedIn  : https://linkedin.com/in/rajnish-kumar-eh/
    """
    print(message)


def main():
    """Main function to run the installer."""
    if os.geteuid() != 0:
        print("[!] This script requires sudo privileges to install system packages.")
        print("[!] Please run it with: sudo python3 install.py")
        sys.exit(1)

    print_banner()
    install_system_dependencies()
    install_pip_dependencies()
    clone_tools()
    setup_recon_profile() # This should be done after creating the main directory
    print_final_message()


if __name__ == "__main__":
    main()
