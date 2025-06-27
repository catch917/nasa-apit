# curl --output temp.json "https://api.nasa.gov/planetary/apod?api_key=jgEaDMsiAQHX2Ul5asf63q2XSUtcWHXhscWDL3IU"

#$myJson = Get-Content .\json.json -Raw | ConvertFrom-Json 

$myJson = Invoke-WebRequest https://api.nasa.gov/planetary/apod?api_key=jgEaDMsiAQHX2Ul5asf63q2XSUtcWHXhscWDL3IU | ConvertFrom-Json 
Write-Host $myJson.url
Invoke-WebRequest $myJson.url -OutFile pic.jpg