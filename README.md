# datadog-gh-actions

GitHub Action Workflow to send custom metric to Datadog API

# To do

* Refer to workflow [GitHub Minutes Report](.github/workflows/datadog.yml)
  * The worflow contains two option with python and curl

Problems to solve (see also coomments ins workflow yml file):
* Configuration of custom metric (name, value etc.)
* Post of metric config and data do Datadog API (resonse ok but no data is shown in Datadog metric explorer)
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

https://github.com/marketplace/actions/github-api-request
https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
https://docs.github.com/en/developers/webhooks-and-events/webhooks/webhook-events-and-payloads#workflow_run
https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions
https://docs.datadoghq.com/api/latest/metrics/#submit-metrics
https://docs.datadoghq.com/api/latest/?code-lang=python