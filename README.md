# Datadog Custom Metric for GitHub Actions Minutes
GitHub Action Workflow to send GitHub Actions Minutes Usage to Custom Metric on Datadog.

## Implementation
This actions has been implemented with three options for the API request:
* [GitHub Minutes Report Curl](.github/workflows/datadog_curl.yml)
* [GitHub Minutes Report Python](.github/workflows/datadog_python.yml) *(not ready yet)*
* [GitHub Minutes Report Curl](.github/workflows/datadog_go.yml) *(not ready yet)*

## Usage

1. Store you [Datadog API and Application Key]() as a [GitHub Actions Secret]()
2. Enter the workflows you want to monitor by this action here:
   ```yml
   workflows: [Test WF, Another Test WF]
   ```
   and here:
   ```yml
   WFs: [another_test.yml, test.yml] 
   ```

## Problems to solve (see also coomments ins workflow yml file):
- [ ] Check with Datadog wether Custom Metric is defined corretly and find out about costs
- [ ] Crate Notebook or Dasboard on Datadog to view mtric data
- [ ] Collect and iterate trough list of worflows for the current repo and store output value in variable
- [ ] Is workflow usage "timing" actually what we need? Refer to: https://docs.github.com/en/rest/actions/workflows#get-workflow-usage

  ```json
  {
  "billable": {
    "UBUNTU": {
      "total_ms": 180000
    },
    "MACOS": {
      "total_ms": 240000
    },
    "WINDOWS": {
      "total_ms": 300000
        }
    }
  }
  ```

## Useful Information
* https://github.com/marketplace/actions/github-api-request
* https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
* https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads#workflow_run
* https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions
* https://docs.datadoghq.com/api/latest/metrics/#submit-metrics
* https://docs.datadoghq.com/api/latest/?code-lang=python