
The goal of this project is to create an image that contains tools that will be used in CICD.

Actually, it contains:

* [trufflehog](https://github.com/trufflesecurity/trufflehog)
* [envtemplate](https://github.com/sgaunet/envtemplate)
* [gitleaks](https://github.com/gitleaks/gitleaks)
* [osv-scanner](https://github.com/google/osv-scanner)
* [trivy](https://github.com/aquasecurity/trivy)


Example for gitlab:

```
trufflehog:
  stage: test
  image:
    name: sgaunet/cicdtools:latest
  script:
    - trufflehog --no-update filesystem --directory=.
```

# Docker Images

Available on:

* Docker hub: sgaunet/cicdtools:latest
* github : ghcr.io/sgaunet/cicdtools:latest
  
