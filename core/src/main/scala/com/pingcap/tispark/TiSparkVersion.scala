package com.pingcap.tispark

import java.io.InputStream
import java.util.Properties

object TiSparkVersion {
  val confStream: InputStream = Thread
    .currentThread()
    .getContextClassLoader
    .getResourceAsStream("config.properties")
  val prop = new Properties()
  if (confStream != null) {
    prop.load(confStream)
  }
  val version: String = "Release Version: 2.1.10-SNAPSHOT\nSupported Spark Version: " + prop
    .getProperty("spark.supported_version", "spark-2.3") + "\nGit Commit Hash: 60b3191e2c7b9bee6fbe53e74eb25498b554a2de\nGit Branch: fix-beike\nUTC Build Time: 2021-04-09 12:47:47"
}
