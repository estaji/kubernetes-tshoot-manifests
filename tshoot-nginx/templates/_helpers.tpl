{{- define "name" -}}
{{- printf "%s-%s" .Chart.Name .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "labels" -}}
{{ include "selectorLabels" . }}
app.kubernetes.io/app-version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/chart-version: {{ .Chart.Version | quote }}
app.kubernetes.io/component: test
app.kubernetes.io/part-of: test
app.kubernetes.io/created-by: "Omid"
app.kubernetes.io/managed-by: Helm
{{- end }}
