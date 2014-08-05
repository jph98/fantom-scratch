using [java] java.io::FileFilter
using [java] java.io::File as jFile

**
** List all .fan files in the given folder.
**
class FanFilesLister
{
    static Void main()
    {
	folder := Sys.args().isEmpty ? "." : Sys.args()[0]
        dir := jFile(folder)
        jFile[] files := dir.listFiles(FilterImpl());
        files.each { echo(it.getName()) }
    }
}

**
** Implementation of Java FileFilter interface
**
internal class FilterImpl : FileFilter
{
    override Bool accept(jFile? f)
    {
        f.getName.endsWith(".fan")
    }
}
