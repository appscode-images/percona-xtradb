ARG TARGETOS
ARG TARGETARCH
ARG TAG

FROM percona/percona-xtradb-cluster:$TAG

RUN chgrp -R 0 /etc/mysql \
  && chmod -R g=u /etc/mysql

RUN chgrp -R 0 /var/lib \
  && chmod -R g=u /var/lib
