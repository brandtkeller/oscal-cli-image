FROM registry.access.redhat.com/ubi8/openjdk-17:1.18-2

WORKDIR /opt

ADD build/bin/ /opt/oscal-cli/bin/
ADD build/lib/ /opt/oscal-cli/lib/

ENTRYPOINT ["/opt/oscal-cli/bin/oscal-cli"]
CMD ["--help"]