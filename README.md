
The goal of this project is to create an image that contains tools that will be used in CICD.

Actually, it contains:

* trufflehog



Example for gitlab:

```
trufflehog:
  stage: test
  image:
    name: sgaunet/cicdtools:latest
  script:
    - trufflehog --no-update filesystem --directory=.
```
