#vgs-ios-demo    

####Sample of using VGS on IOS with three common use cases.</i></p>

### Quick Start
//TODO: 

## Use Cases

The app demonstrates three different use cases of using VGS. Sample is configured to work with [Httpbin](https://httpbin.verygoodsecurity.io/) echo server which should replaced with your API in real case scenario.
Data that should be secured via VGS is getting replaced with tokens containing prefix `tok_` on proxy response.

![Sample use cases](./docs/sample-use-cases.png)
1. Securing PII data:

![Sample PII data](./docs/sample-pii-data.png)
2. Securing credit card data:

![Sample credit card data](./docs/sample-card-data.png)

3. Securing bank account data:

![Sample bank account data](./docs/sample-bank-data.png)

## VGS Dashboard configuration

In order to configure the app to work with your vault apply the following route configuration via [VGS Dashboard](https://dashboard.verygoodsecurity.com/).

![Route configurations](./docs/vgs-dashboard-routes.png)

Upstream host configuration points to the [Httpbin](https://httpbin.verygoodsecurity.io/) echo server.

![Persistent storage](./docs/vgs-dashboard-upstream.png)

Most of the secured data should be saved using `PERSISTENT` storage and is configured using JsonPath.

![Persistent storage](./docs/vgs-dashboard-route-persistent.png)

Please note that CVV data should be configured to use `VOLATILE` storage due to PCI DSS requirements.

![Volatile storage](./docs/vgs-dashboard-route-volatile.png)

## Usage

To use the sample with your own vault change `vgs_proxy_url` in:    
[strings.xml](https://github.com/verygoodsecurity/vgs-android-sample/blob/master/app/src/main/res/values/strings.xml#L7) file to the URL of your inbound route.
This value can be found on dashboard in `Vault URLs` as `Inbound Route URL`:

![Inbound Route URL](./docs/vgs-inbound-url.png)

## What is VGS?

**Quickstart** check out the [getting started guide](https://www.verygoodsecurity.com/docs/getting-started)    

Very Good Security (VGS) allows you to enhance your security standing while
maintaining the utility of your data internally and with third-parties. As an
added benefit, we accelerate your compliance certification process and help you
quickly obtain security-related compliances that stand between you and your
market opportunities.

To learn more, visit us at https://www.verygoodsecurity.com

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file
for details.
