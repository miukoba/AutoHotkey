;-----------------------------------------
;MEMO
;-----------------------------------------
;http://ahk.xrea.jp/ AutoHotkey�𗬍s�点��y�[�W
;
;vk1Dsc07B ���ϊ��L�[
;vk1Csc079 �ϊ��L�[
;vkF2sc070 �Ђ炪��/�J�^�J�i�L�[

;-----------------------------------------
;IME�p���C�u�����ǂݍ���
;-----------------------------------------
#include C:\Program Files\AutoHotkey\IME_Func.ahk

;-----------------------------------------
;Space���ӂ̃L�[�ݒ�
;-----------------------------------------
;���ϊ��L�[
vk1Dsc07B::
  Send, {$}
return

;�ϊ��L�[
vk1Csc079::
  Send, {$}
return

;�Ђ炪��/�J�^�J�i�L�[
vkF2sc070::
  Send, {$}
return

;-----------------------------------------
;Ctrl+;�œ��t�����
;-----------------------------------------
^;::
#IfWinNotActive, Microsoft Excel      ;Excel�����O
;#IfWinNotActive ahk_class XLMAIN     ;����ł�OK
  FormatTime, TimeString,, yyyy/MM/dd ;"yyyy/MM/dd"�`���ŁA�ϐ�TimeString�ɒl���Z�b�g
  ImeCheck := IME_CHECK("A")          ;IME�̏�Ԃ�ۑ�
  IME_OFF("A")                        ;IME��OFF��
  Send, %TimeString%                  ;���t�����
  if (%ImeCheck% = 0) {               ;IME�̏�Ԃ����Ƃɖ߂�
  }
  else {
    IME_ON("A")
  }
return

;-----------------------------------------
;Ctrl+:�Ŏ��������
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

