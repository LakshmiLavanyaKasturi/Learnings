<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>URL Paramenters</title>
                <h1 style="text-align:center">Azure Digital Twins API Create or Update</h1>
            </head>
            <body>
                
                <xsl:apply-templates/>
                
            </body>
        </html>
        
    </xsl:template>
    
    <xsl:template match="Photo">
        
        <img src="C:\Users\lavan\Documents\Personal\Digital_twins_example\azure-digital-twins-explorer.png" alt="Azure Digital Twins photo"/>
        
    </xsl:template>
    
    <xsl:template match="uri-parameters">
        
        <h2>URI-Parameters</h2>
        
        <style> 
            table,
            th,
            td {
            border: 1px solid black;
            border-collapse: collapse;
            }
            th,
            td {
            padding: 5px;
            }
            th {
            text-align: left;
            }</style>
        <table style="width:50%">
            <tr>
                <th>Name</th>
                <th>In</th>
                <th>Required</th>
                <th>Type</th>
                <th>Description</th>
                
               
                
            </tr>
            <xsl:apply-templates>
                
            </xsl:apply-templates> 
            
            
        </table>
  
        
    </xsl:template>
    <xsl:template match="parameter">
        <tr>

            <td>
                <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:value-of select="in"/>
            </td>
            <td>
                <xsl:value-of select="Required"/>
            </td>
            <td>
                <xsl:value-of select="Type"/>
            </td>
            <td>
                <xsl:value-of select="Description"/>
            </td>
        </tr>
    </xsl:template>
    
    
    <xsl:template match="request-body">
        
        <h2>Request-Body</h2>
        
        <style> 
            table,
            th,
            td {
            border: 1px solid black;
            border-collapse: collapse;
            }
            th,
            td {
            padding: 5px;
            }
            th {
            text-align: left;
            }</style>
        <table style="width:50%">
            <tr>
                <th>Name</th>
                <th>Required</th>
                <th>Type</th>
                <th>Description</th>
            </tr>
            <xsl:apply-templates>
                
            </xsl:apply-templates> 
            
            
        </table>
        
        
    </xsl:template>
    <xsl:template match="attributes">
        <tr>
            
            <td>
                <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:value-of select="Required"/>
            </td>
            <td>
                <xsl:value-of select="Type"/>
            </td>
            <td>
                <xsl:value-of select="Description"/>
            </td>
        </tr>
    </xsl:template>
    
    
    <xsl:template match="responses">
        
        <h2>Responses</h2>
        
        <style> 
            table,
            th,
            td {
            border: 1px solid black;
            border-collapse: collapse;
            }
            th,
            td {
            padding: 5px;
            }
            th {
            text-align: left;
            }</style>
        <table style="width:50%">
            <tr>
                <th>Name</th>
                <th>Type</th>
                <th>Description</th>
            </tr>
            <xsl:apply-templates>
                
            </xsl:apply-templates> 
            
            
        </table>
        
        
    </xsl:template>
    <xsl:template match="res-attributes">
        <tr>
            
            <td>
                <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:value-of select="Type"/>
            </td>
            <td>
                <xsl:value-of select="Description"/>
            </td>
        </tr>
    </xsl:template>
       
    
    <xsl:template match="security">
        
        <h2>Security</h2>
        
        <style> 
            table,
            th,
            td {
            border: 1px solid black;
            border-collapse: collapse;
            }
            th,
            td {
            padding: 5px;
            }
            th {
            text-align: left;
            }</style>
        <table style="width:50%">
            <tr>
                <th>Name</th>
                <th>Description</th>
            </tr>
            <xsl:apply-templates>
                
            </xsl:apply-templates> 
            
            
        </table>
        
        
    </xsl:template>
    <xsl:template match="azure-auth-security">
        
        
        <tr>
            
            <td>
                <xsl:value-of select="name"/>
            </td>
            <td>
                <xsl:value-of select="Description"/>
            </td>
        </tr>
    </xsl:template>
    
    <xsl:template match="security-attributes">
        <h4>Azure Active Directory OAuth2 Flow</h4>
        <xsl:value-of select="type"/>
        <br/>
        <xsl:value-of select="flow"/>
        <br/>
        <xsl:value-of select="authorization_url"/>
        <br/>

    </xsl:template>
</xsl:stylesheet>