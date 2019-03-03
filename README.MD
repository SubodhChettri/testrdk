# Test RDK Tools

This is a sample project to test features of RDK python package which make complaince as code possible for aws resources. I have leveraged code from community-based source of custom AWS Config Rules 

## Make Help

```bash
make help
```

## Build Dev Env
```bash
make image
```

## Run Devlopment Container
```bash
make devenv
```

## build deployment
```bash
TODO: Write the code here
```

## Task List
- [x] Dockerfile to write and test code
- [X] Makefile 
- [ ] Athena Create table SQL scripts to create viz Tableau
- [ ] Optimize ACL for the service account to deploy AWS Config

## Reference
* [AWS Config RDK: Multi-account and multi-Region deployment](https://aws.amazon.com/blogs/mt/aws-config-rdk-multi-account-and-multi-region-deployment/)
* [How to develop custom AWS Config rules using the Rule Development Kit](https://aws.amazon.com/blogs/mt/how-to-develop-custom-aws-config-rules-using-the-rule-development-kit/)
* [AWS Config Rules Development Kit](https://github.com/awslabs/aws-config-rdk)
* [Announcing the AWS Config Rules Repository](https://aws.amazon.com/blogs/security/announcing-the-aws-config-rules-repository-a-new-community-based-source-of-custom-rules-for-aws-config/)
* [RDK: Getting Started](https://rdk.readthedocs.io/en/latest/getting_started.html)
* [Makefile reference](https://gitlab.d3s.mff.cuni.cz/evif/ivis-core/blob/604bcea712a9628c92b7712362ebc5966fcad41f/client/src/ivis-ws/event-drops/Makefile)


