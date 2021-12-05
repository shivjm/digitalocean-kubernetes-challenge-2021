# [DigitalOcean Kubernetes Challenge](https://www.digitalocean.com/community/pages/kubernetes-challenge)

[![Run tests](https://github.com/shivjm/digitalocean-kubernetes-challenge-2021/actions/workflows/test.yml/badge.svg)](https://github.com/shivjm/digitalocean-kubernetes-challenge-2021/actions/workflows/test.yml)
[![Deploy to production](https://github.com/shivjm/digitalocean-kubernetes-challenge-2021/actions/workflows/deploy.yml/badge.svg)](https://github.com/shivjm/digitalocean-kubernetes-challenge-2021/actions/workflows/deploy.yml)

The challenge I selected is:

> <b>Deploy a solution for policy enforcement</b>
>
> Install and use Kyverno, a policy engine designed for Kubernetes. It can validate, mutate, and
> generate configurations using admission controls and background scans. Kyverno policies are
> Kubernetes resources and do not require learning a new language. Kyverno is designed to work well
> with tools you already use like kubectl, kustomize, and Git. Create policies for mandatory labels
> for every deployment, and image download only permitted from DOCR.
> https://kyverno.io/policies/

[Read more on A Place For My
Head.](https://shivjm.blog/digitalocean-kubernetes-challenge-2021/)

## Installation

1. [Install Helm.](https://helm.sh/docs/intro/quickstart/#install-helm)
2. [Install helmfile.](https://github.com/roboll/helmfile#installation)
4. [Set up a Kubernetes context.](https://kubernetes.io/docs/setup/)
5. Install Kyverno with <kbd>helmfile apply</kbd>.
6. Install the policies with <kbd>kubectl apply -f policies</kbd>.

Kyverno will begin enforcing the policies for new resources as soon as
it has completed its initialization.

## Testing

At present, testing requires
[Bash](https://en.wikipedia.org/wiki/Bash_%28Unix_shell%29).

1. Complete the steps in the Installation section.
1. [Install just.](https://github.com/casey/just#installation)
3. Run <kbd>just test</kbd>.
