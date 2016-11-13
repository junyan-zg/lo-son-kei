//
// Source code recreated from a .class file by IntelliJ IDEA
// (powered by Fernflower decompiler)
//

package com.ckfinder.connector.handlers.command;

import com.ckfinder.connector.ServletContextFactory;
import com.ckfinder.connector.configuration.IConfiguration;
import com.ckfinder.connector.data.ResourceType;
import com.ckfinder.connector.errors.ConnectorException;
import com.ckfinder.connector.utils.FileUtils;
import com.ckfinder.connector.utils.PathUtils;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.regex.Pattern;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public abstract class Command {
    protected Exception exception;
    protected IConfiguration configuration = null;
    protected String userRole = null;
    protected String currentFolder = null;
    protected String type = null;

    public Command() {
    }

    public void runCommand(HttpServletRequest request, HttpServletResponse response, IConfiguration configuration1, Object... params) throws ConnectorException {
        this.initParams(request, configuration1, params);

        try {
            this.setResponseHeader(response, ServletContextFactory.getServletContext());
            this.execute(response.getOutputStream());
            response.getOutputStream().flush();
            response.getOutputStream().close();
        } catch (ConnectorException var6) {
            throw var6;
        } catch (IOException var7) {
            throw new ConnectorException(104, var7);
        } catch (Exception var8) {
            throw new ConnectorException(104, var8);
        }
    }

    public void initParams(HttpServletRequest request, IConfiguration configuration, Object... params) throws ConnectorException {
        if(configuration != null) {
            this.configuration = configuration;
            this.userRole = (String)request.getSession().getAttribute(configuration.getUserRoleName());
            this.getCurrentFolderParam(request);
            if(this.checkConnector(request) && this.checkParam(this.currentFolder)) {
                this.currentFolder = PathUtils.escape(this.currentFolder);
                if(!this.checkHidden() && (this.currentFolder == null || this.currentFolder.equals("") || this.checkIfCurrFolderExists(request))) {
                    this.type = this.getParameter(request, "type");
                }
            }
        }

    }

    protected boolean checkConnector(HttpServletRequest request) throws ConnectorException {
        if(this.configuration.enabled() && this.configuration.checkAuthentication(request)) {
            return true;
        } else {
            throw new ConnectorException(500, false);
        }
    }

    protected boolean checkIfCurrFolderExists(HttpServletRequest request) throws ConnectorException {
        String tmpType = this.getParameter(request, "type");
        if(tmpType != null) {
            File currDir = new File(((ResourceType)this.configuration.getTypes().get(tmpType)).getPath() + this.currentFolder);
            if(currDir.exists() && currDir.isDirectory()) {
                return true;
            } else {
                throw new ConnectorException(116, false);
            }
        } else {
            return true;
        }
    }

    protected boolean checkHidden() throws ConnectorException {
        if(FileUtils.checkIfDirIsHidden(this.currentFolder, this.configuration)) {
            throw new ConnectorException(109, false);
        } else {
            return false;
        }
    }

    public abstract void execute(OutputStream var1) throws ConnectorException;

    public abstract void setResponseHeader(HttpServletResponse var1, ServletContext var2);

    protected boolean checkParam(String reqParam) throws ConnectorException {
        if(reqParam != null && !reqParam.equals("")) {
            if(Pattern.compile("(/\\.|\\p{Cntrl}|//|\\\\|[:*?<>\"\\|])").matcher(reqParam).find()) {
                throw new ConnectorException(102, false);
            } else {
                return true;
            }
        } else {
            return true;
        }
    }

    protected String getParameter(HttpServletRequest request, String paramName) {
        if (request.getQueryString().indexOf(paramName) != -1){
            return FileUtils.convertFromUriEncoding(request.getParameter(paramName), this.configuration);
        }else{
            return request.getParameter(paramName);
        }
    }

    protected void getCurrentFolderParam(HttpServletRequest request) {
        String currFolder = this.getParameter(request, "currentFolder");
        if(currFolder != null && !currFolder.equals("")) {
            this.currentFolder = PathUtils.addSlashToBeginning(PathUtils.addSlashToEnd(currFolder));
        } else {
            this.currentFolder = "/";
        }

    }
}
