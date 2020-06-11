<!-- 
Created for Alexandro Pachon Aldana 
Mejorado Raul Barrios 20180911
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/root">
        <html>
            <header><xsl:variable name="project" select="instance[@class='PJM']" />
				<font face="Consola">
				<h1><center>PROYECTO: <xsl:value-of select="$project/rowset/row/szProjectName"/></center></h1>
				<table border="1" FACE="Consola">
					<tr> 
						<td>DESCRIPCIÓN</td>
						<td><xsl:value-of select="$project/rowset/row/szProjectDescr" /></td>
						<td><xsl:value-of select="$project/rowset/row/hDescrLong/rowset/row/hDescrLong" /></td>
					</tr>
				</table></font>
            </header>
            <body>
			<font face="Consola">
<!--			<table border="1" width="100%">
				<tr><center>CONTENIDO</center></tr>
				<tr>
					<td><a href="#AGRP">Access group</a></td>
					<td><a href="#Acti">Activity</a></td>
					<td><a href="#BPrc">Business process</a></td>
					<td><a href="#Color">Color</a></td>
					<td><a href="#Comp">Component</a></td>
					<td><a href="#CubD">Cube Definitions</a></td>
					<td><a href="#CubI">Cube Instance Definitions</a></td>
					<td><a href="#Fild">Fields</a></td>
				    <td><a href="#FldF">Field Format</a></td>
					<td><a href="#Indx">Index</a></td>
					<td><a href="#TrnV">Translate Value</a></td>
					<td><a href="#Page">Page</a></td>
					<td><a href="#Menu">Menu</a></td>
					<td><a href="#RcPc">Record PeopleCode</a></td>
				</tr>
				<tr>
					<td><a href="#MnPC">MenuPeopleCode</a></td>
					<td><a href="#Query">Query</a></td>
					<td><a href="#Style">Style</a></td>
					<td><a href="#N/A">N/A</a></td>
					<td><a href="#Role">Role</a></td>
					<td><a href="#PrcD">Process Definition</a></td>
					<td><a href="#SrvD">WebServer Definition</a></td>
					<td><a href="#MSGWS">Web Message</a></td>
					<td><a href="#OPRWS">Operation WebServer Definition</a></td>
					<td><a href="#ROUTEWS">Service Route Definition</a></td>
					<td><a href="#HNDLR">Handlers</a></td>
					<td><a href="#PrcT">Process Type Definition</a></td>
					<td><a href="#JobD">Job Definitions</a></td>
					<td><a href="#RecD">Recurrence Definition</a></td>
				</tr>
				<tr>
					<td><a href="#MsgE">Message Catalog Entry</a></td>
					<td><a href="#Dim">Dimension</a></td>
					<td><a href="#BInt">Business Interlink</a></td>
					<td><a href="#AEP">AE Program</a></td>
					<td><a href="#AES">AE Section</a></td>
					<td><a href="#APK">APP Package</a></td>
					<td><a href="#APPC">APP Package PeopleCode</a></td>
					<td><a href="#MsgN">Message Node</a></td>
					<td><a href="#FilD">File Layout Definition</a></td>
					<td><a href="#CMPC">Component PeCd</a></td>
					<td><a href="#CRPC">Component Rec PeCd</a></td>
					<td><a href="#CFPC">Component Rec Field PeCd</a></td>
					<td><a href="#CI">Component Interface</a></td>
					<td><a href="#MsgC">Message Channel</a></td>
				</tr>
				<tr>
					<td><a href="#MsgD">Message Definition</a></td>
					<td><a href="#Rcrd">Record</a></td>
					<td><a href="#Rule">Approval rule set</a></td>
					<td><a href="#SQL">SQL</a></td>
					<td><a href="#TreS">Tree Structures</a></td>
					<td><a href="#Tre">Trees</a></td>
					<td><a href="#XMLFD">XMLP File Defn</a></td>
					<td><a href="#XMLPD">XMLP Data Src Defn</a></td>
					<td><a href="#XMLRD">XMLP Report Defn</a></td>
					<td><a href="#XMLTD">XMLP Template Defn</a></td>
				</tr>
			</table>
-->				
			<!--<table border="1" width="100%">
				<tr bgcolor=' #1A237E'><center><h2>OBJETOS DEL PROYECTO</h2></center></tr>
			</table>-->
<!--            <xsl:for-each select="instance[@class='PJM']">
                    <table border="1" with="50%">
                        <tr bgcolor="#1A237E"> 
                            <td> <h3><center>TIPO OBJETO</center></h3></td>
                            <td> <h3><center>NOMBRE</center></h3></td>
                        </tr>
                        <xsl:for-each select="rowset/row/lpPit/rowset/row">
                            <tr><td><h3>
                                        <xsl:if test="eObjectType[.='0']">Record</xsl:if>
										<xsl:if test="eObjectType[.='1']">Index</xsl:if>
										<xsl:if test="eObjectType[.='2']">Field</xsl:if>
										<xsl:if test="eObjectType[.='3']">Field Format</xsl:if>
                                        <xsl:if test="eObjectType[.='4']">Translate Value </xsl:if>
                                        <xsl:if test="eObjectType[.='5']">Page</xsl:if>
                                        <xsl:if test="eObjectType[.='6']">Menu</xsl:if>
                                        <xsl:if test="eObjectType[.='7']">Component </xsl:if>
                                        <xsl:if test="eObjectType[.='8']">Record Peoplecode </xsl:if>
										<xsl:if test="eObjectType[.='9']">Menu PeopleCode</xsl:if>
										<xsl:if test="eObjectType[.='10']">Query</xsl:if>
										<xsl:if test="eObjectType[.='11']">Tree Structures</xsl:if>
										<xsl:if test="eObjectType[.='12']">Trees</xsl:if>
										<xsl:if test="eObjectType[.='13']">Access group</xsl:if>
										<xsl:if test="eObjectType[.='14']">Color</xsl:if>
										<xsl:if test="eObjectType[.='15']">Style</xsl:if>
										<xsl:if test="eObjectType[.='16']">N/A</xsl:if>
										<xsl:if test="eObjectType[.='17']">Business process</xsl:if>
										<xsl:if test="eObjectType[.='18']">Activity</xsl:if>
										<xsl:if test="eObjectType[.='19']">Role</xsl:if>
                                        <xsl:if test="eObjectType[.='20']">Process Definition </xsl:if>
										<xsl:if test="eObjectType[.='21']">Server Definition</xsl:if>
										<xsl:if test="eObjectType[.='22']">Process Type Definition</xsl:if>
										<xsl:if test="eObjectType[.='23']">Job Definitions</xsl:if>
										<xsl:if test="eObjectType[.='24']">Recurrence Definition </xsl:if>
										<xsl:if test="eObjectType[.='25']">Message Catalog Entry </xsl:if>
										<xsl:if test="eObjectType[.='26']">Dimension</xsl:if>
										<xsl:if test="eObjectType[.='27']">Cube Definitions</xsl:if>
										<xsl:if test="eObjectType[.='28']">Cube Instance Definitions</xsl:if>
										<xsl:if test="eObjectType[.='29']">Business Interlink</xsl:if>
                                        <xsl:if test="eObjectType[.='30']">SQL </xsl:if>
										<xsl:if test="eObjectType[.='31']">File Layout Definition</xsl:if>
										<xsl:if test="eObjectType[.='32']">Component Interface </xsl:if>
										<xsl:if test="eObjectType[.='33']">AE Program</xsl:if>
                                        <xsl:if test="eObjectType[.='34']">AE Section </xsl:if>
										<xsl:if test="eObjectType[.='35']">Message Node</xsl:if>
										<xsl:if test="eObjectType[.='36']">Message Channel</xsl:if>
										<xsl:if test="eObjectType[.='37']">Message Definition </xsl:if>
										<xsl:if test="eObjectType[.='38']">Approval rule set</xsl:if>
										<xsl:if test="eObjectType[.='39']">Message PeopleCode</xsl:if>
										<xsl:if test="eObjectType[.='40']">Subscription PeopleCode</xsl:if>
										<xsl:if test="eObjectType[.='41']">N/A</xsl:if>
										<xsl:if test="eObjectType[.='42']">Component Interface PeopleCode</xsl:if>
                                        <xsl:if test="eObjectType[.='43']">AE Peoplecode </xsl:if>
										<xsl:if test="eObjectType[.='44']">Page PeopleCode</xsl:if>
										<xsl:if test="eObjectType[.='45']">Page Field PeopleCode</xsl:if>
                                        <xsl:if test="eObjectType[.='46']">Component Peoplecode </xsl:if>
                                        <xsl:if test="eObjectType[.='47']">Component Record Peoplecode </xsl:if>
                                        <xsl:if test="eObjectType[.='48']">Component Rec Fld Peoplecode </xsl:if>
										<xsl:if test="eObjectType[.='49']">Image</xsl:if>
										<xsl:if test="eObjectType[.='50']">Style sheet</xsl:if>
										<xsl:if test="eObjectType[.='51']">HTML</xsl:if>
										<xsl:if test="eObjectType[.='52']">Not used</xsl:if>
										<xsl:if test="eObjectType[.='53']">Permission List</xsl:if>
										<xsl:if test="eObjectType[.='54']">Portal Registry Definitions</xsl:if>
										<xsl:if test="eObjectType[.='55']">Portal Registry Structures </xsl:if>
										<xsl:if test="eObjectType[.='56']">URL Definitions</xsl:if>
                                        <xsl:if test="eObjectType[.='57']">Application Package </xsl:if>
                                        <xsl:if test="eObjectType[.='58']">APackage Peoplecode </xsl:if>
										<xsl:if test="eObjectType[.='59']">Portal Registry User Homepage</xsl:if>
										<xsl:if test="eObjectType[.='60']">Problem Type</xsl:if>
										<xsl:if test="eObjectType[.='61']">Archive Templates</xsl:if>
										<xsl:if test="eObjectType[.='62']">XSLT</xsl:if>
										<xsl:if test="eObjectType[.='63']">Portal Registry User Favorite</xsl:if>
										<xsl:if test="eObjectType[.='64']">Mobile Page</xsl:if>
										<xsl:if test="eObjectType[.='65']">Relationships</xsl:if>
										<xsl:if test="eObjectType[.='66']">Component Interface Property Peoplecode</xsl:if>
										<xsl:if test="eObjectType[.='67']">Optimization Models</xsl:if>
										<xsl:if test="eObjectType[.='68']">File References</xsl:if>
										<xsl:if test="eObjectType[.='69']">File Type Codes</xsl:if>
										<xsl:if test="eObjectType[.='70']">Archive Object Definitions</xsl:if>
										<xsl:if test="eObjectType[.='71']">Archive Templates (Type 2)</xsl:if>
										<xsl:if test="eObjectType[.='72']">Diagnostic Plug In</xsl:if>
										<xsl:if test="eObjectType[.='73']">Analytic Model</xsl:if>
										<xsl:if test="eObjectType[.='79']">Service Definition </xsl:if>
										<xsl:if test="eObjectType[.='80']">Service Operation </xsl:if>
										<xsl:if test="eObjectType[.='81']">Handlers</xsl:if>
										<xsl:if test="eObjectType[.='82']">Service Operation Version </xsl:if>
										<xsl:if test="eObjectType[.='83']">Service Route Definition </xsl:if>
                                        <xsl:if test="eObjectType[.='87']">XMLP File Defn </xsl:if>
                                        <xsl:if test="eObjectType[.='85']">XMLP Template Defn </xsl:if>
                                        <xsl:if test="eObjectType[.='86']">XMLP Report Defn </xsl:if>
                                        <xsl:if test="eObjectType[.='88']">XMLP Data Src Defn </xsl:if>
                                        <xsl:if test="eObjectType[.='90']">SOAP MESSAGE </xsl:if>
                                    </h3>
									
                                </td>
                                <td>
                                    <h3>
										<xsl:if test="eObjectType[.='0']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='1']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='2']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='3']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='4']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='5']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='6']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='7']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='8']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" />.<xsl:value-of select="szObjectValue_2" /></xsl:if>
										<xsl:if test="eObjectType[.='9']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='10']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='11']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='12']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='13']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='14']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='15']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='16']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='17']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='18']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='19']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='20']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='21']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='22']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='23']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='24']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='25']"> <xsl:value-of select="szObjectValue_0" />,<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='26']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='27']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='28']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='29']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='30']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='31']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='32']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='33']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='34']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='35']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='36']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='37']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='38']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='39']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='40']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='41']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='42']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='43']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" />.
																			<xsl:value-of select="szObjectValue_2" />.
																			<xsl:value-of select="szObjectValue_3" /></xsl:if>
										<xsl:if test="eObjectType[.='44']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='45']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='46']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" />.
																			<xsl:value-of select="szObjectValue_2" /></xsl:if>
										<xsl:if test="eObjectType[.='47']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" />.
																			<xsl:value-of select="szObjectValue_2" />.
																			<xsl:value-of select="szObjectValue_3" /></xsl:if>
										<xsl:if test="eObjectType[.='48']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" />.
																			<xsl:value-of select="szObjectValue_2" />.
																			<xsl:value-of select="szObjectValue_3" /></xsl:if>
										<xsl:if test="eObjectType[.='49']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='50']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='51']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='52']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='53']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='54']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='55']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" />.
																			<xsl:value-of select="szObjectValue_2" /></xsl:if>
										<xsl:if test="eObjectType[.='56']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='57']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='58']"> <xsl:value-of select="szObjectValue_0" />.
																			<xsl:value-of select="szObjectValue_1" />.
																			<xsl:value-of select="szObjectValue_2" /></xsl:if>
										<xsl:if test="eObjectType[.='59']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='60']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='61']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='62']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='63']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='64']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='65']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='66']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='67']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='68']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='69']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='70']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='71']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='72']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='73']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='79']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='80']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='81']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='82']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='83']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='85']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='86']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='87']"> <xsl:value-of select="szObjectValue_0" /></xsl:if>
										<xsl:if test="eObjectType[.='88']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
										<xsl:if test="eObjectType[.='90']"> <xsl:value-of select="szObjectValue_0" />.<xsl:value-of select="szObjectValue_1" /></xsl:if>
                                    </h3>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
            </xsl:for-each>-->
				
				<a name="AEP"></a>
				<table border="1" width="100%"><h2><tr>APPLICATION ENGINE PROGRAMS</tr></h2></table>
				<xsl:for-each select="instance[@class='AEM']">
					<table border="1" width="100%">
						<tr bgcolor=' #9E9E9E'><td><h3><xsl:value-of select="rowset/row/szApplId" />  - <xsl:value-of select="rowset/row/szDescr" /></h3></td></tr>
						<xsl:for-each select="rowset/row/lpszDescrLong/rowset/row">
							<tr><td><h4><pre><xsl:value-of select="lpszDescrLong" /></pre></h4></td></tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
				
				<a name="AES"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>APPLICATION ENGINE SECTIONS</h2></tr> </table>
					<xsl:for-each select="instance[@class='AES']">
				<table border="3" width="100%">
				<tr>
					<td bgcolor=' #9E9E9E'><h3>SECTION:
					<xsl:value-of select="rowset/row/szApplId" />
					<xsl:value-of select="rowset/row/szSection" /></h3> </td>
				</tr>
					<xsl:for-each select="rowset/row/lpSectT/rowset/row">
						<table border="2" width="100%">
							<tr bgcolor=' #9E9E9E'>
								<td><b>DESCRIPCIÓN</b></td><td><b>STEPS</b></td>
							</tr>
							<tr><td><h3><xsl:value-of select="szDescr" /> </h3></td>
								<td><table border="2" width="100%">	
									<xsl:for-each select="lpStepT/rowset/row">
									<tr><td><xsl:value-of select="szStep" /> - <xsl:value-of select="szDescr" /></td>
									<td><table border="1" width="100%">
										<tr><td><b>Actions</b></td></tr>									
										<xsl:for-each select="lpAeDoSect/rowset/row">
											<tr><td>	Do: <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeMsg/rowset/row">
											<tr><td>	Msg : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeStmtSelect/rowset/row">
											<tr><td>	Select : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeStmtUntil/rowset/row">
											<tr><td>	Until : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeStmtWhen/rowset/row">
											<tr><td>	When : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeStmtWhile/rowset/row">
											<tr><td>	While : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeXSLT/rowset/row">
											<tr><td>	XSLT : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAePcode/rowset/row">
											<tr><td>	PCODE : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
										<xsl:for-each select="lpAeStmtSql/rowset/row">
											<tr><td>	SQLCode : <xsl:value-of select="szDescr" /></td></tr>
										</xsl:for-each>
									</table></td>
									</tr>
								</xsl:for-each></table></td>
							</tr>
						</table>
						</xsl:for-each>
				</table>
					</xsl:for-each>
					
				<a name="APK"></a><hr></hr>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>APPLICATION PACKAGE</h2></tr> </table>
				<table border="1" width="100%">
				<xsl:for-each select="instance[@class='APM']">
					<table border="3" width="100%">
						<tr bgcolor=' #9e9e9e'><td><h3>Package Root: <xsl:value-of select="rowset/row/szPackageRoot" /></h3></td></tr>
						<tr>
								<xsl:for-each select="rowset/row/lpszDescrLong/rowset/row">
									<td><pre> <xsl:value-of select="lpszDescrLong" /> </pre></td>
								</xsl:for-each>
						</tr>
						<tr><td>	
								<table border="1" width="100%" >
									<tr bgcolor=' #9e9e9e'><td><h3> Package: <xsl:value-of select="rowset/row/szPackageId" /></h3></td></tr>
									<tr><td><b> Classes: </b></td></tr>
								<xsl:for-each select="rowset/row/ApmDefnList.hDefnClassList/rowset/row">
									<tr><td><xsl:value-of select="ApmClassKey.szClassId" /></td></tr>
								</xsl:for-each>
								</table>
							</td>
						</tr>
						<hr></hr>
					</table>
				</xsl:for-each>
			</table>


				<a name="Comp"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>COMPONENTS</h2></tr> </table>
					<table border="1" width="100%">
						<tr bgcolor=' #9e9e9e'><td><b>Name</b></td><td><b>SerchRec</b></td><td><b>AddSerchRec</b></td><td><b>Notas</b></td></tr>
					<xsl:for-each select="instance[@class='PGM']">
						<tr> <td> <b> <xsl:value-of select="rowset/row/szPnlGrpName" /> </b></td> 
							 <td> <xsl:value-of select="rowset/row/szSearchRecName" /> </td> 
							 <td> <xsl:value-of select="rowset/row/szAddSearchRecName" /> </td> 
								  <xsl:for-each select="rowset/row/hDescrLong/rowset/row">
									<td><pre> <xsl:value-of select="lpszDescrLong" /> </pre> </td>
								   </xsl:for-each>
						</tr>
					
				</xsl:for-each>
				</table>
				
				<a name="Fild"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>FIELDS</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9e9e9e'><td><b>Name</b></td><td><b>Label</b></td><td><b>Label long</b></td><td><b>Notas</b></td></tr>
					<xsl:for-each select="instance[@class='FIELD']">
					<tr><td><b><xsl:value-of select="rowset/row/szFieldName" /></b></td>
						<td><xsl:value-of select="rowset/row/szLabelID" /></td>
						<td><xsl:value-of select="rowset/row/szLongName" /></td>
						<td><xsl:for-each select="rowset/row/hDescrLong/rowset/row">
								<pre> <xsl:value-of select="hDescrLong" /> </pre>
							</xsl:for-each></td>
					</tr>
					</xsl:for-each>
				</table>

				<a name="Menu"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>MENUES</h2></tr>
				</table><table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td><b>Name</b></td><td><b>Label</b></td><td><b>Descripción</b></td><td><b>Notas</b></td></tr>
					<xsl:for-each select="instance[@class='MDM']">
							<tr><td><b> <xsl:value-of select="rowset/row/szMenuName" /> </b> </td>
								<td><xsl:value-of select="rowset/row/szMenuLabel" /> </td>
								<td><xsl:value-of select="rowset/row/szDescr" /></td>
								<td><xsl:for-each select="rowset/row/hDescrLong/rowset/row">
										<pre> <xsl:value-of select="hDescrLong" /> </pre>
									</xsl:for-each>
								</td>
							</tr>
					</xsl:for-each>
				</table>
				
				<a name="Page"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>PAGES</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><TD><b>NAME</b></TD><TD><b>DESCRIPCION</b></TD><TD><b>NOTAS</b></TD></tr>
					<xsl:for-each select="instance[@class='PDM']">
							<tr><td><b><xsl:value-of select="rowset/row/szPnlName" /></b></td>
								<td><xsl:value-of select="rowset/row/szDescr" /></td>
								<td><xsl:for-each select="rowset/row/hDescrLong/rowset/row">
									<pre> <xsl:value-of select="hDescrLong" /> </pre> 
								</xsl:for-each>
								</td>
							</tr>
						</xsl:for-each>
				</table>
				
				<a name="AEP"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>AE PEOPLECODE</h2></tr></table>
				<xsl:for-each select="instance[@class='PCM']">
					<table border="1" width="100%">
						<xsl:if test="rowset/row/eObjectID_0[.='66']"> 
							<tr bgcolor=' #9E9E9E'> <td> <h3> APPLICATION ENGINE/SECTION/STEP: 
									<xsl:value-of select="rowset/row/szObjectValue_0" /> -  
									<xsl:value-of select="rowset/row/szObjectValue_1" /> -  
									<xsl:value-of select="rowset/row/szObjectValue_5" /></h3> </td></tr>
							<tr>
								<td><pre><xsl:value-of select="peoplecode_text" /></pre></td>
							</tr>
					    </xsl:if>
					</table>
				</xsl:for-each>
				
				<a name="APPC"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>APACKAGE PEOPLECODE</h2></tr></table>
				<xsl:for-each select="instance[@class='PCM']">
					<table border="1" width="100%">
						<xsl:if test="rowset/row/eObjectID_0[.='104']">
							<tr bgcolor=' #9E9E9E'><td><h3>Package Root/Package/Class: 
								<xsl:value-of select="rowset/row/szObjectValue_0" /> / 
								<xsl:value-of select="rowset/row/szObjectValue_1" /> / 
								<xsl:value-of select="rowset/row/szObjectValue_2" /></h3></td></tr>
							<tr><td><pre><xsl:value-of select="peoplecode_text" /></pre></td></tr>
					    </xsl:if>
					</table>
				</xsl:for-each>
				
				<a name="CMPC"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>COMPONENT PEOPLECODE</h2></tr></table>
				<xsl:for-each select="instance[@class='PCM']">
					<table border="1" width="100%">
						<xsl:if test="rowset/row/eObjectID_0[.='10']">
						    <xsl:if test="rowset/row/eObjectID_2[.='12']">
								<tr bgcolor=' #9E9E9E'> <td> <h3> Componente/Evento: <xsl:value-of select="rowset/row/szObjectValue_0" /> / <xsl:value-of select="rowset/row/szObjectValue_2" /> </h3> 
								</td></tr>
								<tr><td><pre><xsl:value-of select="peoplecode_text" /></pre></td></tr>
							</xsl:if>		
					    </xsl:if>
					</table>
				</xsl:for-each>
				
				<a name="CFPC"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>COMPONENT RECFLD PEOPLECODE</h2></tr></table>
				<xsl:for-each select="instance[@class='PCM']">
					<table border="1" width="100%">
						<xsl:if test="rowset/row/eObjectID_0[.='10']">
						    <xsl:if test="rowset/row/eObjectID_2[.='1']">
							    <xsl:if test="rowset/row/eObjectID_3[.='2']">
									<tr bgcolor='#9E9E9E' > <td width="100%"> <h3> Componente/Record/Field/Evento: <xsl:value-of select="rowset/row/szObjectValue_0" /> / <xsl:value-of select="rowset/row/szObjectValue_2" /> / <xsl:value-of select="rowset/row/szObjectValue_3" /> / <xsl:value-of select="rowset/row/szObjectValue_4" /> </h3>
										</td></tr><tr><td width="100%">
											  <pre> <xsl:value-of select="peoplecode_text" /></pre> 
										</td>
									</tr>
								</xsl:if>
							</xsl:if>
					    </xsl:if>
					</table>
				</xsl:for-each>
				
				<a name="CRPC"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>COMPONENT RECORD PEOPLECODE</h2></tr></table>
				<xsl:for-each select="instance[@class='PCM']">
					<table border="1" width="100%">
						<xsl:if test="rowset/row/eObjectID_0[.='10']">
						    <xsl:if test="rowset/row/eObjectID_2[.='1']">
							    <xsl:if test="rowset/row/eObjectID_3[.='12']">
									<tr bgcolor='#9E9E9E'><td><h3> Componente/Record/Evento: <xsl:value-of select="rowset/row/szObjectValue_0" /> / <xsl:value-of select="rowset/row/szObjectValue_2" /> / <xsl:value-of select="rowset/row/szObjectValue_3" /></h3> 
											</td></tr>
									<tr><pre> <xsl:value-of select="peoplecode_text" /> </pre></tr>
								</xsl:if>
							</xsl:if>
					    </xsl:if>
					</table>
				</xsl:for-each>
				
				<a name="RcPc"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>RECORD PEOPLECODE</h2></tr></table>
				<table border="1" width="100%">
					<xsl:for-each select="instance[@class='PCM']">
					<tr bgcolor='#9E9E9E'><td><h3> Record/Field/Evento: <xsl:value-of select="rowset/row/szObjectValue_0" /> / <xsl:value-of select="rowset/row/szObjectValue_1" /> / <xsl:value-of select="rowset/row/szObjectValue_2" /> </h3></td></tr>
					<xsl:if test="rowset/row/eObjectID_0[.='1']">
					    <xsl:if test="rowset/row/eObjectID_1[.='2']">
							<tr><td><table><tr><td><pre><xsl:value-of select="peoplecode_text" /></pre></td></tr></table></td></tr>
						</xsl:if>
					</xsl:if>
				</xsl:for-each>
				</table>
				<a name="Rcrd"></a>
				<table border="1" width="100%"><tr bgcolor='#9E9E9E'><h2>RECORD</h2></tr></table>
                <xsl:for-each select="instance[@class='RDM']">
                    <table border="1" width="100%">
						<tr bgcolor='#9E9E9E'><td width="20%"><b>RECORD NAME</b></td><td width="10%"><b>TYPE</b></td> <td width="70%"><b>DESCRIPCIÓN</b></td></tr>
						<tr><td><b><xsl:value-of select="rowset/row/szRecName" /></b></td>
						<td><xsl:if test="rowset/row/eRecType[.='0']">Table</xsl:if>
									<xsl:if test="rowset/row/eRecType[.='1']">View</xsl:if>
									<xsl:if test="rowset/row/eRecType[.='2']">Derived</xsl:if>
									<xsl:if test="rowset/row/eRecType[.='3']">Sub Record</xsl:if>
									<xsl:if test="rowset/row/eRecType[.='5']">Dynamic View</xsl:if>
									<xsl:if test="rowset/row/eRecType[.='6']">Query View</xsl:if>
									<xsl:if test="rowset/row/eRecType[.='7']">Temporary Table</xsl:if>
									<xsl:if test="rowset/row/eRecType[.&gt;'7']"><xsl:value-of select="rowset/row/eRecType" /></xsl:if>
                        </td><td><xsl:value-of select="rowset/row/szRecDescr" /> </td> </tr>
                        <tr><pre><xsl:value-of select="rowset/row/hDescrLong/rowset/row/hDescrLong" /></pre></tr>
						</table>
						<table border="1" width="100%">
                        <tr align="center" bgcolor='#9E9E9E'>
							<td width="20%" >Field</td>
							<td width="12%">Type</td>
							<td width="8%">Length</td>
							<td width="8%">Key type</td>
							<td width="8%">Req</td>
							<td width="15%">Prompt</td>
							<td width="16%">Long label</td>
							<td width="13%">Short label</td>
                        </tr>
                        <xsl:for-each select="rowset/row/hRft/rowset/row">
                            <tr><td><b><xsl:value-of select="atmFieldName" /></b></td>
                                <td><xsl:if test="eFieldType[.='0']">Character</xsl:if>
									<xsl:if test="eFieldType[.='1']">Long Character</xsl:if>
									<xsl:if test="eFieldType[.='2']">Number</xsl:if>
									<xsl:if test="eFieldType[.='3']">Signed Number</xsl:if>
									<xsl:if test="eFieldType[.='4']">Date</xsl:if>
									<xsl:if test="eFieldType[.='5']">Time</xsl:if>
									<xsl:if test="eFieldType[.='6']">DateTime</xsl:if>
									<xsl:if test="eFieldType[.='8']">Image</xsl:if>
									<xsl:if test="eFieldType[.='9']">Image Reference</xsl:if>
									<xsl:if test="eFieldType[.&gt;'9']"><xsl:value-of select="eFieldType" /></xsl:if>
                                </td>
                                <td align="right"><xsl:value-of select="nLength" />.<xsl:value-of select="nDecimalPos" /></td>
                                <td><xsl:variable name="var1" select="floor(fUseEdit div 2)" />
                                    <xsl:variable name="var2" select="fUseEdit div 2" />
									<xsl:if test="$var1 != $var2"> Key</xsl:if>
									<xsl:variable name="var3" select="floor(floor(fUseEdit div 2) div 2)" />
									<xsl:variable name="var4" select="floor(fUseEdit div 2) div 2" />
									<xsl:if test="$var3 != $var4"> Dup</xsl:if>
									<xsl:variable name="var5" select="floor(floor(fUseEdit div 16) div 2)" />
									<xsl:variable name="var6" select="floor(fUseEdit div 16) div 2" />
									<xsl:if test="$var5 != $var6"> Alt</xsl:if>
                                </td>
                                <td>
									<xsl:variable name="var7" select="floor(floor(fUseEdit div 256) div 2)" />
									<xsl:variable name="var8" select="floor(fUseEdit div 256) div 2" />
									<xsl:if test="$var7 != $var8"> Yes</xsl:if>
									<xsl:if test="$var7 = $var8"> No</xsl:if>
                                </td>
                                <td><xsl:value-of select="atmEditTable" /></td>
                                <td><xsl:value-of select="atmLongName" /></td>
                                <td><xsl:value-of select="atmShortName" /></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </xsl:for-each>
				
				<a name="SQL"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>SQLs</h2></tr></table>
					<table border="1" width="100%">
						<tr bgcolor=' #9E9E9E'><td width="10%"><b>SQL NAME</b></td><td width="10%"><b>Descripció</b></td><td width="10%"><b>Nota</b></td><td width="70%"><b>SqlText</b></td></tr>
						<xsl:for-each select="instance[@class='SRM']">
						<tr>
							<td width="10%"><b><xsl:value-of select="rowset/row/szSqlId" /></b></td>
							<xsl:for-each select="rowset/row/lpStmtT/rowset/row">
							<td width="10%"><xsl:value-of select="szDescr" /></td>
							<td width="10%"><xsl:for-each select="lpszDescrLong/rowset/row">
									<xsl:value-of select="lpszDescrLong" />
								</xsl:for-each></td>
							<xsl:for-each select="lpszSqlText/rowset/row">
									<tr><td width="70%"><xsl:value-of select="lpszSqlText"/></td></tr>
								</xsl:for-each>
							</xsl:for-each>
						</tr>
					</xsl:for-each>
					</table>
				
				
				<a name="TrnV"></a>
                <table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>TRANSLATE VALUES</h2></tr></table>
				<xsl:for-each select="instance[@class='XTM']">
					
					<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h3><xsl:value-of select="rowset/row/szFieldName" /></h3></tr></table>
					
					<table border="1" width="100%">
						<tr bgcolor=' #9E9E9E'><td width="30%"><b>Id</b></td><td width="70%"><b>Valor</b></td></tr>
						<xsl:for-each select="rowset/row/hFvt/rowset/row">
						<tr><td><xsl:value-of select="szFieldValue" /></td>
							<td><xsl:value-of select="szLongName" /></td></tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
				
				<a name="XMLPD"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>XMLP Data Src Defn</h2></tr></table>
				<xsl:for-each select="instance[@class='XPDSM']">
					<table border="1" width="40%">
						<tr><td><h3><xsl:value-of select="rowset/row/szDs_id" /></h3>
								<h5>Descripción: <xsl:value-of select="rowset/row/szDescr" /></h5>
								<h5>Tipo de Data Source: <xsl:value-of select="rowset/row/szDs_type" /></h5></td>
						</tr>
					</table>
				</xsl:for-each>

				<a name="XMLFD"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>XMLP File Defn</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td width="30%"><b>Id</b></td><td width="70%"><b>File</b></td></tr>
					<xsl:for-each select="instance[@class='FILEM']">
					<tr><td><xsl:value-of select="rowset/row/szFileId" /></td><td><xsl:value-of select="rowset/row/szFileName" /></td></tr>
					
				</xsl:for-each>
				</table>
				<xsl:if test="eObjectType[.='86']">XMLP Report Defn </xsl:if>

				<a name="XMLRD"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>XMLP Report Defn</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td><b>Id</b></td><td><b>Nota</b></td><td><b>DataSource</b></td></tr>
				
					<xsl:for-each select="instance[@class='XRRDM']">
						<tr><td><b><xsl:value-of select="rowset/row/szReport_defn_id" /></b></td>
							<td><xsl:value-of select="rowset/row/szDescr" /></td>
							<td><xsl:value-of select="rowset/row/szDs_type" /></td>
						</tr>
				</xsl:for-each>
				</table>
				
				<a name="XMLTD"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>XMLP Template Defn</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td><b>Id</b></td><td><b>Tipo</b></td></tr>
				<xsl:for-each select="instance[@class='XTRDM']">
					<tr><td><b><xsl:value-of select="rowset/row/szTemplate_id" /></b></td>
						<td><xsl:value-of select="rowset/row/szTemplate_type" /></td>
					</tr>
				</xsl:for-each>
				</table>


				<a name="SrvD"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>SERVICIO WEB</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td><b>WSName</b></td><td><b>Alias</b></td><td><b>Descripción</b></td><td><b>Descripción Completa</b></td></tr>
					<xsl:for-each select="instance[@class='SRVM']">
						<tr>
							<td><xsl:value-of select="rowset/row/szIb_servicename" /></td>
							<td><xsl:value-of select="rowset/row/szIb_aliasname" /></td>
							<td><xsl:value-of select="rowset/row/szDescr" /></td>
							<td><xsl:value-of select="rowset/row/lpszDescrlong/rowset/row/lpszDescrlong" /></td>
						</tr>
					</xsl:for-each>
					</table>

				<a name="OPRWS"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>OPERACION SERVICIO WEB</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td><b>WSName</b></td><td><b>Alias</b></td><td><b>Descripción</b></td><td><b>Descripción Completa</b></td></tr>
				<xsl:for-each select="instance[@class='OPRM']">
						<tr>
							<td><xsl:value-of select="rowset/row/szOperationname" /></td>
							<td><xsl:value-of select="rowset/row/szIb_aliasname" /></td>
							<td><xsl:value-of select="rowset/row/szDescr" /></td>
							<td><xsl:value-of select="rowset/row/lpszDescrlong/rowset/row/lpszDescrlong" /></td>
						</tr>
				</xsl:for-each>
				</table>

				<a name="HNDLR"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>HANDLERS</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'>
						<td><b>WSOperationName</b></td>
						<td><b>Type</b></td>
						<td><b>Application Package</b></td>
						<td><b>Qualified Path</b></td>
						<td><b>Class Name</b></td>
						<td><b>Method Name</b></td>
					</tr>
					<xsl:for-each select="instance[@class='OPRHM']">
						<tr>
							<td><xsl:value-of select="rowset/row/szOperationname" /></td>
							<td><xsl:value-of select="rowset/row/szHandlertype" /></td>
							<td><xsl:value-of select="rowset/row/lpOperationac/rowset/row/szPackageroot" /></td>
							<td><xsl:value-of select="rowset/row/lpOperationac/rowset/row/szQualifypath" /></td>
							<td><xsl:value-of select="rowset/row/lpOperationac/rowset/row/szClassname" /></td>
							<td><xsl:value-of select="rowset/row/lpOperationac/rowset/row/szMethodname" /></td>
						</tr>
					</xsl:for-each>
				</table>

				<a name="MSGWS"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>WEB MESSAGES</h2></tr></table>
				<table border="1" width="100%">
						<tr bgcolor=' #9e9e9e'><td><b>Name</b></td><td><b>Alias</b></td><td><b>Descr</b></td><td><b>Detalle</b></td><td><b>Versión</b></td><td><b>Enable</b></td></tr>
					<xsl:for-each select="instance[@class='MSDM']">
						<tr><td><b><xsl:value-of select="rowset/row/szMsgName"/></b></td>
							<td><xsl:value-of select="rowset/row/szAliasName"/></td>
							<td><xsl:value-of select="rowset/row/szDescr"/></td>
							<td><xsl:value-of select="rowset/row/hDescrLong/rowset/row/hDescrLong"/></td>
							<td><xsl:value-of select="rowset/row/hMvt/rowset/row/szVerName"/></td>
							<td><xsl:if test="rowset/row/hMvt/rowset/row/bMsgPart[.='0']">Si</xsl:if>
							    <xsl:if test="rowset/row/hMvt/rowset/row/bMsgPart[.='1']">No</xsl:if></td>
								<xsl:for-each select="rowset/row/hMvt/rowset/row"></xsl:for-each>
						</tr>
					</xsl:for-each>
				</table>
				
				<a name="ROUTEWS"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>ROUTE OPERATION SERVICE</h2></tr></table>
				<table border="1" width="100%">
					<tr bgcolor=' #9E9E9E'><td><b>NAME</b></td><td><b>NODO-ORIGEN</b></td><td><b>NODO-DESTINO</b></td><td><b>OPERACION</b></td><td><b>PROPIEDADES</b></td></tr>
					<xsl:for-each select="instance[@class='RTDM']">
						<tr><td><b><xsl:value-of select="rowset/row/szRoutingdefnname" /></b></td>
							<td><xsl:value-of select="rowset/row/szSendernodename" /></td>
							<td><xsl:value-of select="rowset/row/szReceivernodename" /></td>
							<td><xsl:value-of select="rowset/row/szOperationname" /></td>
							<td><table border="1" width="100%"><tr  bgcolor=' #9E9E9E'><td><b>Propiedad</b></td><td><b>Nombre</b></td><td><b>Valor</b></td></tr>
									<xsl:for-each select="rowset/row/lpRtngdfnconprp/rowset/row">
										<tr><td bgcolor=' #9e9e9e'><b><xsl:value-of select="szPropid"/></b></td>
											<td><xsl:value-of select="szPropname"/></td>
											<td><xsl:value-of select="szPropvalue"/></td>
										</tr>
									</xsl:for-each>
								
							</table></td>
						</tr>
					</xsl:for-each>
				</table>
				
				<a name="CI"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>COMPONENT INTERFACE</h2></tr></table>
				<xsl:for-each select="instance[@class='BCM']">
					<table border="1" width="100%">
						<tr><td><h5> Nombre Component Interface: <xsl:value-of select="rowset/row/szBcName" /> </h5> 
								<h5> Descr: <xsl:value-of select="rowset/row/hDescrLong/rowset/row/hDescrLong" /></h5>
							</td>
						</tr>
					</table>
				</xsl:for-each>
				
				<a name="Indx"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>INDEX</h2></tr></table>
				
				<a name="FldF"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>FIELDS FORMAT</h2></tr></table>
				
				<a name="MnPC"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>MENU PEOPLECODE</h2></tr></table>
				
				<a name="Query"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>QUERY</h2></tr></table>
				
				<a name="AGRP"></a>
				<table border="1" width="100%"><tr bgcolor=' #9E9E9E'><h2>ACCESS GROPUP</h2></tr></table>
				</font>
			</body>
        </html>
    </xsl:template>
</xsl:stylesheet>
