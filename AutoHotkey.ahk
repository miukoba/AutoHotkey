;-----------------------------------------
;MEMO
;-----------------------------------------
;http://ahk.xrea.jp/ AutoHotkeyを流行らせるページ
;
;vk1Dsc07B 無変換キー
;vk1Csc079 変換キー
;vkF2sc070 ひらがな/カタカナキー

;-----------------------------------------
;IME用ライブラリ読み込み
;-----------------------------------------
#include C:\Program Files\AutoHotkey\IME_Func.ahk

;-----------------------------------------
;Space周辺のキー設定
;-----------------------------------------
;無変換キー
vk1Dsc07B::
  Send, {$}
return

;変換キー
vk1Csc079::
  Send, {$}
return

;ひらがな/カタカナキー
vkF2sc070::
  Send, {$}
return

;-----------------------------------------
;Ctrl+;で日付を入力
;-----------------------------------------
^;::
#IfWinNotActive, Microsoft Excel      ;Excelを除外
;#IfWinNotActive ahk_class XLMAIN     ;これでもOK
  FormatTime, TimeString,, yyyy/MM/dd ;"yyyy/MM/dd"形式で、変数TimeStringに値をセット
  ImeCheck := IME_CHECK("A")          ;IMEの状態を保存
  IME_OFF("A")                        ;IMEをOFFに
  Send, %TimeString%                  ;日付を入力
  if (%ImeCheck% = 0) {               ;IMEの状態をもとに戻す
  }
  else {
    IME_ON("A")
  }
return

;-----------------------------------------
;Ctrl+:で時刻を入力
;-----------------------------------------
^vkBAsc028::
#IfWinNotActive, Microsoft Excel
  FormatTime, TimeString,, hh:mm
  ImeCheck := IME_CHECK("A")
  IME_OFF("A")
  Send, %TimeString%
  if (%ImeCheck% = 0) {
  }
  else {
    IME_ON("A")
  }
return

