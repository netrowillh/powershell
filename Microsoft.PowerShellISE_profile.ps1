if ($host.UI.RawUI.WindowTitle -match “Administrator”) {$host.UI.RawUI.BackgroundColor = “DarkBlue”; $Host.UI.RawUI.ForegroundColor = “White”}

function prompt() {

    $i = $(whoami) + " @ " + $(get-location)

    write-host -NoNewLine -ForegroundColor Green '<'

    if ( Test-Wow64 ) {
        write-host -NoNewLine "Wow64 "
    }
    if ( Test-Admin ) { 
        write-host -NoNewLine -f red "Admin "
    }
    write-host -NoNewLine $i.toString()
    foreach ( $entry in (get-location -stack)) {
    	write-host -NoNewLine -ForegroundColor Red '+';
    }
    write-host -NoNewLine -ForegroundColor Green '>'
    ' '
}
