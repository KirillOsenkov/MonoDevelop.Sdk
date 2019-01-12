rmdir /s /q signed
md signed

xcopy C:\xmd\main\build\addins\CSharpBinding\MonoDevelop.CSharpBinding.AspNet.dll signed
xcopy C:\xmd\main\build\addins\CSharpBinding\MonoDevelop.CSharpBinding.Autotools.dll signed
xcopy C:\xmd\main\build\AddIns\CSharpBinding\MonoDevelop.CSharpBinding.dll signed
xcopy C:\xmd\main\build\AddIns\DisplayBindings\SourceEditor\MonoDevelop.SourceEditor.dll signed
xcopy C:\xmd\main\build\AddIns\MonoDevelop.DotNetCore\MonoDevelop.DotNetCore.dll signed
xcopy "C:\Program Files (x86)\GtkSharp\2.12\lib\gtk-sharp-2.0\glib-sharp.dll" signed
xcopy "C:\Program Files (x86)\GtkSharp\2.12\lib\gtk-sharp-2.0\gtk-sharp.dll" signed
xcopy C:\xmd\main\build\bin\mdtool.exe signed
xcopy C:\xmd\main\build\bin\Microsoft.CodeAnalysis.CSharp.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.CodingConventions.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Composition.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.CoreUtility.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Language.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Language.Intellisense.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Language.StandardClassification.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Text.Data.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Text.Implementation.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Text.Logic.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Text.UI.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Threading.dll signed
xcopy C:\xmd\main\build\bin\Microsoft.VisualStudio.Validation.dll signed
xcopy C:\xmd\main\build\bin\Mono.Addins.dll signed
xcopy C:\xmd\main\build\bin\MonoDevelop.Core.dll signed
xcopy C:\xmd\main\build\bin\MonoDevelop.Ide.dll signed
xcopy C:\xmd\main\build\bin\Newtonsoft.Json.dll signed
xcopy C:\xmd\main\build\bin\System.Collections.Immutable.dll signed
xcopy C:\xmd\main\build\bin\System.Reflection.Metadata.dll signed
xcopy C:\xmd\main\build\bin\Xwt.dll signed

pushd signed

sn -Ra MonoDevelop.Core.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.AspNet.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.Autotools.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.CSharpBinding.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.DotNetCore.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.Ide.dll C:\md-addins\MonoDevelop.snk
sn -Ra MonoDevelop.SourceEditor.dll C:\md-addins\MonoDevelop.snk

popd

nuget pack MonoDevelop.Sdk.nuspec -BasePath signed