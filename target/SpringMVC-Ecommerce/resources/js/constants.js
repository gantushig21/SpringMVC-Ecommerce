export const contextRoot = "/" + window.location.pathname.split( '/' )[1];
export const token = $("meta[name='_csrf_token']").attr("content");
export const parameterName = $("meta[name='_csrf_parameterName']").attr("content");

