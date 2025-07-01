param(
    [string]$BaseDir = "."
)

# Configure error output formatting
$ErrorActionPreference = "Continue"
$WarningColor = "Yellow"
$ErrorColor = "Red"
$InfoColor = "Cyan"
$SuccessColor = "Green"

Write-Host "Checking links in $BaseDir..." -ForegroundColor $InfoColor

# Files to analyze
$htmlFiles = Get-ChildItem -Path $BaseDir -Filter "*.html" -Recurse
$markdownFiles = Get-ChildItem -Path $BaseDir -Filter "*.md" -Recurse

# Image and resource files - get all files for checking references
$allFiles = Get-ChildItem -Path $BaseDir -Recurse -File

# Create a lookup hashtable for faster file existence checking
$fileIndex = @{}
foreach ($file in $allFiles) {
    # Store both with and without BaseDir prefix for flexibility
    $relPath = $file.FullName.Replace("$BaseDir\", "").Replace("\", "/")
    $fileIndex[$relPath] = $true
}

$totalIssues = 0
$checkedLinks = 0

function Test-LinkValidity {
    param(
        [string]$Link,
        [string]$SourceFile
    )

    $checkedLinks++
    
    # Skip anchor links, javascript, external URLs, and mail links
    if ($Link -match "^#" -or $Link -match "^javascript:" -or $Link -match "^https?://" -or $Link -match "^mailto:") {
        return $true
    }

    # Remove query parameters and hash fragments
    $cleanLink = $Link -split '[?#]' | Select-Object -First 1

    # Handle relative paths
    if ($cleanLink -match "^\.\./" -or $cleanLink -match "^\./" -or -not ($cleanLink -match "^/")) {
        $sourceDir = (Split-Path -Parent $SourceFile).Replace("\", "/")
        $baseRelativeSource = $sourceDir.Replace("$($BaseDir.Replace('\', '/'))/", "")
        
        $resolvedPath = $cleanLink
        if ($cleanLink -match "^\.\./" -or $cleanLink -match "^\./" ) {
            # Resolve the path relative to the source file
            $resolvedPath = Join-Path -Path $baseRelativeSource -ChildPath $cleanLink -Resolve -ErrorAction SilentlyContinue
            if ($resolvedPath) {
                $resolvedPath = $resolvedPath.Replace("\", "/")
            }
        } else {
            # Handle paths like "images/file.jpg"
            $resolvedPath = Join-Path -Path $baseRelativeSource -ChildPath $cleanLink
            $resolvedPath = $resolvedPath.Replace("\", "/")
        }

        if ($fileIndex.ContainsKey($resolvedPath)) {
            return $true
        } elseif ($fileIndex.ContainsKey($cleanLink)) {
            return $true
        } else {
            Write-Host "  [ERROR] Broken link: $Link in $SourceFile" -ForegroundColor $ErrorColor
            Write-Host "          Resolved to: $resolvedPath" -ForegroundColor $ErrorColor
            return $false
        }
    }
    
    # Handle root-relative paths (starting with /)
    $rootRelPath = $cleanLink.TrimStart('/')
    if ($fileIndex.ContainsKey($rootRelPath)) {
        return $true
    } else {
        Write-Host "  [ERROR] Broken link: $Link in $SourceFile" -ForegroundColor $ErrorColor
        return $false
    }
}

# Check HTML files
foreach ($htmlFile in $htmlFiles) {
    Write-Host "Checking links in $($htmlFile.FullName)..." -ForegroundColor $InfoColor
    
    $content = Get-Content $htmlFile.FullName -Raw
    
    # Extract href attributes
    $hrefMatches = [regex]::Matches($content, 'href=["'']([^"'']+)["'']')
    foreach ($match in $hrefMatches) {
        $link = $match.Groups[1].Value
        if (-not (Test-LinkValidity -Link $link -SourceFile $htmlFile.FullName)) {
            $totalIssues++
        }
    }
    
    # Extract src attributes
    $srcMatches = [regex]::Matches($content, 'src=["'']([^"'']+)["'']')
    foreach ($match in $srcMatches) {
        $link = $match.Groups[1].Value
        if (-not (Test-LinkValidity -Link $link -SourceFile $htmlFile.FullName)) {
            $totalIssues++
        }
    }
}

# Check Markdown files
foreach ($mdFile in $markdownFiles) {
    Write-Host "Checking links in $($mdFile.FullName)..." -ForegroundColor $InfoColor
    
    $content = Get-Content $mdFile.FullName -Raw
    
    # Extract markdown links [text](url)
    $mdMatches = [regex]::Matches($content, '\[(?:[^\[\]]|(?:\\\[)|(?:\\\]))*\]\(([^)]+)\)')
    foreach ($match in $mdMatches) {
        $link = $match.Groups[1].Value
        if (-not (Test-LinkValidity -Link $link -SourceFile $mdFile.FullName)) {
            $totalIssues++
        }
    }
    
    # Extract HTML links from markdown
    $hrefMatches = [regex]::Matches($content, 'href=["'']([^"'']+)["'']')
    foreach ($match in $hrefMatches) {
        $link = $match.Groups[1].Value
        if (-not (Test-LinkValidity -Link $link -SourceFile $mdFile.FullName)) {
            $totalIssues++
        }
    }
    
    # Extract HTML img src from markdown
    $srcMatches = [regex]::Matches($content, 'src=["'']([^"'']+)["'']')
    foreach ($match in $srcMatches) {
        $link = $match.Groups[1].Value
        if (-not (Test-LinkValidity -Link $link -SourceFile $mdFile.FullName)) {
            $totalIssues++
        }
    }
}

# Summary
if ($totalIssues -eq 0) {
    Write-Host "`nLINK CHECK PASSED!" -ForegroundColor $SuccessColor
    Write-Host "All $checkedLinks links are valid." -ForegroundColor $SuccessColor
} else {
    Write-Host "`nLINK CHECK FAILED!" -ForegroundColor $ErrorColor
    Write-Host "Found $totalIssues broken links out of $checkedLinks checked." -ForegroundColor $ErrorColor
}
