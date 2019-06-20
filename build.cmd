rmdir /s /q signed
md signed

xcopy C:\md\main\build\addins\CSharpBinding\MonoDevelop.CSharpBinding.AspNet.dll signed
xcopy C:\md\main\build\addins\CSharpBinding\MonoDevelop.CSharpBinding.Autotools.dll signed
xcopy C:\md\main\build\AddIns\CSharpBinding\MonoDevelop.CSharpBinding.dll signed
xcopy C:\md\main\build\AddIns\DisplayBindings\SourceEditor\MonoDevelop.SourceEditor.dll signed
xcopy C:\md\main\build\AddIns\DisplayBindings\TextEditor\MonoDevelop.TextEditor.dll signed
xcopy C:\md\main\build\AddIns\MonoDevelop.DotNetCore\MonoDevelop.DotNetCore.dll signed
xcopy C:\md\main\build\bin\Mono.Addins.dll signed
xcopy C:\md\main\build\bin\MonoDevelop.Core.dll signed
xcopy C:\md\main\build\bin\MonoDevelop.Ide.dll signed
xcopy C:\md\main\build\bin\Xwt.dll signed
xcopy "C:\Program Files (x86)\GtkSharp\2.12\lib\gtk-sharp-2.0\glib-sharp.dll" signed
xcopy "C:\Program Files (x86)\GtkSharp\2.12\lib\gtk-sharp-2.0\gtk-sharp.dll" signed

pushd signed

sn -Ra MonoDevelop.Core.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.AspNet.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.Autotools.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.DotNetCore.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.Ide.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.SourceEditor.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.TextEditor.dll C:\md-addins\MonoDevelop.snk

popd

nuget pack MonoDevelop.Sdk.nuspec -BasePath signed