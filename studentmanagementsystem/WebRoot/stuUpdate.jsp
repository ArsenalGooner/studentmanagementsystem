<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>

<html>
  <head>
    <script>
    var a1 = false;
	var a2 = false;
	var a3 = false;
	var a4 = false;
	var a5 = false;
	var a6 = false;
	var a7 = false;
	var a8 = false;
    function checkaccount(){
		var name = document.getElementById("t1").value;
		var nn = /^[0-9]{12}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l1").innerHTML = "<font color='green' size='-1'>ѧ����ȷ</font>";
			a1 = true;
			}
		else{
			document.getElementById("l1").innerHTML = "<font color='red' size='-2'>ѧ�Ŵ���</font>";
			a1 = false;
			}
		}
	
	function password1(){
		var name1 = document.getElementById("t2").value;
		var nn = /^[a-zA-Z0-9]{8,16}$/;
		var ee = nn.test(name1);
		if(ee){
			document.getElementById("l2").innerHTML = "<font color='green' size='-1'>�������ʹ��</font>";
			a2 = true;
			}
		else{
			document.getElementById("l2").innerHTML = "<font color='red' size='-2'>���������Сд��ĸ�����ֵ���ϣ�����ʹ�������ַ���������8-16֮��</font>";
			a2 = false;
			}
		}
		
	function password2(){
		var name1 = document.getElementById("t2").value;
		var name2 = document.getElementById("t3").value;
		if(name1==name2){
			document.getElementById("l3").innerHTML = "<font color='green' size='-1'>����һ��</font>";
			a3 = true;
			}
		else{
			document.getElementById("l3").innerHTML = "<font color='red' size='-2'>���벻һ��</font>";
			a3 = false;
			}
		}
		
	function checkname(){
		var name = document.getElementById("t4").value;
		var nn = /^[\u4e00-\u9fa5]{2,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l4").innerHTML = "<font color='green' size='-1'>��������ʹ��</font>";
			a4 = true;
			}
		else{
			document.getElementById("l4").innerHTML = "<font color='red' size='-2'>����������ʹ��</font>";
			a4 = false;
			}
		}
	
	function checktel(){
		var name = document.getElementById("t6").value;
		var nn = /^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l6").innerHTML = "<font color='green' size='-1'>�ֻ�������ȷ</font>";
			a6 = true;
			}
		else{
			document.getElementById("l6").innerHTML = "<font color='red' size='-2'>�ֻ��������</font>";
			a6 = false;
			}
		}
		
	function checkclass(){
		var name = document.getElementById("t7").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l7").innerHTML = "<font color='green' size='-1'>�༶�����ȷ</font>";
			a7 = true;
			}
		else{
			document.getElementById("l7").innerHTML = "<font color='red' size='-2'>�༶��Ŵ���</font>";
			a7 = false;
			}
		}

    function checkage(){
		var name = document.getElementById("t8").value;
		var nn = /^[0-9]{0,}$/;
		var ee = nn.test(name);
		if(ee){
			document.getElementById("l8").innerHTML = "<font color='green' size='-1'>������ȷ</font>";
			a8 = true;
			}
		else{
			document.getElementById("l8").innerHTML = "<font color='red' size='-2'>�������</font>";
			a8 = false;
			}
		}
		
	function check(){
		if(a1&&a2&&a3&&a4&&a6&&a7&&a8){
			return true;
			}
		else{
			return false;
			}
		}
</script>
<style type="text/css">
table {
	width: 60%;
	margin: auto;
	border: 1px solid #09F;
}

th,td {
	border: 1px solid #09F;
}
</style>
</head>
<body bgcolor="#FFFFFF">
    <form action="StuServlet" method="post">
    <table>
        <thead>
            <tr>
                <th bgcolor="#0099FF" colspan="2"><font color="#FFFFFF" size="+3" face="΢���ź�"><b>ѧ���޸�</b></font></th>
            </tr>        
        </thead>
        
        <tbody>
            <tr>
                <td width="15%"><b>ѧ�ţ�</b></td>
                <td width="45%"><input type="text" name="stuNum" required value="${STUINFO.stuNum }" id="t1" onBlur="checkaccount()"/><label id="l1">&nbsp;</label>
                </td>
            </tr>
            <tr>
                <td><b>�Ա�</b></td>
                <td><input type="radio" name="stuSex" value="��" ${STUINFO.stuSex=="��"?"checked":"" }/>��
                <input type="radio" name="stuSex" value="Ů" ${STUINFO.stuSex=="Ů"?"checked":"" }/>Ů</td>
            </tr>
            <tr>
                <td><b>���루����8λ����</b><br/><font size="-3">���������룬���ִ�Сд��</font></td>
                <td><input type="password" name="stuPass" required value=${STUINFO.stuPass } id="t2" onBlur="password1()"/><label id="l2">&nbsp;</label></td>
            </tr>
            <tr>
                <td><b>ȷ�����루����8λ����</b><br/><font size="-3">��������һ�����롣</font></td>
                <td><input type="password" name="stuPass" required value=${STUINFO.stuPass } id="t3" onBlur="password2()"/><label id="l3">&nbsp;</label></td>
            </tr>
            <tr>
                <td><b>��ʵ������</b></td> 
                <td><input type="text" name="stuName" required value=${STUINFO.stuName } id="t4" onBlur="checkname()"/><label id="l4">&nbsp;</label></td>           
            </tr>
            <tr>
                <td><b>���䣺</b></td> 
                <td><input type="text" name="stuAge" required value=${STUINFO.stuAge } id="t8" onBlur="checkage()"/><label id="l8">&nbsp;</label></td>           
            </tr>
            <tr>
                <td><b>������</b></td>
                <td><select name="stuOri">
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="���ɹ�" ${STUINFO.stuOri=="���ɹ�"?"selected":"" }/>���ɹ�
                    <option value="������" ${STUINFO.stuOri=="������"?"selected":"" }/>������
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="ɽ��" ${STUINFO.stuOri=="ɽ��"?"selected":"" }/>ɽ��
                    <option value="�ӱ�" ${STUINFO.stuOri=="�ӱ�"?"selected":"" }/>�ӱ�
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="���� " ${STUINFO.stuOri=="���� "?"selected":"" }/>���� 
                    <option value="�ຣ " ${STUINFO.stuOri=="�ຣ"?"selected":"" }/>�ຣ
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="�½�" ${STUINFO.stuOri=="�½�"?"selected":"" }/>�½�
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="�Ĵ�" ${STUINFO.stuOri=="�Ĵ�"?"selected":"" }/>�Ĵ�
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="ɽ��" ${STUINFO.stuOri=="ɽ��"?"selected":"" }/>ɽ��
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuOri=="����"?"selected":"" }/>����
                    </select></td>
            </tr>
            <tr>
                <td><b>ְҵ��</b></td>
                <td><select name="stuJob">
                    <option value="ѧ��" />ѧ��
                    <option value="��ʦ" />��ʦ
                    </select></td>
            </tr>
            <tr>
                <td><b>���壺</b></td>
                <td><select name="stuNat">
                    <option value="����" ${STUINFO.stuNat=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuNat=="����"?"selected":"" }/>����
                    <option value="׳��" ${STUINFO.stuNat=="׳��"?"selected":"" }/>׳��
                    <option value="����" ${STUINFO.stuNat=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuNat=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuNat=="����"?"selected":"" }/>����
                    <option value="����" ${STUINFO.stuNat=="����"?"selected":"" }/>����
                    <option value="ά�����" ${STUINFO.stuNat=="ά�����"?"selected":"" }/>ά�����
                    </select></td>
            </tr>
            <tr>
                <td><b>�ֻ����룺</b></td>
                <td><input type="tel" name="stuPhone" value=${STUINFO.stuPhone } required id="t6" onBlur="checktel()"/><label id="l6">&nbsp;</label></td>
            </tr>
            <tr>
                <td><b>�༶��ţ�</b></td>
                <td><input type="tel" name="classId" value=${STUINFO.classId } id="t7" onBlur="checkclass()"/><label id="l7">&nbsp;</label></td>
            </tr>
        </tbody>
    </table><br/>
    <center>
        <input type="hidden" name="stuId" value=${STUINFO.stuId }>
        <input type="hidden" name="stuState" value=${STUINFO.stuState }>
        <input type="hidden" name="method" value="update">
        <input type="submit" value=" �� �� " onClick="check()"/>
    </center>
    </form>
</body>
</html>