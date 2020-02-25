environments {
    production {
        dataSource_Reg {
            dialect = "org.hibernate.dialect.PostgreSQLDialect"
            dbCreate = ""
            driverClassName = ""
            url = ""
            username = ""
            password = ""
            maxIdleTime = 1800
            minPoolSize = 20
            maxPoolSize = 80
        }
    }
    development {
        dataSource_Reg {
            url = "jdbc:postgresql://localhost:5432/Examonline"
            driverClassName = "org.postgresql.Driver"
            dialect = "org.hibernate.dialect.PostgreSQLDialect"
            username = "postgres"
            password = "!@Best123"
            dbCreate="update"
            pooled = true
            configClass = GrailsAnnotationConfiguration.class
            maxIdleTime = 1800
            minPoolSize = 20
            maxPoolSize = 80
        }
    }
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}