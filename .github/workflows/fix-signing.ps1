# 关闭 ClickOnce 清单签名
$proj = "WinsockPacketEditor/WinsockPacketEditor.csproj"
[xml]$xml = Get-Content $proj
$sign = $xml.Project.PropertyGroup.SignManifests
if ($sign) { $sign[0].InnerText = "false" }
$xml.Save($proj)
