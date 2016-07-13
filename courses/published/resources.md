<!--
This is the template for the self-paced courses.
Put your content in between the comments that mark
out the different sections.  Text should be written
in markdown.
-->
    

<link rel="stylesheet" href="/static/selfpaced/selfpaced.css" markdown="1">
<div id="lesson" markdown="1">
<div id="instructions" markdown="1">
<div class="instruction-header" markdown="1">
<i class="fa fa-graduation-cap" markdown="1"></i>
Lesson
</div>
<div class="instruction-content video-container" markdown="1">
<!-- Primary Text of the lesson -->
<!-------------------------------->

<iframe src="https://player.vimeo.com/video/174585780" height="100%" width="100%" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

<!-- End of primary test of the lesson -->
</div>
<div class="instruction-header" markdown="1">
<i class="fa fa-desktop"></i>
Practice
</div>
<div class="instruction-content" markdown="1">
<!-- High level description of the exercise. -->
<!-------------------------------------------->





<!-- End of high level description. -->
</div>
<div class="instruction-header" markdown="1">
<i class="fa fa-square-check-o"></i>
Instructions
</div>
<div class="instruction-content" markdown="1">
<!-- Step by step instructions -->
<!-------------------------------->

1.  Execute the `puppet resource` command to query the `user`s on your system.

    <pre>[root@training modules]# puppet resource user
    user { 'abrt':
      ensure           => 'present',
      gid              => '173',
      home             => '/etc/abrt',
      password         => '!!',
      password_max_age => '-1',
      password_min_age => '-1',
      shell            => '/sbin/nologin',
      uid              => '173',
    }
    user { 'adm':
      ensure           => 'present',
      comment          => 'adm',
      gid              => '4',
      groups           => ['sys', 'adm'],
      home             => '/var/adm',
      password         => '*',
      password_max_age => '99999',
      password_min_age => '0',
      shell            => '/sbin/nologin',
      uid              => '3',
    }
    [...]
    </pre>

2.  Execute the `puppet resource user root` command to query the system about the state of the `root` user.

    <pre>[root@training modules]# puppet resource user root
    user { 'root':
      ensure           => 'present',
      comment          => 'root',
      gid              => '0',
      home             => '/root',
      password         => '$1$jr...IxvDLjw1M/',
      password_max_age => '99999',
      password_min_age => '0',
      shell            => '/bin/bash',
      uid              => '0',
    }
    </pre>

3.  Execute puppet resource commands to query the system for the state of packages and host records.

    *   `[root@training ~]# puppet resource package`
    *   `[root@training ~]# puppet resource host`







<!-- End of step by step instruction -->
</div>

<div class="instruction-header" markdown="1">
<i class="fa fa-pencil"></i>
Notes
</div>

<div class="instruction-content" markdown="1">

<!-- Other notes -->
<!-------------------->

When you're ready to move on, just click to the next section, the practice
machine will shut down automatically when you're done.

## References ##
* [Docs](http://docs.puppetlabs.com/puppet/4.0/reference/lang_resources.html)
* [Resource Abstraction Layer](http://docs.puppetlabs.com/learning/ral.html)
* [Puppet Core Types Cheatsheet - PDF](http://docs.puppetlabs.com/puppet_core_types_cheatsheet.pdf)

<!-- End of notes section -->
</div>
<a href="https://try.puppet.com/sandbox/?course=resources" class="btn btn-default" target="terminal">Start Practice Session</a>
</div>
<div id="terminal" markdown="1">
  <iframe name="terminal"></iframe>
</div>
</div>

<!--
# Resources  #
Understanding Resources is fundemantal to understanding how Puppet works. Resources are like building blocks (think Lego). They can be combined to model the expected state of the systems you manage.  

At the end of this course you will be able to:

* explain what a Puppet resource is.
* create a Puppet resource using proper syntax.
* examine resources using the `puppet resource` tool.

## Video ##

## Transcript


## Quiz ##

1. True or False. Resources give the user the ability to model a system's configuration.
	**True**
2. Every resource has a **type**, **title**, and a set of: 
	a. functions
	b. classes 
	c. **attributes**
	d. values
3. Using the following resource declaration, what is the **title** of the resource?
	`file { '/etc/passwd':
		  ensure => file,
  		owner  => 'root',
  		group  => 'root',
  		mode   => '0600',  
   }`

	a. `file`
	b. **`/etc/passwd`**
	c. `owner`
	d. `group`
4. Puppet uses the Resource Abstraction Layer (RAL) to absract **types** (high-level models) from the low level implementation, or:
	a. classes
	b. functions
	c. **providers**
	d. operating systems
5. True or False. Puppet allows you to declare the same resource twice.
	**False**

-->
