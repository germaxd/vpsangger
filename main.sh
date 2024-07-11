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
BZh91AY&SY��x  u_��0�����������R�� ��� �0 @ `,��eM�n������i؛k7M����Qӻ<������{�j�Д���w}��ۚ]�)M�J�����:�X&�ޞ{�CQA=e�6��R�рi�CZ���{�	$ &h�!�SS��0�L�����6��M2  S�bi�=
xЦ�<���ڀ���4��@   �I���4����4�M4  @   MH�h��OT7�G�z�䞓�@���fP��C@4 "�i'��ЛE=�����&P"4m#L�4h�  G�ڂD� &�2i��dʟ�����	�z�����mP�=@ �)dH4�sj?;{}?Y�"���z/a�{c��{T{����H�Ǌ�TɄ���U��D�(+�e��^����Y-kFx�P^#�w�K��^���� ?�}4KL��ɧ�MmX#��/!�8���>��F���^`}lG%��_s��BF���>�ٚ�&^�2Y;��yI��]��s�v����3� "R�Yb��3\E�6̗[KR`�q��9',��q�$k�a�u��o�ͬ:��3��X�*��w-�)D&�؆�KXf�wI��N���DrKz;)���Փ�1׏�u��w%��Z"����NN$�SW:���g�v�g+�� �|�ݯ/�˪bܪ��K$r�\ec��O�Oy��m1����~����v����4{��g��N�r5\�uY�s�/�%�l7��QN��X��-F1[���Ky�Ar��8�6tD�@JUĥ!00�	����{�K]n�Ӽ�+�=�ۚ_*m1�uH��%5��Iy����Ŏ�md��Q���j!Tկ2����u�"'�I�7-��U���9�(��l&0�%t@���&e��3&d��:�5����{1�o�����f�a|%O��p���T!�_D,v���~�T�7:��ő}|���pt\&1���F>"8䌒�����a�H�-Z���.D�#��T��"�:���kns�TA�sa�Z��[����f
L�[?�Z��<6��X`�L�4�;iWM����.W7 ���A��+�8�<�+���g���a���52[�
��s�B_�ׯg��O�;v��Y�7��c� >r� *�؆wTW�M�=�{x;�l�&IWW��b}�$��(3l���HC�ӝ���)��F�R� ��%����.��C�t��TV3yR�=c�y�[y>��1^�$_ӻaJ��~���������}�Hv��8D/ê[��]	餵���_S��������T ����dh	ή��W%���{"�\���g� ;���D��S�fߵ���YU�ٙ���Ԍ2�o%��jB��r�O��
ɍy pf:,k�Bx$Ib���ҤI�O�Z�&�+�)Tx�dQ}�����j.�2�&�F�dq�ЄE	Zy���P�t~��\"_���Y��H5�m=�q�������.�����xT�{��>�NBMB�#Ƃ_u~,�P�μ�$����Zs%�A�ERE�XRud�^d���H��Ct��r�f�	����FՐ���ICC�r%|9� y�>��5����(m��FM9,2�%��5*���s��;}������U{�=��5��Ů�=�*�A�ot�v�Nn뽬�̔��i�+u�0C/B[rx���Ӥn�OIۢ�mW44����
?GӢ���fgﱥ�vq]A$���"��ߋ ��|�� ��������m�(�\4��A�dyҦ�-�"��w�|�R��+��r �2�tY�\n#��.��؃�V-����dW��F�Fi�%?N�{�ͧ��m����Ә�웎�u(
vv�d� �������>D��\nh�&�;�0[�V
k�B�s���sSwu�%��J�c��mG{-�	��۾X�Jcn罝݄U����2F�R�E�h�HW�$0iZ@�r�F06��@��#	AZ>/P���d���"�*υ�����8�wm����W]pئ<���жl[Ue�f���?���� X� ��="�
L��Q����w���7�)r��������a��0����,y4TQ;�z$�ܒ���{V�Vm����j���_ic�-�j�Vv�_Mj��K�1yϞq�x˼��X��ĉ�fiZ�2�+��Ӊ����%:��OC0rk<U}e�:@/��f����E�����wD�ݷ��;?�p�W��0ƅ������u�(E� ����J��л��n��a����)�¯M��1����93�a �DV7�в��D1��
�>����+�x!����M�{E��*��{�x��%0�(E��������)�RJ<M@QQ�?K���ߔ�!��zoϣی�O��������Zm�+׺�j
"
��X/�S��̯�a\�.Ɖ��*� �1�s6��5#E�(���|=���q�jp�#V;N�{\�{��x	�� ���J��E�Ȥ���^����b�,��E{ç��������uE��!?��Nݶ�6Kz���C���D��|�"0���d��J��U�t����M��;��6�9-@�>�,V {!&�ݨj��������7J*jf��2\�7������`�~C[��*;�:���8`�P���:�R�h������Xa8	!*rq�yQ�Jr�]�}N��ߩ���!��#6c<�Ƒ=M4�LӋ���������!JHzÄ�@IQ�R�la���7\ c.6��	`�Ҫ�4������$4��Ii�'.�Y���+XI#"�<��c��>��ۥo�rё��Nfww.��`���U����d�9�d�>"�0b�nV*����<�
��y�VЧK����E賚E��s�Y��]�kuYy=�nV�^$X�Cg٣l�Z֫gZ7�o�<$�@�g��+eFd�q��q�S�j�{<y��Ĥ��4��M@��@��;�T�T�A��@�,��ۮ�$˛a(>�Ʋ��)�ݠ:���E�fcܘ00n�� Ck�z��fU�-�Zj���#��h��fb��L̚�Qŀ6����l�ƶj��!�MZk:�Dd=rD�2�ʢ��"1E�,X�`�,����Z�T��b��#;ۿ���8�N�f��wf���i�D��v��GQeI��C}~Ж�uT"
6%��AP��rE�%N�!�[d��8W��QW{����p�Nh�P���H�t��*$u��ؙ͉H`�u��%Щ�JϢ�&Ld[&���e��39L��p0 �E3���p�bo �6ۀ(�����j$�����o���i�	+U����8��2Tp��ae��D�-"Dw%a9gA-T�6{�����D�����Ӷ��N&G}߯n�`��%JA8 8��������M.�����_«��-�ټ~���� H��b�t�Pt�fG�QR~�A/��l!&�1,gO;��N���4�t�*�ԭ(����T#��t�H�.=�����z��(P�R�ID3Wp�V�%+cB�:-������0���L�E-�T���I��"�֓A����|"��n,"Bd�!6�bA��B}�yO3���QZ ����ˌ-~�?h˷�ʩ��4��3DĬ�E8l�Y�}�V0�KϚN�35J�g����v�<�_]���B��&���T�BN�����5�t7!AБ;! e������=j�-����~e���,b��Ol�y����R���~;1���o-Z���8Nze��5W���<���Mғ}E���P��Wd�p^9"�q��X�Y`�T-��H(Y"L�Ψ��!{[H2����yؘ�X0`��@b��i�=�Du��
�:W��<r�|�ڽ��
 �u�͇��bT�Ɛ�!�r�¹~����
��~�L�	Wk������{�\�ﺣ�8�́Y�������=���J�1�dx�����Ӆl��B�ORCM���.������$~����2+�����G��Բ�T��[�+g�%>�|g�� E��]C<N�!�^���.,�L
X)O{	F�]�r��b,���	!촀l&=bLg6�.k���ߨ�It��bF�\ET���X�`��(�^�ND	��.\�8�e^��8��n�t�B�j����&s�� �ll�!F��5�n����E��	���G���x�\~2%,���`�m��"�?���<	�D���Q!(�d韰oD�H�x����,##��LJK�����2�X��j�����@Xh{B��<8�ò(~<5yL��/���;��-��8��U�K��Q��{�����*�h��%&1��1��Z"f��w�!$s41��ؙu��$I�#>�w���I3 ����]�+R�s`�E�'V��{R��:�Y�հ��R�ID�3L�6uQ�k_8����'MrA"iI�Zcf��J��]�k�����B�r �m���(q�θ]L��A0?0����/'��E����v�X���Ӷ�����3�%��K��)6���J�"D��q�"a3�������f����[�o·y��L�̟HT���Km/_��;���ga;�8f<2W���1)��`�S#8�{I�X$-�Pm�N��t�z̎�a��m���r,>J
�<gp�1b�&��N=CO������:$ZU<Q)�-E)|]����N���׻����chcC�G��{�Fu~��r?k�Dt���~[4fLa������ H�j^�� *N��a��0�B��)J�b�Ǡ(C��1���uBd��p�������2�XϮ�oE��X�̫�X�!6���J$#ݨ68�Jun���<iV��س �� ����LC���ψŌ}���,�� ��������{2�Qa%���S�	=� �2Jjq�7���enc�.d'2_.zO�6<J2MC}*qE$0�-dw~A��GiE	p^x�}S�gx����c�0����$���,P���>Y"z$���	�I�aQw�B�0ߍ�(�։F��,'a%�k�+y��8 PІ�?m�0(��Xk�n0c��i�㯆I���tQ�d�r���o# `BC�^��n��~��`��p���>��%����*�7B�c=D�0V���S��N9]�(�2
1����!ΔH�{A.̆S��UR��I�D&F�h]��N�Dkq:�c�u�E���H@� ����a�3-k��33��H��0'�Hc���JM���7��"TR$0F��p<��rQa¢E�L���@�Z�=�&�3G�XBcd̀FG����3��2!Uї38���bA���t��>���q�Լ��K8��Z��|Ji.i"@��TvG�dɡ/xO��F��c ���|4���ԅh$�W?9!,2D��.�"�((eu�	"v�uq�Sk<šSHb���$&� ���c��J
�^��8%��%�^�CΈAC,N�� ���CU �����&Y�DA-� �M�yî^:ÉF�� Wy��`\����Ga�.�K����)�Re>�d�i��Z
ą�f�i�2�C�	�k���ՆtB\,3�b��q/�3���X��,�1$Y>����<��x�x�Ṽp8Z�!C�:��CKS�_(��$
 �ZE���w3�܉�Hŝk��Y�)�0k�B�\b��,Td�ԆX�#L�2���iD�� dJt�*��n�:gnV]-&Y�0о����eK���ɌH�w?��	,�Á����L������O	H"�FD7�u�|� Zc�_H| u��!U�&���SM�C��$<+"`*D���mN�B@�ʲT�+C��ޅ9�"P8I p���l q�I�D�?$Z���vH.[	,���mG��)��f�Ѐ�F��-V�hE�E��(=�s�j�UU+���)a�f�(�Qb�ei�lD����-�}�P����u;��j�'�; "3�Xb�舤b�<��/�*���.{X�/+*<}�x-�Ȑ�"Zʴ*/>eLX�<P1�H�F	^���	v0�� P��Ԅ�K���q�A�*�Ru-m�M��:*�a��7���Ĺa���Y�UE�����u��$?-;�/�z���VDx�R�Am�-�AT�1G�ߪ!wF]�"�x��sz9 ���t���S�X���PK��n��M�L��BA6���1h���a���@5�:��v-�l98��F%Q�j&W���k"�����Y�X�B��*� ��s���DD�_GFt1D�в�'�N�� �=E�ġ��oF�,��ूHи�4�u�-əT%*��Rz�@��A����i�Eq@]DȐA��A��:����%pby�Xt�D�ȵ0@���β��.��J�!�66W#�w�G�t`#5��D��ki4O�p�P�9@��0��Cl��X��Ћ'�o�7���� O�ñ,Xƛ��T�$,WB�U�Qb4d�LB�ğ����CfsEY�saa"H�RH�ѯ?���<�F��%]K�/�s��I13㻲�UUUWz2A�1HxбFcg
+Y	<��\� ��7P�0`�(@��r���c0���N�T7�Ye�ߩ�m%b�)�d�#y$T@w����4�stJ�L�T�Ί6����Z�J�Y�I���@�R����p�I��a�⼅�0,Ftzy*�,K�\����V�r�BP%��e�o��� b
�;��2�ח�dµ�IH3�N�զ��2P�RH"N��&�WR&�	:2�dR4�ILU.�hU�E^�X�qbșA�)0AN.a@$�wd3�ƊD�r.w���I��$���l�@/�d�!8t���1$��	�����Է�X��4��p�^z����p\�=���P��~��R .���`lxM	aPf�!�bZ��	ra��+򒜤�.���(�H���(�0ʬ����C���'O���z����z�fVx��������"a� p�RW�L�`cV�.�RĂ'r��f�!�A�k~������s��M �@�PL�b��Տ����ڂ���W��	���YH��Cs� 	���BD���i����P��?D�v�؂���R�	p=��³r�2�C4U���eM�4=b�|d㞆�j+/EU��{�b���B0�t��{�X����&�P�݅���锒����S��j 7��^�L�kO�kYokɑ�.��K ��0�
#�AQb1L -����	P(D-ȼ�$��n�gf��Ä� ��l-� �, ���	B2b���5��]��5'"�C2�Iڬ$�DUD��!Q��+�b�,#S����W4�Җк�8
%�r�s�keA*��s2!�#
{l�� q�?��4ϯ(c%��*	�T^@���N�w �
�GA��ET-�)�W!q��i51Lg�ϱ����}=�PFI�TI��$N�0�p�
��e�$�0G4�j�z��8��$�3��	I{Ct�Hj���J��5�Ȑ/#�,����a����ŪP��%�ː����8�]_3q�It%���[90%��(M����tXᐂ�W�B�n}�8ƈ�h��d9�4�<h&d>	H��hB�ysp���� �r����2�K�X^�L�%C���P�h1�^2&x4�rd�w�,��D$��vx�nT�u����Ub�^8eS�4c� *H=F7���ԅ��R_�}Vu&��5���k��lnD*�"b��a+�M�K����a:�N�s�d�����TT{���Y��;�u]f���BV�%HR�
=\���2t,]h`,O)�E�v��C*���)l�@��U*q�[0���Ĵxa�+���%�4��b����vqp�f�F�@N�;[�`�/$�����A.+D���Wn�F�SS!LY
B�R�5Ծ��n�с������%8%�*���Frĳ>]D�;ʄ�D��-�8�D�I)��~)��<[�"g>9b�d&�nP �(� �)�9�n���l{�\�f�nZ�!į�H��_��P�Pjć�Y�c!y�7�Ф�ⴙ>�p$�$,$�Ɠ�
ւ��P,ƌ�[����c�� �I^�K�0#�%��`��t'EL��L`- \ZL�h��J��WM��Ћ0- Q*D�% �(H����aq%�N�	XZ�Z.O��*4��O�e\�ω�-�8����zj�$+��=��u^I����ؐ/�6�ۍ
�Q!ԅ�:�(]-�Z�jW����v, ��u��5J�� ����@3x����J���(Q�ZP� �>�0�X��E�8��A�i]���%�]���A�bl �U"�� y���b�g��H�l�P/b�4��q�	M� 2�@�G�j�W]�Hu.8pҍU,�T*��,��UZ�%��� oQ$�����]���y`CM���O@͈�I<
��7-壬���@,$T�3j:)B&\�Z;�B�m�{�Z;.Q���C��lDD�E�,�Z�(��,Pb1L�H�!�`H�$J@���EH��s�rV��k� X��h�߬�$%
c% ����Fs�|d�*JJ��X�I;s0)��H[#sA���vi�r�����L/���TF�"�Ȳ�j
�>Q����	�h�R3�t�KVFr�6H��,���M B4��(��E�1E�����P��&�\J�R�+�� �,�\QP(�u*RFHb%:�Nd]���*`:*��f]|WH��R'&1�w/H\H��y	$i�yX�p�4	��cC`,Z#�bHE�̊�$��"��@7X�L.
�1��RU�b��>H2�	TҐ`���t��$\+KI�gTT�q��ࡂb������abBс^	��N��Y�i��m̾�nW�'�E�Sã�͸4T54���M4�B�݃2L=&"�f2�0>��@���� P��U�xV"���m�Q+���j�W�RF ��%�B�DX �"	ڹ���ϪrF'���5�\�o[�����Q�ޯ��E^<�pܻ�����&1��	��́�K��������n��P����#1X��P���N�ji`m��f󕅰�A*�7Pn1���c$'�+L2���-���+N"U�-��Q!��õ0�5	�Eλv\�^�A�w"�3)�3	-�k a��=�3d(zH|��Gx���]�ݥ��0��^p.h�E�P�QsP�4kшU��� ��"l'Ӷ�9�1��J�e����@f�Aj��Pr�BHN���Ĺ��@���4(����K��6(f��9ci�\����v������wI@�0s�&"*�̼���K�<�LAD�׬��V�G�$��b��ήEo���|Gh�pV�5�gfe)�ޙ��b2~\[� q܄�@_�8s�o?w�����ړ�EZ�T�`\��c�z�Tp?�g[�#ɪ��ӎ��Ʊl�q��e���� s> Sƈ��(� s����r�g�B��#�x���H�	Hd�`A�`���O���.�p�!C"�@