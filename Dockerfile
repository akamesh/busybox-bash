FROM progrium/busybox:latest

MAINTAINER Bjoern Gruening <bjoern.gruening@gmail.com>

ADD ./bin/bash /bin/bash
CMD /bin/bash
