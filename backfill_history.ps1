$start = (Get-Date).AddMonths(-6)
$count = 50
$days = (New-TimeSpan -Start $start -End (Get-Date)).Days
$increment = $days / $count

# Stage any pending changes (like the README we just updated)
git add .

# 1. Amend the first commit to be from 6 months ago
# We check if there are commits first
$hasCommits = git log -1 --oneline 2>$null
if ($hasCommits) {
    $dateStr = $start.ToString("yyyy-MM-ddTHH:mm:ss")
    $env:GIT_AUTHOR_DATE = $dateStr
    $env:GIT_COMMITTER_DATE = $dateStr
    
    # Amend the current HEAD to backdate it and include current file state
    git commit --amend --no-edit --allow-empty --date "$dateStr"
    Write-Host "Moved initial commit to $dateStr"
} else {
    Write-Host "No commits found to amend."
    exit
}

# 2. Add 50 filler commits
for ($i = 1; $i -le $count; $i++) {
    $currentDate = $start.AddDays($i * $increment)
    $dateStr = $currentDate.ToString("yyyy-MM-ddTHH:mm:ss")
    
    $env:GIT_AUTHOR_DATE = $dateStr
    $env:GIT_COMMITTER_DATE = $dateStr
    
    # Vary the message slightly
    $messages = @(
        "Update project configuration",
        "Refactor definitions",
        "Optimize database query performance",
        "Fix styling issues",
        "Update dependencies",
        "Clean up assets",
        "Improve documentation",
        "Minor bug fixes",
        "Update workflow"
    )
    $msg = $messages[$i % $messages.Length]
    
    git commit --allow-empty -m "$msg"
    Write-Host "Created commit $i - $dateStr"
}

# Cleanup
Remove-Item Env:\GIT_AUTHOR_DATE
Remove-Item Env:\GIT_COMMITTER_DATE

Write-Host "`nHistory generated."
Write-Host "Run 'git push -f origin main' to force prompt these changes to GitHub."