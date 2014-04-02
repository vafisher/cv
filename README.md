cv
==

*This CV is not maintained. Moving CV to HTML in [stevetjoa.com-views/cv](http://github.com/stevetjoa/stevetjoa.com-views).*

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

To upload to Amazon S3 using `awscli`:

    aws s3 cp cv.pdf s3://yourbucketnamehere/

This step requires the environment variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY`.

LaTeX dependencies:

*   `multibib` for multiple bibliographies

For more about me, please visit <http://stevetjoa.com>.

Build and Upload Within a Virtual Environment
---------------------------------------------

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

At this point, you will need to specify your `username` and `private_key_path` in `Vagrantfile`.

To build and upload the PDF:

    steve@cv:/vagrant$ sudo make
    steve@cv:/vagrant$ sudo ansible-playbook -i ansible_hosts upload.yml

This step requires the variables `AWS_ACCESS_KEY` and `AWS_SECRET_KEY` in `upload.yml`.
