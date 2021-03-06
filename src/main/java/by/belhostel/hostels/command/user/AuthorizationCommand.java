package by.belhostel.hostels.command.user;

import by.belhostel.hostels.command.ActionCommand;
import by.belhostel.hostels.logic.Authorization;
import by.belhostel.hostels.exception.LogicException;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Roman on 25.12.2016.
 */
public class AuthorizationCommand implements ActionCommand {

    /** The Constant LOG. */
    private static final Logger LOG = LogManager.getLogger();

    /** The Constant PARAM_NAME_LOGIN. */
    private static final String PARAM_NAME_LOGIN = "login";

    /** The Constant PARAM_NAME_PASSWORD. */
    private static final String PARAM_NAME_PASSWORD = "pass";

    /** The Constant PARAM_ERROR_MESSAGE. */
    private static final String PARAM_ERROR_MESSAGE = "errorMessage";

    /** The Constant PARAM_ERROR. */
    private static final String PARAM_ERROR = "/resources/jsp/error.jsp";

    /**
     * Execute.
     *
     * @param request is servlet's request
     * @param response is servlet's response
     * @return the string
     */

    public String execute(HttpServletRequest request, HttpServletResponse response) {
        String page = "";
        try {
            String login = request.getParameter(PARAM_NAME_LOGIN);
            String password = request.getParameter(PARAM_NAME_PASSWORD);
            response.getWriter().write(Boolean.toString(Authorization.login(login, password)));
        } catch (IOException | LogicException e) {
            LOG.error(e);
            request.setAttribute(PARAM_ERROR_MESSAGE, e);
            page = PARAM_ERROR;
        }
        return page;
    }
}
