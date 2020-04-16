import-module “sqlps” –disablenamechecking

Import-module “sqlascmdlets”

Invoke-ASCmd -Server:ABC\SQL2012 -Database:"AdventureWorksDW2012Multidimensional-EE"   -Query:"SELECT   {[Measures].[Internet Sales Amount]} ON COLUMNS FROM [Adventure Works]"