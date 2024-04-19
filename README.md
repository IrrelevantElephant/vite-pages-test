# Vite React JS Deployed to GitHub Pages

## Setup

1. Configure github pages with github actions

### Custom Domain Name

In order to use a custom domain we need to set DNS A records to point to GitHubs nameservers.

These are configured in ./infrastructure/main.tf

1. set the NS1_APIKEY env var with your NS1 API key

```shell
export NS1_APIKEY=YOURAPIKEY
```

3. Apply the tf configuration, passing your custom domain as a variable

```shell
cd ./infrastructure
tofu init
tofu apply -var="custom_dns=$YOUR_CUSTOM_DOMAIN" -auto-approve
```
