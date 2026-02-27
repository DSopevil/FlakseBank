<<<<<<< HEAD
# Simple HTTP Server in PowerShell
$port = 8000
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "Server running at http://localhost:$port"
Write-Host "Press Ctrl+C to stop the server"

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response
    
    $filePath = $request.Url.LocalPath
    if ($filePath -eq "/") {
        $filePath = "/index.html"
    }
    
    $fullPath = Join-Path (Get-Location) $filePath.TrimStart("/")
    
    if (Test-Path $fullPath) {
        $bytes = [System.IO.File]::ReadAllBytes($fullPath)
        $response.ContentLength64 = $bytes.Length
        
        # Set appropriate content type
        if ($fullPath.EndsWith(".html")) {
            $response.ContentType = "text/html"
        } elseif ($fullPath.EndsWith(".js")) {
            $response.ContentType = "application/javascript"
        } elseif ($fullPath.EndsWith(".css")) {
            $response.ContentType = "text/css"
        } elseif ($fullPath.EndsWith(".png")) {
            $response.ContentType = "image/png"
        }
        
        $response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
        $response.StatusCode = 404
    }
    
    $response.OutputStream.Close()
}

$listener.Stop()
=======
# Simple HTTP Server in PowerShell
$port = 8000
$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$port/")
$listener.Start()
Write-Host "Server running at http://localhost:$port"
Write-Host "Press Ctrl+C to stop the server"

while ($listener.IsListening) {
    $context = $listener.GetContext()
    $request = $context.Request
    $response = $context.Response
    
    $filePath = $request.Url.LocalPath
    if ($filePath -eq "/") {
        $filePath = "/index.html"
    }
    
    $fullPath = Join-Path (Get-Location) $filePath.TrimStart("/")
    
    if (Test-Path $fullPath) {
        $bytes = [System.IO.File]::ReadAllBytes($fullPath)
        $response.ContentLength64 = $bytes.Length
        
        # Set appropriate content type
        if ($fullPath.EndsWith(".html")) {
            $response.ContentType = "text/html"
        } elseif ($fullPath.EndsWith(".js")) {
            $response.ContentType = "application/javascript"
        } elseif ($fullPath.EndsWith(".css")) {
            $response.ContentType = "text/css"
        } elseif ($fullPath.EndsWith(".png")) {
            $response.ContentType = "image/png"
        }
        
        $response.OutputStream.Write($bytes, 0, $bytes.Length)
    } else {
        $response.StatusCode = 404
    }
    
    $response.OutputStream.Close()
}

$listener.Stop()
>>>>>>> f3f20eb (Add PDF download buttons and update pages)
