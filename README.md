<h1 align="center">
  <br>
  Logs Vacuum Cleaner
  <br>
</h1>

<h4 align="center">A small and configurable logs cleaner tool.</h4>

### Features

**Logs Vacuum Cleaner** is a small and flexible (i.e. configurable) tool created to remove old log files, allowing
you to keep them compressed in a single file and/or permanently remove them.

Generally, the **Logs Vacuum Cleaner** is applicable whenever:

* Your application(s) generates multiple log files and there isn't any post process to deal with them
* You want to be able to compress a set of log files using the compression algorithm of choice.
* You have more than one directory storing logs
* You want to discard old, non-compressed files.

### Configuration

Getting right to the point, configurations are stored at ./config/vacuums.json dir. 
This is a complete configuration example:

```json
{
    "vacuums" : [
        {
            "path" : "/some/log/path/",
            "filesPrefix" : "server*",
            "filesSuffix" : "*.log",
            "remove" : true,
            "compact" : true,
            "compressor" : "tar.gz",
            "outputPath" : "/some/backup/path/",
            "outputName" : "logs.2006-01.tag.gz",
            "updateOutput" : true
        }
    ]
}
```

### Developing using Docker

docker build --rm -t peixeurbano/logs-vacuum .

docker run peixeurbano/logs-vacuum 