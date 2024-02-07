# Caprover Deploy

This plugin allows you to deploy your project to Caprover.

## Usage

### Woodpecker CI

Create a new workflow like `.woodpecker/caprover.yml`:

```yaml
when:
  event: [push, tag]
  branch: ${CI_REPO_DEFAULT_BRANCH}

steps:
    deploy:
        image: insidiousfiddler/caprover-deploy
        settings:
            server:
                from_secret: caprover_server
            app: my-app
            token:
                from_secret: caprover_token
            branch: master
```

## Roadmap

- [ ] Add support for deploying via the default setup.
- [ ] Add support for deploying via provided docker image.
- [ ] Add support for deploying via provided tarball.

## Credits

This plugin is based on [deploy-from-github](https://github.com/caprover/deploy-from-github) by [CapRover](https://caprover.com/).
