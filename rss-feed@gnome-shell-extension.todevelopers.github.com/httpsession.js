const Soup = imports.gi.Soup;

/**
* Appending the User-Agent filed to the request
*/
function newHttpSession() {
    httpSession = new Soup.SessionAsync();
    httpSession.user_agent = "Mozilla/5.0 (X11; Linux) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.101 Safari/537.36";

    return httpSession;
}
