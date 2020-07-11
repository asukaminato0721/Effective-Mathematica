#!/usr/bin/env wolframscript

If[PacletFind["M2MD"]==={},
  ResourceFunction["GitHubInstall"]["kubaPod", "M2MD"]
]

Needs["M2MD`"]

$baseDir = DirectoryName@$InputFileName;
$nbDir = Echo@FileNameJoin@{$baseDir, "notebooks"};
$mdDir = Echo@FileNameJoin@{$baseDir, "markdown"};

mdFile[nb_String]:=mdFile[nb]=ResourceFunction["EnsureFilePath"]@FileNameJoin@{
  $mdDir,
  FileBaseName[nb]<>".md"
}

UsingFrontEnd@FileSystemScan[
  Function[
    nb,
    MDExport[
      mdFile[nb],
      NotebookOpen[nb],
      "ImagesFetchURL"->"Relative"
    ];
    Print[nb, " -> ", mdFile[nb]]
  ],
  $nbDir,
  FileNameForms->"*.nb"
]

Exit[]
