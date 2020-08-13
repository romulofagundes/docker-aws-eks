FROM docker:stable-dind

RUN apk add --no-cache curl py-pip \
  && pip install awscli \
  && curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl \
  && chmod +x kubectl \
  && mv kubectl /usr/local/bin \
  && curl -o aws-iam-authenticator https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.7/2020-07-08/bin/linux/amd64/aws-iam-authenticator \
  && chmod +x aws-iam-authenticator \
  && mv aws-iam-authenticator /usr/local/bin

