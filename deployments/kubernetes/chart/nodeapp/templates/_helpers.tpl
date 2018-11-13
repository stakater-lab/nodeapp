{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "nodeapp.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "nodeapp.labels.selector" -}}
app: {{ template "nodeapp.name" . }}
group: {{ .Values.nodeapp.labels.group }}
provider: {{ .Values.nodeapp.labels.provider }}
{{- end -}}

{{- define "nodeapp.labels.stakater" -}}
{{ template "nodeapp.labels.selector" . }}
version: "{{ .Values.nodeapp.labels.version }}"
{{- end -}}

{{- define "nodeapp.labels.chart" -}}
chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
release: {{ .Release.Name | quote }}
heritage: {{ .Release.Service | quote }}
{{- end -}}