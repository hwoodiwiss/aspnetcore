#!/usr/bin/env pwsh
#requires -version 4

[CmdletBinding(PositionalBinding = $false)]
param()

Set-StrictMode -Version 2
$ErrorActionPreference = 'Stop'

. $PSScriptRoot\Test-Template.ps1

Test-Template "worker" "worker --use-program-main" "Microsoft.DotNet.Web.ProjectTemplates.6.0.6.0.0-dev.nupkg" $false
