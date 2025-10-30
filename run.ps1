<#
Helper script to create venv, install requirements, copy .env.example to .env (if missing), and run the Flask app.
Usage: Open PowerShell in project folder and run: .\run.ps1
#>

$project = Split-Path -Parent $MyInvocation.MyCommand.Definition
Set-Location $project

if (-not (Test-Path -Path ".venv")) {
    Write-Host "Creating virtual environment .venv..."
    python -m venv .venv
}

Write-Host "Activating virtual environment..."
. .venv\Scripts\Activate.ps1

if (Test-Path -Path "requirements.txt") {
    Write-Host "Installing requirements..."
    pip install -r requirements.txt
}

if (-not (Test-Path -Path ".env") -and (Test-Path -Path ".env.example")) {
    Copy-Item -Path .env.example -Destination .env
    Write-Host "Created .env from .env.example — remember to update GEMINI_API_KEY"
}

Write-Host "Starting app.py..."
python app.py
