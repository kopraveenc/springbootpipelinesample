#FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift:latest
#FROM registry.access.redhat.com/redhat-openjdk-18/openjdk18-openshift
FROM registry.access.redhat.com/openjdk/openjdk-11-rhel7:latest
ARG BUILD_DATE=unspecified
ARG BUILD_VERSION=unspecified
ARG GIT_COMMIT_ID=unspecified

LABEL org.label-schema.schema-version = "1.0" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$GIT_COMMIT_ID \
      org.label-schema.version=$BUILD_VERSION


COPY /target/*.jar /deployments/*.jar
