{{- define "webserver-helm.name" -}}
webserver-helm
{{- end -}}

{{- define "webserver-helm.labels" -}}
app: {{ include "webserver-helm.name" . }}
{{- end -}}

{{- define "webserver-helm.fullname" -}}
{{ include "webserver-helm.name" . }}-{{ .Values.namespace }}
{{- end -}}
