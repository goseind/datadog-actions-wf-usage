# Datadog Custom Metric for GitHub Actions Minutes

GitHub Action Workflow to send GitHub Actions Minutes Usage to Custom Metric on Datadog.

# Implementation

Refer to workflow [GitHub Minutes Report Curl](.github/workflows/datadog_curl.yml).
  
## Problems to solve (see also coomments ins workflow yml file):
* Correctly configuration Datadog custom metric (name, value etc.)
* Crate Notebook or Dasboard on Datadog to view metric data
* Corretly post metric data do Datadog API
* Find out how the costs are for this metric
* Collect and iterate trough list of worflows for the current repo and store output value in variable
* Is workflow usage "timing" actually what we need? Refer to: https://docs.github.com/en/rest/actions/workflows#get-workflow-usage
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

## Useful links

* https://github.com/marketplace/actions/github-api-request
* https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
* https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads#workflow_run
* https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions
* https://docs.datadoghq.com/api/latest/metrics/#submit-metrics
* https://docs.datadoghq.com/api/latest/?code-lang=python
