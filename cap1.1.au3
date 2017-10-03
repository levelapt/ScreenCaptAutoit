#include <ScreenCapture.au3>

$prog = 0
$filestep = 0
HotKeySet("{DEL}", "Terminate")
HotKeySet("{INS}", "start")
HotKeySet("{END}", "restart")

While 1
WEnd

Func restart()
	$prog = 0
	$filestep = $filestep + 1
EndFunc   ;==>restart

Func start()
	Local $hBmp
	; Capture full screen
	$hBmp = _ScreenCapture_Capture("")
	; Save bitmap to file
	_ScreenCapture_SaveImage(@MyDocumentsDir & "\screencap\" & $filestep & "-" & $prog & "Image.jpg", $hBmp)
	$prog = $prog + 1
EndFunc   ;==>start

Func Terminate()
	Exit
EndFunc   ;==>Terminate


