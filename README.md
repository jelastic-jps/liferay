[![Liferay](images/Liferay-Logo.png)](../../../liferay)

## Liferay Cluster

The JPS package deploys [Liferay](http://www.liferay.com/) that initially contains 1 application server and 1 database container. 

### Highlights
This package is designed to deploy Liferay environment is an enterprise web platform for building business solutions that deliver immediate results and long-term valiue.<br />
Liferay has built its business becoming the best partner for providing enterprise-quality support, updates and management tools to companies running Liferay in production.

### Environment Topology

![liferay-environment-topology](images/liferay-environment-topology.png)

### Specifics

Layer                |     Server    | Number of CTs <br/> by default | Cloudlets per CT <br/> (reserved/dynamic) | Options
-------------------- | --------------| :----------------------------: | :---------------------------------------: | :-----:
AS                   | Tomcat Java |       1                        |           1 / 16                          | -
DB                   |    MySQL      |       1                        |           1 / 8                           | -

* AS - Application server 
* DB - Database 
* CT - Container

**Liferay Version**: Community Edition 6.2 CE GA4<br/>
**Tomcat Version**: 7.0.67<br/>
**Java Engine**: Java 7<br/>
**MySQL Database**: 5.7.12

### Deployment

In order to get this solution instantly deployed, click the "Get It Hosted Now" button, specify your email address within the widget, choose one of the [Jelastic Public Cloud providers](https://jelastic.cloud) and press Install.

[![GET IT HOSTED](https://raw.githubusercontent.com/jelastic-jps/jpswiki/master/images/getithosted.png)](https://jelastic.com/install-application/?manifest=https%3A%2F%2Fgithub.com%2Fjelastic-jps%2Fliferay%2Fraw%2Fmaster%2Fmanifest.jps)

To deploy this package to Jelastic Private Cloud, import [this JPS manifest](../../raw/master/manifest.jps) within your dashboard ([detailed instruction](https://docs.jelastic.com/environment-export-import#import)).

More information about Jelastic JPS package and about installation widget for your website can be found in the [Jelastic JPS Application Package](https://github.com/jelastic-jps/jpswiki/wiki/Jelastic-JPS-Application-Package) reference.
