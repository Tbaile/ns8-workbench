# NS8-Workbench
Proof of concept of containerized NS8 installtion, for now only systemd with an apache instance is working.
```bash
# To build
buildah build -t tbaile/ns8-workbench .
# To run
podman run --rm -i -t -p 8080:80 localhost/tbaile/ns8-workbench:latest
```
You'll find yourself inside an autologin root env, just visit http://localhost:8080 to see apache running.
