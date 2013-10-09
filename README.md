cv
==

My curriculum vitae in LaTeX. See `cv.tex`.

For PDF, see <http://up.stevetjoa.com/cv.pdf>. This PDF may not necessarily be up to date with `cv.tex`.

CV header: 

![CV header](http://up.stevetjoa.com/cv_header.png)

Page footer: 

![page footer](http://up.stevetjoa.com/cv_footer.png)

Multiple bibliographies: 

![multiple bibliographies](http://up.stevetjoa.com/cv_multibib.png)

To build the PDF and bibliographies from scratch, simply execute the following commands:

	xelatex cv.tex
	bibtex c.aux
	bibtex j.aux
	xelatex cv.tex
	xelatex cv.tex

LaTeX dependencies:

*   `multibib` for multiple bibliographies

Using a Virtual Environment
---------------------------

This section requires [Vagrant](http://vagrantup.com), [VirtualBox](https://www.virtualbox.org), and [Ansible](http://ansibleworks.com).

First, check that `ssh-agent` is running and that your keys are added.

    host$ ssh-agent bash
    host$ ssh-add -l

To create and configure a new virtual machine:

    host:~/cv$ vagrant up
    host:~/cv$ vagrant ssh
    vagrant@cv:~$ sudo apt-get update
    vagrant@cv:~$ sudo apt-get install python-dev python-pip
    vagrant@cv:~$ sudo pip install pip --upgrade
    vagrant@cv:~$ sudo pip install ansible
    vagrant@cv:~$ cd /vagrant
    vagrant@cv:/vagrant$ sudo ansible-playbook -i ansible_hosts setup.yml
    vagrant@cv:/vagrant$ exit


To build and upload (requires AWS S3 keys to be in the environment) the PDF:

    steve@cv:/vagrant$ sudo make
    steve@cv:/vagrant$ sudo ansible-playbook -i ansible_hosts upload.yml

This step requires the environment variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY`.

To transfer AWS S3 keys, copy your key file into `cv/keys.sh`, `source keys.sh` in the guest machine, then delete `cv/keys.sh`.

