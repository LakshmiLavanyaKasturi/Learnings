<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            
            <fo:layout-master-set>
                <fo:simple-page-master master-name="main" page-height="11in" page-width="8.5in"
                    margin-top="2.5in" margin-left="2in" margin-right="2in">
                    <fo:region-body region-name="body"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="main">
                <fo:flow flow-name="body">
                    <fo:block font-family="arial" font-size="20pt">Resume</fo:block>
                    <xsl:apply-templates/>
                    
                </fo:flow>
            </fo:page-sequence>
        </fo:root>   
               
  
    </xsl:template>
   
    <xsl:template match="school"> 
        <fo:block font-family="arial" font-size="16pt">Education</fo:block>
        <fo:block font-family="arial" font-size="14pt">
            <xsl:value-of select="name" /> 
            <xsl:text> , </xsl:text> 
            <xsl:value-of select="degree"/> 
            <xsl:text> , </xsl:text>
            <xsl:value-of select="year"/> 
            <xsl:text>  </xsl:text> 
        </fo:block>
        
     </xsl:template>
    
    <xsl:template match="skill">
        <fo:block font-family="arial" font-size="19pt">Technical skills</fo:block>

        <fo:table>
            <fo:table-body>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>Programming Languages</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="programming_languages"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>Web Technologies</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="webtechnologies"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>Database Languages</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="database_languages"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>Software Methodologies</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="Software_methodologies"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block>Tools</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:value-of select="tools"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>


            </fo:table-body>
        </fo:table>



    </xsl:template>
   
    <xsl:template match="work_history">
        <fo:block font-family="arial" font-size="19pt">Work history</fo:block>
        <fo:block font-family="arial" font-size="14pt">
            <xsl:for-each select="experience">
            
                <fo:block font-family="arial" font-size="14pt">
                <xsl:value-of select="company_name"/>
                <xsl:value-of select="title"/>
                <xsl:value-of select="duration"/>
                </fo:block>
            
        </xsl:for-each>
        </fo:block>
        
    </xsl:template>
    
    <xsl:template match="contact_info">
        <fo:block font-family="arial" font-size="19pt">Contact Information</fo:block>
        
        <fo:block font-family="arial" font-size="14pt">
            <xsl:value-of select="name"/>
            <xsl:text>  </xsl:text>

            <fo:block font-family="arial" font-size="14pt">
                <xsl:value-of select="Address/House_number"/>
                <xsl:value-of select="Address/Street"/>
                <xsl:text> , </xsl:text>
                <xsl:value-of select="Address/City"/>
                <xsl:text> , </xsl:text>
                <xsl:value-of select="Address/State"/>
                <xsl:text> , </xsl:text>
                <xsl:value-of select="Address/Zipcode"/>
                <xsl:text> . </xsl:text>
                <xsl:text> Phone: </xsl:text>
                <xsl:value-of select="phone_number"/>
                <xsl:text>  </xsl:text>
            </fo:block>

        </fo:block>
    </xsl:template>
    
     
 </xsl:stylesheet>



