# packer-builder-arm-ansible
[packer-builder-arm](https://github.com/mkaczanowski/packer-builder-arm) but with Ansible

Accomplish things like:
```json
  "provisioners": [
    {
      "type": "ansible",
      "playbook_file": "./test-playbook.yml"
    }
  ]
```

## Docker hub
https://hub.docker.com/repository/docker/pjalusic/packer-builder-arm-ansible

## Run
```bash
docker run --rm --privileged -v /dev:/dev -v ${PWD}:/build pjalusic/packer-builder-arm-ansible build raspbian.json
```

## Build
```
docker image build -t pjalusic/packer-builder-arm-ansible --build-arg BUILDKIT_INLINE_CACHE=1 --progress=plain . 
```

## TODO
- reduce image size:
  adding Ansible adds about 500MB. try multi-stage build