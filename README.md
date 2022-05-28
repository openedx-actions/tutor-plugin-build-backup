# tutor-plugin-build-backup

## Usage:


```yaml
name: Example Build Docker image for Tutor "Backup & Restore" Plugin

on: workflow_dispatch

jobs:
  build:
    runs-on: ubuntu-latest

    steps:
      # required antecedent
      - uses: actions/checkout@v1

      # required antecedent
      - name: Configure AWS credentials
        uses: aws-actions/configure-aws-credentials@v1
        with:
          aws-access-key-id: ${{ secrets.THE_NAME_OF_YOUR_AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.THE_NAME_OF_YOUR_AWS_SECRET_ACCESS_KEY }}
          aws-region: us-east-2

      # This action
      - name: Build the image and upload to AWS ECR
        uses: openedx-actions/tutor-plugin-build-backup
        with:
          aws-ecr-repository: 123456789042.dkr.ecr.us-east-2.amazonaws.com
          # optional. defaults to 'openedx_backup'
          aws-ecr-registry: openedx_backup
```
