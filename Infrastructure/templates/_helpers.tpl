{{/* Define a template for generating a full name for resources */}}
{{- define "common.names.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name -}}
{{- end }}
