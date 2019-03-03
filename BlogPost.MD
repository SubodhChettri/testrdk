# Security Compliance as Code On AWS

The advancement to public cloud has been phenomenal. Cloud computing has gone
mainstream as more organizations shift their applications and workloads from
on-premise data centers to public cloud platforms. Almost 96 % of companies,
according to [one annual
survey](https://www.rightscale.com/press-releases/rightscale-2018-state-of-the-cloud-report)
have moved some part of their business to the cloud. The cloud adoption is at a
neck breaking speed and we should not stop ourselves from welcoming this change.
With this high rate of adoption, the question that comes to our mind is are we
doing it right? I am not trying to put a correlation between the data security
breaches and the rate of cloud adoption but the figures for [data breaches has
been on the
rise](https://www.afr.com/technology/figures-show-australian-data-breaches-on-the-rise-20190207-h1ayug).
The [Office of the Australian Information Commissioner Notifiable Data Breaches
for October — December
2018](https://www.oaic.gov.au/media-and-speeches/news/notifiable-data-breaches-for-october-december-2018)
is certainly an eye opener. In 91 Days, we had 262 data breaches which were
**“notified”**. That’s almost 3 data breaches per day. 97% of these breaches
could have been stopped if we had some kind of automated system in place. Why
are breaches on the rise? Where have we gone wrong? How can we stop this? What
tools are out there that will help us remediate? These questions lead to my
weekend adventure.

My cause for making the system secure is more personal than professional.

* **Why** : Push the limits and create new “Best Practices” for a secure world
* **How** : Continuous testing of configuration and auto remediate where possible
* **What** : Build Compliance as Code and auto remediation

During my research I happen to stumble upon an *open-source* solution ([AWS
Config RDK:Rules Development Kit](https://github.com/awslabs/aws-config-rdk))
for AWS one of the popular public cloud player. RDK use AWS Config Rules that
provides automated, periodic or change triggered security and compliance
checking of AWS resources, and affords customers the ability to forego manual
inspection of security configurations. You can write your own config rules as
code test it and deploy it to your environment. Apart from the RDK I found a
resourceful [community-based source of custom AWS Config
Rules](https://github.com/awslabs/aws-config-rules).

My top 5 security compliance rules.

1.  [Ensure CloudTrail is enabled in all
regions](https://github.com/awslabs/aws-config-rules/tree/master/python/CLOUDTRAIL_ENABLED_V2)
1.  [Ensure all accounts have multi-factor authentication (MFA)
enabled](https://github.com/awslabs/aws-config-rules/tree/master/python/IAM_USER_MFA_ENABLED)
1.  [Ensure no access keys exist for the root
account](https://github.com/awslabs/aws-config-rules/tree/master/python/ROOT_NO_ACCESS_KEY)
1.  [Ensure IAM roles and users have mandatory policies
attached](https://github.com/awslabs/aws-config-rules/tree/master/python/IAM_POLICY_REQUIRED)
1.  [Ensure access keys are
rotated](https://github.com/awslabs/aws-config-rules/tree/master/python/IAM_ACCESS_KEY_ROTATED)

Here’s an output of my 2-hour investment

### Config compliance dashboard

![](/img/aws-config-db.jpg)

### Security Compliance Rule Deployed
![](/img/aws-config-rules-db.jpg)
### Security Compliance Rule Monthly Cost Forecast
![](/img/aws-config-cost-db.jpg)
*The compliance check cost you pay is minimum compared to brand damage.*

Three golden rules that needs to be ingrained in secure software engineering
life-cycle are:

* secure by design
* secure by default
* secure in deployment

Here’s a link to my [git project](https://github.com/SubodhChettri/testrdk.git)
for security compliance as code. I have added a Dockerfile template to help you
develop your code if your work laptop has an end point protection/ no elevated
privileges.

Tools used for development:

- [x] [visual studio code](https://code.visualstudio.com/)
- [x] command line of choice [WSL
Ubuntu](https://www.microsoft.com/en-au/p/ubuntu/9nblggh4msv6?activetab=pivot:overviewtab)
- [x] [Docker Desktop for Windows](https://www.docker.com/products/docker-desktop)

### Reference

* [AWS Config RDK: Multi-account and multi-Region
deployment](https://aws.amazon.com/blogs/mt/aws-config-rdk-multi-account-and-multi-region-deployment/)
* [How to develop custom AWS Config rules using the Rule Development
Kit](https://aws.amazon.com/blogs/mt/how-to-develop-custom-aws-config-rules-using-the-rule-development-kit/)
* [AWS Config Rules Development Kit](https://github.com/awslabs/aws-config-rdk)
* [The Golden Circle of Common vs. Inspired Marketing and
Leadership](https://www.disruptiveadvertising.com/business/why-how-what-in-that-order-using-the-golden-circle-to-improve-your-business-yourself/)
* [Announcing the AWS Config Rules
Repository](https://aws.amazon.com/blogs/security/announcing-the-aws-config-rules-repository-a-new-community-based-source-of-custom-rules-for-aws-config/)
* [RDK: Getting
Started](https://rdk.readthedocs.io/en/latest/getting_started.html)


### Tags
 [Compliance](https://medium.com/tag/compliance?source=post)
 [Automation](https://medium.com/tag/automation?source=post)
 [AWS](https://medium.com/tag/aws?source=post)
 [Security](https://medium.com/tag/security?source=post)
 [Python](https://medium.com/tag/python?source=post)

### [Subodh Chettri](https://medium.com/@sc_60632)
