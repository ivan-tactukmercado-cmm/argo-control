{{- define "commonLabels" -}}
helm.sh/chart: {{ .Chart.Name }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}
{{- define "datadogLabels" -}}
admission.datadoghq.com/enabled: "true"
tags.datadoghq.com/env: kat-{{ .Values.global.ingressDomain | splitList "." | first }}
tags.datadoghq.com/service: {{ .Values.environment.ddService }}
{{- end }}
