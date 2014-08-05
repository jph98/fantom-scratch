class Build : build::BuildPod
{
  new make()
  {
    podName = "myPod"
    summary = "Summary description of my pod"
    depends = ["sys 1.0", "web 1.0"]
    meta    = ["acme.sku": "0xdeadbeef"]
    srcDirs = [`fan/`]
    resDirs = [`locale/`]
  }
}
