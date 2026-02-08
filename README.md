# kubernetes-tshoot-manifests 🛠️
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)

This repository is a collection of curated, lightweight, and ready-to-use Kubernetes manifests designed to help you debug networking, permissions, storage, and resource issues within your clusters.

## Why this exists?
Standard tshoot tools (like `curl`, `telnet`, etc.) needed for deep inspection. These manifests allow you to spin up "Swiss Army Knife" pods or test scenarios quickly without cluttering your production environment.

## How
Apply a manifest like this:
```bash
kubectl apply -f tshoot-curl.yaml
```
Or install a helm charts like this:
```bash
helm install -n testnamespace nginx tshoot-nginx
```

## Contributing
Found a manifest that saved your skin? Submit a PR! 1. Fork the repo. 2. Add your manifest. 3. Open a Pull Request.

## License
Distributed under the MIT License.

Disclaimer: Use these tools responsibly. Spawning stress-tests or privileged pods in production should be done with caution.