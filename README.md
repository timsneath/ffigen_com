A rough and ready tool that can be used to generate COM classes from .H and .IDL
files.

This is code brought forward from [an old version of the Win32
library](https://github.com/timsneath/win32/tree/101da315c7a15936358dbdffb632365cde1276f7),
back when this is how all the COM projections were generated.

This code is now redundant for that package, since we now use the
[microsoft/win32metadata](https://github.com/microsoft/win32metadata) repo for
that purpose. However, it remains useful as a starting point for projecting COM
libraries that are not part of Windows itself. For example, the `IMetaData*`
libraries that are used for the
[timsneath/winmd](https://github.com/timsneath/winmd) package which reads
metadata.

While this code is mostly obsolete, it's useful to have it handy, and may be
useful to others who need to project other libraries for which no .winmd
metadata is available.

No warranty is expressed or implied. The code emitted will likely not work
without further edits.

## Usage

To get started, copy a COM header file into the `bin\generate\com` subdirectory,
matching the format there. Then run `tool\generate.cmd` to generate a matching
class. Some things are not accurately projected in this (e.g. arrays). As I
said, this is an old version of the code. Still better than nothing, perhaps.
