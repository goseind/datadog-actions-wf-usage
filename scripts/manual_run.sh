# go install github.com/DataDog/datadog-api-client-go@latest

DD_SITE="datadoghq.eu" DD_API_KEY="" DD_APP_KEY="" python3 "datadog_api_tagconfig.py"
DD_SITE="datadoghq.eu" DD_API_KEY="" python3 "datadog_api_submit.py"

# go run "datadog_api_tagconfig.go"