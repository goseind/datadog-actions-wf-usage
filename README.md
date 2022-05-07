# datadog-gh-actions

GitHub Action Workflow to send custom metric to Datadog API

* Refer to workflow [GitHub Minutes Report](.github/workflows/datadog.yml)
  * The worflow contains two option with python and curl

Problems to solve (see also coomments ins workflow yml file):
* Configuration of custom metric (name, value etc.)
* Post of metric config and data do Datadog API (resonse ok but no data is shown in Datadog metric explorer)
* Collect and iterate trough list of worflows for the current repo and store output value in variable
