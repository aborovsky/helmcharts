{{- define "ao-https-with-header.pinning" -}}
{{- if ne (toString .Values.clientCertPinning) "" -}}
{{- toString .Values.clientCertPinning -}}
{{- else if .Values.clientCA -}}
false
{{- else -}}
true
{{- end -}}
{{- end -}}
