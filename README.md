## Docker in Kubernetes (dink)

![img](img/dink-logo.png)

dink: Run a 'docker' command line inside a specific Kubernetes node.

- Delete images
- Inspect containers
- Look at raw log output

## Usage

Run, it will give you a shell prompt, this is inside your node
and 'docker' command line is ready. If 'node' is not specified
it will pick a randome one on your cluster.

```
usage: dink [-h] [-d] [-n NODE] [-N NAMESPACE] [-i IMAGE] [-c REGCRED]

optional arguments:
  -h, --help            show this help message and exit
  -d, --debug           Debug API stream
  -n NODE, --node NODE  Node to run on (if blank then any)
  -N NAMESPACE, --namespace NAMESPACE
                        Namespace to use
  -i IMAGE, --image IMAGE
                        Image to run 'dink' with
  -c REGCRED, --regcred REGCRED
                        Registry credentials, if private
```

The most common case (for me) is to delete an image from a node
when it is 'stale' or to check if it loaded the proper one from
my registry.

E.g.:

```
$ kubectl get nodes
NAME                       STATUS   ROLES   AGE   VERSION
aks-agentpool-16358131-0   Ready    agent   14d   v1.11.5
aks-agentpool-16358131-1   Ready    agent   6d    v1.11.5
aks-agentpool-16358131-2   Ready    agent   6d    v1.11.5
$ ./dink -n aks-agentpool-16358131-0
# docker ps
# ls -al /var/log/containers
 ...
```
