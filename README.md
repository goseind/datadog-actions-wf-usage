# Datadog Custom Metric GitHub Actions Minutes

GitHub Action Workflow to send GitHub Actions Minutes Usage to custom metric on Datadog trough its API.

# To do

Refer to workflow [GitHub Minutes Report](.github/workflows/datadog.yml): The worflow contains options with python and curl API posts ans uses the GitHub Actions Action GitHub API to get data from the GitHub API.
  
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
