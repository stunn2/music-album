{{/* Define a function to base64-encode a string */}}
{{- define "b64enc" -}}
{{- $value := . -}}
{{- $encodedValue := $value | b64enc -}}
{{- $encodedValue -}}
{{- end }}