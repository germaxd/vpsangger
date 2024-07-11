#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SYlf�  ���DX���/nޮ����    @
U��q�p�$����OP ���hh�FjP	$&����4���z��z� 4 I)�)���i�CL��M�  z�  %���m��&��Cшi� 4�@��͚��b��&��8| ������(�s�Ћ�9�a�mL�>���ۋ0Y��L�YES%u�f��M��В��E�!|��I�K\����b�ɱr���NS��~
�K��S��'��@���8��ɩ���-\/�m{&�q��!�Zjr�6�--�|� �tvx�dT�
Z�-����o�Jre���Z���b4��UV22��j���w�w�9V�Jք����� Sv��� �5�q!��H�b��׽
�s�?����$0�$�{"jFd��-(��a�^"K�뿸��0|��ET��`1!i��K����azx�y�$-%�2�d�p�"̠��=%b����g@EV�5��0��D_���[��K��ѥD�j���PR��b����!	:�����k��\<4j�����f�RT(���R�Y��Q
)r����O:�)s�Ȧ���:C���ā�Rx��D���^i�&�N�5�Cjn|=>j>�z52�2��c,��<�'���L
K(��f&���d\֕�%�EHH�����X$²eYF�B�q�ǃ�RC8��F$�M
�q�k��֫ߺ
���0�~i=�@��Y+�:�-�Y��d58�2����lE�,������v6]$Ѽ����)W&���cYz�8�drS�:&D��R���R������v�*���~�$���\�	*��]��BA���<