FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.43

RUN gem install kuali_toolbox --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["transform_CSV_to_HR_XML"]
CMD ["--help"]
