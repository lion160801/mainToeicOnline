package vn.myclass.command;

import vn.myclass.core.dto.JqueryDTO;
import vn.myclass.core.web.command.AbstractCommand;

public class JqueryCommand extends AbstractCommand<JqueryDTO> {
    public JqueryCommand() {
        this.pojo = new JqueryDTO();
    }

    public String getUrlType() {
        return urlType;
    }

    public void setUrlType(String urlType) {
        this.urlType = urlType;
    }

    private String urlType;
}
