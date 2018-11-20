rmdir /s /q signed
md signed

xcopy C:\monodevelop\main\build\bin\MonoDevelop.Core.dll signed
xcopy C:\monodevelop\main\build\bin\MonoDevelop.Ide.dll signed
xcopy C:\monodevelop\main\build\AddIns\CSharpBinding\MonoDevelop.CSharpBinding.dll signed
xcopy C:\monodevelop\main\build\AddIns\DisplayBindings\SourceEditor\MonoDevelop.SourceEditor.dll signed

pushd signed

sn -Ra MonoDevelop.Core.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.Ide.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.SourceEditor.dll C:\md-addins\MonoDevelop.snk

popd

nuget pack MonoDevelop.Sdk.nuspec -BasePath signed