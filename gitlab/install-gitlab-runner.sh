#!/bin/bash

#https://docs.gitlab.com/runner/install/linux-manually.html#install-gitlab-runner-manually-on-gnulinux
sudo wget -O /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64
sudo chmod +x /usr/local/bin/gitlab-runner
sudo useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
sudo gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
sudo gitlab-runner start
#https://docs.gitlab.com/runner/register/index.html
sudo gitlab-runner register
#输入gtilab的url
##http://code.opsenv.com:10080/
#输入runner的tokan
##http://$gitlab_url/$group/$project_name/settings/ci_cd
##BzbrqEtBq6Bu8BJRT-yb
#输入runner的描述信息
#输入runner的tags信息
##devops,demo
#选择runner的执行方式
##shell
