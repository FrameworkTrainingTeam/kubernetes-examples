FROM ubuntubase

LABEL course="Azure Kubernetes Course" year="2020"

ARG WORKING_DIR=/app
ENV KUBERNETES_VERSION=1.18.10

RUN echo "KUBERNETES_VERSION: ${KUBERNETES_VERSION}"
WORKDIR ${WORKING_DIR}

COPY ./docker_scripts ${WORKING_DIR}/docker_scripts

RUN ./docker_scripts/install_kubectl.sh ${KUBERNETES_VERSION}

# ENTRYPOINT kubectl $KUBECTL_ACTION
ENTRYPOINT ["/app/docker_scripts/entrypoint.sh"]