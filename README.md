## Docker in Kubernetes (dink)

![img](img/dink-logo.png)

dink: Run a 'docker' command line inside a specific Kubernetes node.

- Delete images
- Inspect containers

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
