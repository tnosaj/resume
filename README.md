# jason(7) - cloud and database-wrangler - Linux man page

[NAME](#NAME)

[SYNOPSIS](#SYNOPSIS)

[DESCRIPTION](#DESCRIPTION)

[OPTIONS](#OPTIONS)

[HISTORY](#HISTORY)

[SEE ALSO](#SEE%20ALSO)

[BUGS](#BUGS)

[AUTHOR](#AUTHOR)

## NAME

jason tevnan - cloud and database-wrangler with a penchant for
automation and sous vide cooking

## SYNOPSIS

jason \[--store SQL|NOSQL\] \[--administrate\] \[--automate\]
\[--monitor\] \[--virtualize\] \[--lead\] \[--think\]

## DESCRIPTION

I have been around and seen some stuff, but am the first to admit it
when i am out of my league. I pursue issues with a passion (as any good
DBA would) and don’t settle for it just works. I love learning new
technologies and wrapping my head around new paradigms, ideally while
enjoying dark-roast coffee at my standing desk.

## OPTIONS

### --store=*SQL*

#### MySQL is my true love.
- Verifying database workloads, identifying slow queries, tuning innodb
settings, while providing an HA database can be a lot of fun
- Scaled Runtastic’s core database starting at 1M users to 99M users and
the ability to handle 100k QPS
- Partitioning a table or verifying the innodb engine status, I love it

#### Oracle is where i cut my teeth on.
- Had to learn on highly performant, always-on database systems
- Learned what a missing index can do, which queries to avoid and how to
find the meaning of all those v\$ views
- The experience I gathered understanding B-Tree index look-ups, helped
me to understand look-ups across all database systems

#### PostgreSQL is interesting
- Used it with all its geo-spatial features for OpenStreetMap
- Automated replicating to another database with slony before 9.0 came
out with log shipping
- Automated replication and fail-over with repmgrd
- Had lots of fun automating pgbouncer with consul as a HA write
endpoint
- Housekeeping functions took some getting used to

### --store=*NOSQL*

#### MongoDB is a challenge to wrap my head around. Schema-less?!
- Attended admin training courses to understand: schema-less can also be
a curse since it is incredibly challenging when defining a scalable,
future proof indexing concept
- Enjoy shard key definitions for collections to ensure the fewest
scatter-gather queries, Optimizing storage read ahead settings and
playing with Wiredtiger cache options
- Have lots of experience running the robust HA setup which is very easy
to run from an operations standpoint

#### Cassandra forgives a lot.
- I find the replication approach and ring setup amazingly robust with
anisotropic read repairs and the ability to stream and receive data
while accepting queries
- Scaled Runtastic’s cluster from 4 to 8 to 32 and finally to 64 nodes
with almost no downtime

#### Redis and Redis cluster are my nemesis.
- Run instances under normal conditions as well as high load condition\
- Have found the right balance between ram and IOs to ensure that they
can flush to disk
- Since Redis is the core of many ruby queueing solutions, I have been
forced to face my fears, tuning BGSAVE cycles and finding the optimal
fsync to AOF ratios

### --administrate

#### LAMP
- Traditional stack (e.g. apache2, nginx)
- Extended web servers (e.g. trinidad, passenger)

#### Loadbalancers
- Experience debugging performance bottlenecks
- Setup instances which handle &gt; 80k rpm
- HaProxy, nginx

#### Golden Oldies
- LOTS of experience with the normal Linux stack (e.g. bind, dhcpd,
ldap, openvpn, ssh, memcached ...)
- After &gt; 15 years experience with all aspects of the os, i still
think Linux is the best for servers

#### Distributed fun
- zookeeper
- rabbitmq
- activemq
- consul (for service discovery)
- All in clusters running at least 3 nodes
- Very interesting (i.E. challenging) to scale

### --automate

#### Chef
- Apart from coffee, my greatest passion is automation
- Try to ensure that all infrastructure code has full test coverage
- Test-Kitchen, inspec and chefspec are my friends
- While Chef is not the answer to world hunger, an automation tool with
its feature set especially regarding testing and auditing is inevitable
in today’s world of highly fluctuant infrastructure.

### --monitor

#### Nagios3
- Wrote and deployed numerous checks
- Running an nrpe based deployment with full automation
- &gt; 10k checks distributed across 1k servers

#### Collectd
- Wrote and integrated checks for nfs-iostat and mongodb
- Running and fully automated with a graphite front end
- Collecting &gt; 100k metrics an hour

#### Cacti
- Implemented Percona’s graphing suite for mysql
- Collect all core database metrics from connections to innodb flush
times

#### Prometheus
- Alert-manager, recording-rule, exporter - oh my. Very powerful
solution with an ever growing community.
- Experience with some storage engine and memory shenanigans
- Visualization with graphana

#### Cloud Services
- Very familiar with New Relic, Pingdom, Dynatrace, PagerDuty

### --virtualize

#### OpenNebula
- Experienced every phase of growth from 8 hypervisors to 60
- Have run opennebula as an EC2 replacement as a native cloud (extensive
API) and as a simple server manager
- In the process of automating setup and configuration via teraform

#### KVM
- Qemu based
- NFS and Ceph storage backend

#### Virtualbox
- Runtastic’s pre-production system ran on vbox for a long time (hard to
imagine)
- Mainly running older cookbook tests with vbox

#### LXC
- As a plugin for new test-kitchen deployments
- Played around a bit LXD

#### Cloud Services
- Automate Google Cloud Platform (GCP) and Azure instance deploys with
terraform
- Experience the joys (its so easy) and pains (why is the db rebooting?)
of not controlling your hypervisors

### --think

#### imho
- vim &gt; emacs
- zsh &gt; bash
- tmux &gt; screen

## HISTORY

### GitLab (04.2017 - .)

#### Senior Production Engineer
- Memeber of a small fully remote team
- Scale gitlab.com (millions of users) using GitLab (typically built for
thousands of users) in a cloud environment
- Collaborate on developing HA solution for PostgreSQL in the GitLab
omnibus package
- Strove to fully automate environments from terraform to multi-tiered
HA stack
- Build a back-end agnostic solution for secrets in chef
- Use chef to automate all-the-things

### Runtastic GmbH (04.2012 - 03.2017)

#### Infrastructure Architect
- Define setup and strategy for each upcoming stack
- Ensure scalability of technologies and concepts
- Setup workflows for automation and deployments 

#### Head of Operations
- Organize small team while fighting to stay ahead of growth
- Very challenging for me to lead a team of inexperienced ops and
shaping our infrastructure 

#### Operations Engineer
- Nested under the web development team
- Start automation
- Improve uptime through monitoring and derive future actions
- Conceptualize private cloud based on opennebula

### APEX Gaming (04.2010 - 03.2012)

#### Head of Customer Care
- Setup ticketing workflow based on ITIL best practices
- Created automated master/slave setup with slony for PostgreSQL
8.3/8.4
- Spent time training staff in the casino headquarters to be first level
support techs

### Knapp Systems Integration (09.2007 - 03.2010)

#### Technical Project Lead
- Introduce metric collection to visualize hardware utilization for the
customer
- Manage customer care projects
- Responsible for everything from planning to doing
- Largest project was complete warehouse upgrade to a medium sized 24x7
cosmetic distributed
- Organized and held numerous on-site training courses around the world

#### Second Level Support Engineer
- Field production problems in a 24x7 environment
- Handle issues ranging from PLC (Siemens S7) to tablespace cleanups on
a core Oracle instance

### FH Joanneum - University of Applied Science

#### Bachelor of Science in Software Engineering
- Extra-occupational program

## SEE ALSO

- Email: jason.tevnan@gmail.com
- Phone: +43.650.2167444
- LinkedIn: https://at.linkedin.com/in/jason-tevnan-5390b4a8

## BUGS

Prone to flu if left in rain.

## AUTHOR

Jason Tevnan (jason.tevnan@gmail.com)
