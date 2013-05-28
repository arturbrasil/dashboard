#-------------------------------------------------------------------------------
# vmods
    
import std;
#    import header;
    import statsd;
import timers;


# end of vmods
#-------------------------------------------------------------------------------


sub vcl_init {
 statsd.prefix( "MireVeja." );
 statsd.server( "localhost", "8125" );
 ### Set the timing units - seconds, milli, micro or nano.
 timers.unit( "microseconds" );
}





#-------------------------------------------------------------------------------
# backends e directors manuais
    
    
    
    backend integracao17 { .host="vtexwebstore-integracao.elasticbeanstalk.com"; 	 .port="80"; 	 .first_byte_timeout = 900s; .between_bytes_timeout = 900s; }
    backend VTEX_IO { .host="vtex-io.s3.amazonaws.com"; 	 .port="80"; 	 .first_byte_timeout = 900s; .between_bytes_timeout = 900s; }
    backend LICENSE_MANAGER { .host="54.243.114.37"; .port="80"; .first_byte_timeout = 900s; .between_bytes_timeout = 900s; }
    

# end of backends e directors manuais
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------
# backends e directors automatizados
    
    
    backend VChnnl_00_02_00_beta_e2 {
      .port = "80";
      .host = "23.21.216.203";
    }
    
    backend VChnnl_00_02_00_beta_e1 {
      .port = "80";
      .host = "107.20.134.176";
    }
    
    backend VChnnl_01_00_00_beta_e2 {
      .port = "80";
      .host = "54.225.133.103";
    }
    
    backend VChnnl_01_00_00_beta_e1 {
      .port = "80";
      .host = "107.21.232.110";
    }
    
    backend VChnnl_00_01_00_stable_e2 {
      .port = "80";
      .host = "54.225.166.142";
    }
    
    backend VChnnl_00_01_00_stable_e1 {
      .port = "80";
      .host = "184.73.251.92";
    }
    
    backend VChnnl_00_01_00_stable_e3 {
      .port = "80";
      .host = "54.225.183.131";
    }
    
    backend VChnnl_01_00_00_stable_e1 {
      .port = "80";
      .host = "75.101.153.79";
    }
    
    backend a_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.157.200";
    }
    
    backend a_01_00_00_stable_e2 {
      .port = "80";
      .host = "54.225.147.45";
    }
    
    backend a_01_00_00_stable_e1 {
      .port = "80";
      .host = "107.22.188.203";
    }
    
    backend logist_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.179.129";
    }
    
    backend logist_01_00_00_stable_e2 {
      .port = "80";
      .host = "54.235.190.117";
    }
    
    backend logist_01_00_00_stable_e1 {
      .port = "80";
      .host = "107.20.213.226";
    }
    
    backend chk_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.64.203";
    }
    
    backend chk_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.21.213.146";
    }
    
    backend chk_01_00_00_stable_e1 {
      .port = "80";
      .host = "107.21.241.171";
    }
    
    backend wkfapi_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.23.96.230";
    }
    
    backend wkfapi_01_00_00_stable_e1 {
      .port = "80";
      .host = "50.17.250.53";
    }
    
    backend sno_01_00_00_beta_e1 {
      .port = "80";
      .host = "50.16.220.67";
    }
    
    backend sno_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.23.154.188";
    }
    
    backend sno_01_00_00_stable_e1 {
      .port = "80";
      .host = "54.225.215.39";
    }
    
    backend ptlapi_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.243.73.249";
    }
    
    backend ptlapi_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.23.160.7";
    }
    
    backend ptlapi_01_00_00_stable_e1 {
      .port = "80";
      .host = "50.16.192.163";
    }
    
    backend svc_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.219.245";
    }
    
    backend vlm_01_00_02_beta_e1 {
      .port = "80";
      .host = "23.21.206.122";
    }
    
    backend omsapi_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.170.90";
    }
    
    backend omsapi_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.23.101.41";
    }
    
    backend omsapi_01_00_00_stable_e1 {
      .port = "80";
      .host = "54.225.179.142";
    }
    
    backend portal_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.159.240";
    }
    
    backend portal_00_00_00_stable_m0c {
      .port = "80";
      .host = "54.243.115.159";
    }
    
    backend portal_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.21.95.10";
    }
    
    backend portal_01_00_00_stable_e1 {
      .port = "80";
      .host = "54.225.164.185";
    }
    
    backend admsvc_01_00_00_stable_e2 {
      .port = "80";
      .host = "50.16.222.180";
    }
    
    backend admsvc_01_00_00_stable_e1 {
      .port = "80";
      .host = "54.235.94.10";
    }
    
    backend ffm_01_00_00_beta_e1 {
      .port = "80";
      .host = "174.129.235.178";
    }
    
    backend ffm_01_00_00_stable_e2 {
      .port = "80";
      .host = "23.21.224.180";
    }
    
    backend ffm_01_00_00_stable_e1 {
      .port = "80";
      .host = "107.21.208.37";
    }
    
    backend admin_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.225.176.136";
    }
    
    backend admin_01_00_00_stable_e2 {
      .port = "80";
      .host = "107.20.138.249";
    }
    
    backend admin_01_00_00_stable_e1 {
      .port = "80";
      .host = "107.20.216.198";
    }
    
    backend prtlv2_01_00_00_beta_e1 {
      .port = "80";
      .host = "54.243.87.177";
    }
    
    backend prtlv2_01_00_00_stable_e1 {
      .port = "80";
      .host = "54.235.101.132";
    }
    
    backend rnbwp_02_00_01_beta_e1 {
      .port = "80";
      .host = "23.21.76.242";
    }
    
    backend rnbwp_02_00_01_stable_e1 {
      .port = "80";
      .host = "107.21.223.6";
    }
    
    backend lmngr_03_01_00_beta_e1 {
      .port = "80";
      .host = "107.21.234.215";
    }
    
    backend lmngr_03_01_00_stable_e1 {
      .port = "80";
      .host = "54.243.114.37";
    }
    
    backend pfsys_05_02_08_stable_e1 {
      .port = "80";
      .host = "54.225.168.214";
    }
    
    backend pfsys_05_03_00_stable_e1 {
      .port = "80";
      .host = "23.23.97.49";
    }
    
    director VChnnl_00_02_00_beta round-robin {
      { .backend = VChnnl_00_02_00_beta_e2; }
      { .backend = VChnnl_00_02_00_beta_e1; }
    }
    director VChnnl_01_00_00_beta round-robin {
      { .backend = VChnnl_01_00_00_beta_e2; }
      { .backend = VChnnl_01_00_00_beta_e1; }
    }
    director VChnnl_00_01_00_stable round-robin {
      { .backend = VChnnl_00_01_00_stable_e2; }
      { .backend = VChnnl_00_01_00_stable_e1; }
      { .backend = VChnnl_00_01_00_stable_e3; }
    }
    director VChnnl_01_00_00_stable round-robin {
      { .backend = VChnnl_01_00_00_stable_e1; }
    }
    director a_01_00_00_beta round-robin {
      { .backend = a_01_00_00_beta_e1; }
    }
    director a_01_00_00_stable round-robin {
      { .backend = a_01_00_00_stable_e2; }
      { .backend = a_01_00_00_stable_e1; }
    }
    director logist_01_00_00_beta round-robin {
      { .backend = logist_01_00_00_beta_e1; }
    }
    director logist_01_00_00_stable round-robin {
      { .backend = logist_01_00_00_stable_e2; }
      { .backend = logist_01_00_00_stable_e1; }
    }
    director chk_01_00_00_beta round-robin {
      { .backend = chk_01_00_00_beta_e1; }
    }
    director chk_01_00_00_stable round-robin {
      { .backend = chk_01_00_00_stable_e2; }
      { .backend = chk_01_00_00_stable_e1; }
    }
    director wkfapi_01_00_00_stable round-robin {
      { .backend = wkfapi_01_00_00_stable_e2; }
      { .backend = wkfapi_01_00_00_stable_e1; }
    }
    director sno_01_00_00_beta round-robin {
      { .backend = sno_01_00_00_beta_e1; }
    }
    director sno_01_00_00_stable round-robin {
      { .backend = sno_01_00_00_stable_e2; }
      { .backend = sno_01_00_00_stable_e1; }
    }
    director ptlapi_01_00_00_beta round-robin {
      { .backend = ptlapi_01_00_00_beta_e1; }
    }
    director ptlapi_01_00_00_stable round-robin {
      { .backend = ptlapi_01_00_00_stable_e2; }
      { .backend = ptlapi_01_00_00_stable_e1; }
    }
    director svc_01_00_00_beta round-robin {
      { .backend = svc_01_00_00_beta_e1; }
    }
    director vlm_01_00_02_beta round-robin {
      { .backend = vlm_01_00_02_beta_e1; }
    }
    director omsapi_01_00_00_beta round-robin {
      { .backend = omsapi_01_00_00_beta_e1; }
    }
    director omsapi_01_00_00_stable round-robin {
      { .backend = omsapi_01_00_00_stable_e2; }
      { .backend = omsapi_01_00_00_stable_e1; }
    }
    director portal_01_00_00_beta round-robin {
      { .backend = portal_01_00_00_beta_e1; }
    }
    director portal_00_00_00_stable round-robin {
      { .backend = portal_00_00_00_stable_m0c; }
    }
    director portal_01_00_00_stable round-robin {
      { .backend = portal_01_00_00_stable_e2; }
      { .backend = portal_01_00_00_stable_e1; }
    }
    director admsvc_01_00_00_stable round-robin {
      { .backend = admsvc_01_00_00_stable_e2; }
      { .backend = admsvc_01_00_00_stable_e1; }
    }
    director ffm_01_00_00_beta round-robin {
      { .backend = ffm_01_00_00_beta_e1; }
    }
    director ffm_01_00_00_stable round-robin {
      { .backend = ffm_01_00_00_stable_e2; }
      { .backend = ffm_01_00_00_stable_e1; }
    }
    director admin_01_00_00_beta round-robin {
      { .backend = admin_01_00_00_beta_e1; }
    }
    director admin_01_00_00_stable round-robin {
      { .backend = admin_01_00_00_stable_e2; }
      { .backend = admin_01_00_00_stable_e1; }
    }
    director prtlv2_01_00_00_beta round-robin {
      { .backend = prtlv2_01_00_00_beta_e1; }
    }
    director prtlv2_01_00_00_stable round-robin {
      { .backend = prtlv2_01_00_00_stable_e1; }
    }
    director rnbwp_02_00_01_beta round-robin {
      { .backend = rnbwp_02_00_01_beta_e1; }
    }
    director rnbwp_02_00_01_stable round-robin {
      { .backend = rnbwp_02_00_01_stable_e1; }
    }
    director lmngr_03_01_00_beta round-robin {
      { .backend = lmngr_03_01_00_beta_e1; }
    }
    director lmngr_03_01_00_stable round-robin {
      { .backend = lmngr_03_01_00_stable_e1; }
    }
    director pfsys_05_02_08_stable round-robin {
      { .backend = pfsys_05_02_08_stable_e1; }
    }
    director pfsys_05_03_00_stable round-robin {
      { .backend = pfsys_05_03_00_stable_e1; }
    }
    

# end of backends e directors automatizados
#-------------------------------------------------------------------------------


#-------------------------------------------------------------------------------

sub vcl_recv {
    
    set req.http.X-VTEX-Router-Debug = "<< entering vcl_recv";
    set req.http.X-VTEX-Router-Cache-CDNIgnore = "0";
    
    
    
    
    # handles X-Forwarded-For and X-Forwarded-Proto
    # this is trusted downstreams. so we gotta make sure it's ours
    if ( req.http.X-VTEX-Router-Forwarded-Proto ) { remove req.http.X-VTEX-Router-Forwarded-Proto; }
    if ( req.http.X-VTEX-Router-Forwarded-For )   { remove req.http.X-VTEX-Router-Forwarded-For;   }
    if ( req.http.X-Forwarded-Proto ) { set req.http.X-VTEX-Router-Forwarded-Proto = req.http.X-Forwarded-Proto; }
    if ( req.http.X-Forwarded-For )   { set req.http.X-VTEX-Router-Forwarded-For = req.http.X-Forwarded-For;     }
    
    
    # CDNIgnore per host
    if (req.http.host ~ "(?i)^www2.") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for www2";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    
    
    # CDNIgnore per Cookie
    if (req.http.Cookie ~ "CDNIgnore=1") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache due CDNIgnore by cookie";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    
    
    # CDNIgnore per url
    if (req.url ~ "(?i)^/vtex-id-callback") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for vtex-id-callback";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif ( req.url ~ "(?i)autRequest=") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for vtex-id-autrequest";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)CDNIgnore=1") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache due CDNIgnore by URL";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/Control/TopBarAssincrono.aspx") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for TopBarAssincrono.aspx";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/Control/Navegacao_Conteudo.aspx") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for Navegacao_Conteudo.aspx";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/restart.aspx") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /restart.aspx";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~"(?i)^/giftlist/") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for Giftlist";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/no-cache") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /no-cache";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/views") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /views";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/vitrine") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /vitrine";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/control") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /control";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/site") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /site";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/lista") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /lista";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)V^/list") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /list";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/Control/assets/") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for /Control/assets/";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    elsif (req.url ~ "(?i)^/webform1.aspx") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // No cache for webform1.aspx";
        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
        # return (pass);
    }
    
    
    # unsetting cookies
    if (req.url ~ "(?i)^/Control/ArquivoExibir.aspx") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // Search ArquivoExibir.aspx for cache with no cookie";
        unset req.http.cookie;
    }
    elsif (req.url ~ "(?i)^/Control/ArquivoTextoExibir.aspx") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // Search ArquivoTextoExibir.aspx for cache with no cookie";
        unset req.http.cookie;
    }
    elsif (req.url ~ "(?i)\.(xml)$") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // Search .xml for cache with no cookie";
        unset req.http.cookie;
    }
    elsif (req.url ~ "(?i)^/arquivos/") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // Search /arquivos/ for cache with no cookie";
        unset req.http.cookie;
    }
    elsif (req.url ~ "(?i)^/Scripts/") {
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // Search /Scripts/ for cache with no cookie";
        unset req.http.cookie;
    }
    
    
    
    #----------------------------------------------
    # Choice of environment
    #----------------------------------------------
    
    # Order of precedence: Query string, Header, Cookie, Host
    #
    # !!! Attention: this is just us collecting the user's input. This will be validated later.
    # !!! Any invalid environment will be overriden to "stable"
    #
    
    # Query String
    if ( req.url ~ "(?i)vtex_env=" ) {
      set req.http.X-VTEX-Environment  = regsuball( req.url, "^.*?vtex_env=([^&]*)&*.*$", "\1" );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Environment choice from query string: " + req.http.X-VTEX-Environment;
    }
    # Header
    elsif ( req.http.X-VTEX-Environment ) {
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Environment choice from header: " + req.http.X-VTEX-Environment;
    }
    # Cookie 
    elsif( req.http.Cookie ~ "vtex_env" ) {
      set req.http.X-VTEX-Environment = regsuball( req.http.Cookie, "^.*?vtex_env=([^;]*);*.*$", "\1" );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Environment choice from cookie: " + req.http.X-VTEX-Environment;
    } 
    # Host for stable
    elsif( req.http.host ~ "(?i).vtexcommerce.com.br" ){
      set req.http.X-VTEX-Environment = "stable";
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Environment choice from host: " + req.http.X-VTEX-Environment;
    }
    # Host for beta
    elsif( req.http.host ~ "(?i).vtexcommercebeta.com.br" ){
      set req.http.X-VTEX-Environment = "beta";
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Environment choice from host: " + req.http.X-VTEX-Environment;
    }
    
    
    
      if (req.http.host == "vtex.io") {
    
        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out to vtex-io";
        set req.backend = VTEX_IO;
        remove req.http.Cookie;
        set req.http.host = "vtex-io.s3.amazonaws.com";
        set req.url = regsub(req.url, "\?.*$", "");
    
        set req.http.X-VTEX-Router-Backend-App = "vtex.io";
        set req.http.X-VTEX-Router-Backend-Director = "n/a";
        set req.http.X-VTEX-Router-Backend-Environment = "n/a";
        set req.http.X-VTEX-Router-Backend-Version = "n/a";
    
      }
      else {
        # TODO: grab the track from query, then headers, then host
          
        if ( req.http.X-VTEX-Environment == "beta" ) {
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // found environment: beta";
            # do nothing, just validating the environment choice here folks
        } 
        elsif ( req.http.X-VTEX-Environment == "stable" ) {
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // found environment: stable";
            # do nothing, just validating the environment choice here folks
        } 
        else {
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // requested environment not found, fallback: stable";
            set req.http.X-VTEX-Environment = "stable";
        } 
         
          
        if ( req.http.X-VTEX-Environment == "beta" ) {
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // entering beta";
              
            if ( req.url ~ "(?i)^$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /, source: automagically discovered, highest version available, app: portal, version: 01.00.00, backend: portal_01_00_00_beta";
                set req.backend = portal_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/";
                set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "portal";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "1";
            } 
            if ( req.url ~ "(?i)^/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /, source: automagically discovered, highest version available, app: portal, version: 01.00.00, backend: portal_01_00_00_beta";
                set req.backend = portal_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/";
                set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "portal";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "1";
            } 
            if ( req.url ~ "(?i)^/admin$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_beta";
                set req.backend = admin_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "7";
            } 
            if ( req.url ~ "(?i)^/admin/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_beta";
                set req.backend = admin_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "7";
            } 
            if ( req.url ~ "(?i)^/admin/a$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/a/, source: automagically discovered, highest version available, app: a, version: 01.00.00, backend: a_01_00_00_beta";
                set req.backend = a_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "a";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/admin/a/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/a/, source: automagically discovered, highest version available, app: a, version: 01.00.00, backend: a_01_00_00_beta";
                set req.backend = a_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "a";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/oms$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/oms/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_beta";
                set req.backend = omsapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/oms/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/oms/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_beta";
                set req.backend = omsapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/rnb$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/rnb/, source: automagically discovered, highest version available, app: rnbwp, version: 02.00.01, backend: rnbwp_02_00_01_beta";
                set req.backend = rnbwp_02_00_01_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/rnb/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/rnb/, source: automagically discovered, highest version available, app: rnbwp, version: 02.00.01, backend: rnbwp_02_00_01_beta";
                set req.backend = rnbwp_02_00_01_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/checkout$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_beta";
                set req.backend = chk_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "10";
            } 
            if ( req.url ~ "(?i)^/checkout/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_beta";
                set req.backend = chk_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "10";
            } 
            if ( req.url ~ "(?i)^/admin/api$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/api/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_beta";
                set req.backend = admin_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/admin/api/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/api/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_beta";
                set req.backend = admin_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/api/addon$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/addon/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/api/addon/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/addon/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/api/portal$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_beta";
                set req.backend = prtlv2_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "12";
            } 
            if ( req.url ~ "(?i)^/api/portal/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_beta";
                set req.backend = prtlv2_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "12";
            } 
            if ( req.url ~ "(?i)^/admin-topbar$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin-topbar/, source: automagically discovered, highest version available, app: lmngr, version: 03.01.00, backend: lmngr_03_01_00_beta";
                set req.backend = lmngr_03_01_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                set req.http.X-VTEX-Router-Backend-App = "lmngr";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/admin-topbar/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin-topbar/, source: automagically discovered, highest version available, app: lmngr, version: 03.01.00, backend: lmngr_03_01_00_beta";
                set req.backend = lmngr_03_01_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                set req.http.X-VTEX-Router-Backend-App = "lmngr";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/admin-topbar$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin-topbar/, source: automagically discovered, highest version available, app: vlm, version: 01.00.02, backend: vlm_01_00_02_beta";
                set req.backend = vlm_01_00_02_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                set req.http.X-VTEX-Router-Backend-App = "vlm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/admin-topbar/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin-topbar/, source: automagically discovered, highest version available, app: vlm, version: 01.00.02, backend: vlm_01_00_02_beta";
                set req.backend = vlm_01_00_02_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                set req.http.X-VTEX-Router-Backend-App = "vlm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/admin/portal$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_beta";
                set req.backend = prtlv2_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/admin/portal/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_beta";
                set req.backend = prtlv2_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/checkout$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_beta";
                set req.backend = chk_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/checkout/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_beta";
                set req.backend = chk_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/logistics$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_beta";
                set req.backend = logist_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "15";
            } 
            if ( req.url ~ "(?i)^/api/logistics/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_beta";
                set req.backend = logist_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "15";
            } 
            if ( req.url ~ "(?i)^/admin/checkout$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/checkout/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_beta";
                set req.backend = omsapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/admin/checkout/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/checkout/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_beta";
                set req.backend = omsapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/api/middleware$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_beta";
                set req.backend = VChnnl_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/api/middleware/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_beta";
                set req.backend = VChnnl_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/admin/logistics$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_beta";
                set req.backend = logist_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/admin/logistics/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_beta";
                set req.backend = logist_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/adminwebservice$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /adminwebservice/, source: automagically discovered, highest version available, app: svc, version: 01.00.00, backend: svc_01_00_00_beta";
                set req.backend = svc_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                set req.http.X-VTEX-Router-Backend-Director = "svc_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "svc";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/adminwebservice/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /adminwebservice/, source: automagically discovered, highest version available, app: svc, version: 01.00.00, backend: svc_01_00_00_beta";
                set req.backend = svc_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                set req.http.X-VTEX-Router-Backend-Director = "svc_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "svc";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/admin/middleware$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_beta";
                set req.backend = VChnnl_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/admin/middleware/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_beta";
                set req.backend = VChnnl_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/api/installments$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/installments/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/api/installments/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/installments/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/api/catalog_system$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/catalog_system/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "20";
            } 
            if ( req.url ~ "(?i)^/api/catalog_system/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/catalog_system/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "20";
            } 
            if ( req.url ~ "(?i)^/api/fulfillment/pvt$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/fulfillment/pvt/, source: automagically discovered, highest version available, app: ffm, version: 01.00.00, backend: ffm_01_00_00_beta";
                set req.backend = ffm_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ffm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/fulfillment/pvt/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/fulfillment/pvt/, source: automagically discovered, highest version available, app: ffm, version: 01.00.00, backend: ffm_01_00_00_beta";
                set req.backend = ffm_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ffm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/license-manager$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/license-manager/, source: automagically discovered, highest version available, app: lmngr, version: 03.01.00, backend: lmngr_03_01_00_beta";
                set req.backend = lmngr_03_01_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                set req.http.X-VTEX-Router-Backend-App = "lmngr";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/license-manager/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/license-manager/, source: automagically discovered, highest version available, app: lmngr, version: 03.01.00, backend: lmngr_03_01_00_beta";
                set req.backend = lmngr_03_01_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                set req.http.X-VTEX-Router-Backend-App = "lmngr";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/license-manager$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/license-manager/, source: automagically discovered, highest version available, app: vlm, version: 01.00.02, backend: vlm_01_00_02_beta";
                set req.backend = vlm_01_00_02_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                set req.http.X-VTEX-Router-Backend-App = "vlm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/license-manager/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/license-manager/, source: automagically discovered, highest version available, app: vlm, version: 01.00.02, backend: vlm_01_00_02_beta";
                set req.backend = vlm_01_00_02_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                set req.http.X-VTEX-Router-Backend-App = "vlm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/gift-certificate$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/gift-certificate/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/api/gift-certificate/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/gift-certificate/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_beta";
                set req.backend = ptlapi_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/api/shipping-tracker$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_beta";
                set req.backend = sno_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/api/shipping-tracker/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_beta";
                set req.backend = sno_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/admin/shipping-tracker$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_beta";
                set req.backend = sno_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "24";
            } 
            if ( req.url ~ "(?i)^/admin/shipping-tracker/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_beta";
                set req.backend = sno_01_00_00_beta;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "24";
            } 
             
             
            #----------------------------------------------
            # Choice of version for app VChnnl
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_VChnnl_version=" ) {
              set req.http.X-VTEX-VChnnl-Version  = regsuball( req.url, "^.*?vtex_VChnnl_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-VChnnl-Version;
              set req.http.X-VTEX-Explicit-VChnnl-Version = req.http.X-VTEX-VChnnl-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-VChnnl-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-VChnnl-Version;
              set req.http.X-VTEX-Explicit-VChnnl-Version = req.http.X-VTEX-VChnnl-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_VChnnl_version=" ) {
              set req.http.X-VTEX-VChnnl-Version = regsuball( req.http.Cookie, "^.*?vtex_VChnnl_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-VChnnl-Version;
              set req.http.X-VTEX-Explicit-VChnnl-Version = req.http.X-VTEX-VChnnl-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_VChnnl_version_map_20130515=" ) {
                set req.http.X-VTEX-VChnnl-map_20130515-Version  = regsuball( req.url, "^.*?vtex_VChnnl_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-VChnnl-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-VChnnl-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-VChnnl-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_VChnnl_version_map_20130515=" ) {
                set req.http.X-VTEX-VChnnl-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_VChnnl_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-VChnnl-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-VChnnl-Version isn't present!
              if ( ! req.http.X-VTEX-VChnnl-Version ) {
                set req.http.X-VTEX-VChnnl-Version = req.http.X-VTEX-VChnnl-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-VChnnl-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app VChnnl";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/api/middleware$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/middleware$";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_beta";
                        set req.backend = VChnnl_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.2" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.2, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/api/middleware/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/middleware/";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_beta";
                        set req.backend = VChnnl_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.2" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.2, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/admin/middleware$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/middleware$";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_beta";
                        set req.backend = VChnnl_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.2" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.2, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/admin/middleware/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/middleware/";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_beta";
                        set req.backend = VChnnl_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.2" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.2, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_02_00_beta";
                        set req.backend = VChnnl_00_02_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_02_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "00.02.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app VChnnl";
            }
            
            #----------------------------------------------
            # Choice of version for app a
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_a_version=" ) {
              set req.http.X-VTEX-a-Version  = regsuball( req.url, "^.*?vtex_a_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-a-Version;
              set req.http.X-VTEX-Explicit-a-Version = req.http.X-VTEX-a-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-a-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-a-Version;
              set req.http.X-VTEX-Explicit-a-Version = req.http.X-VTEX-a-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_a_version=" ) {
              set req.http.X-VTEX-a-Version = regsuball( req.http.Cookie, "^.*?vtex_a_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-a-Version;
              set req.http.X-VTEX-Explicit-a-Version = req.http.X-VTEX-a-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_a_version_map_20130515=" ) {
                set req.http.X-VTEX-a-map_20130515-Version  = regsuball( req.url, "^.*?vtex_a_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-a-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-a-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-a-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_a_version_map_20130515=" ) {
                set req.http.X-VTEX-a-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_a_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-a-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-a-Version isn't present!
              if ( ! req.http.X-VTEX-a-Version ) {
                set req.http.X-VTEX-a-Version = req.http.X-VTEX-a-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-a-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app a";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/admin/a$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/a$";
                      
                    if ( req.http.X-VTEX-a-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered a_01_00_00_beta";
                        set req.backend = a_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                        set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "a";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/admin/a/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/a/";
                      
                    if ( req.http.X-VTEX-a-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered a_01_00_00_beta";
                        set req.backend = a_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                        set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "a";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app a";
            }
            
            #----------------------------------------------
            # Choice of version for app admin
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_admin_version=" ) {
              set req.http.X-VTEX-admin-Version  = regsuball( req.url, "^.*?vtex_admin_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-admin-Version;
              set req.http.X-VTEX-Explicit-admin-Version = req.http.X-VTEX-admin-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-admin-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-admin-Version;
              set req.http.X-VTEX-Explicit-admin-Version = req.http.X-VTEX-admin-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_admin_version=" ) {
              set req.http.X-VTEX-admin-Version = regsuball( req.http.Cookie, "^.*?vtex_admin_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-admin-Version;
              set req.http.X-VTEX-Explicit-admin-Version = req.http.X-VTEX-admin-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_admin_version_map_20130515=" ) {
                set req.http.X-VTEX-admin-map_20130515-Version  = regsuball( req.url, "^.*?vtex_admin_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-admin-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-admin-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-admin-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_admin_version_map_20130515=" ) {
                set req.http.X-VTEX-admin-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_admin_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-admin-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-admin-Version isn't present!
              if ( ! req.http.X-VTEX-admin-Version ) {
                set req.http.X-VTEX-admin-Version = req.http.X-VTEX-admin-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-admin-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app admin";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 8 && req.url ~ "(?i)^/admin$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin$";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_beta";
                        set req.backend = admin_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "7";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 8 && req.url ~ "(?i)^/admin/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_beta";
                        set req.backend = admin_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "7";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/admin/api$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/api$";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_beta";
                        set req.backend = admin_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/admin/api/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/api/";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_beta";
                        set req.backend = admin_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app admin";
            }
            
            #----------------------------------------------
            # Choice of version for app chk
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_chk_version=" ) {
              set req.http.X-VTEX-chk-Version  = regsuball( req.url, "^.*?vtex_chk_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-chk-Version;
              set req.http.X-VTEX-Explicit-chk-Version = req.http.X-VTEX-chk-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-chk-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-chk-Version;
              set req.http.X-VTEX-Explicit-chk-Version = req.http.X-VTEX-chk-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_chk_version=" ) {
              set req.http.X-VTEX-chk-Version = regsuball( req.http.Cookie, "^.*?vtex_chk_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-chk-Version;
              set req.http.X-VTEX-Explicit-chk-Version = req.http.X-VTEX-chk-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_chk_version_map_20130515=" ) {
                set req.http.X-VTEX-chk-map_20130515-Version  = regsuball( req.url, "^.*?vtex_chk_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-chk-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-chk-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-chk-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_chk_version_map_20130515=" ) {
                set req.http.X-VTEX-chk-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_chk_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-chk-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-chk-Version isn't present!
              if ( ! req.http.X-VTEX-chk-Version ) {
                set req.http.X-VTEX-chk-Version = req.http.X-VTEX-chk-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-chk-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app chk";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 11 && req.url ~ "(?i)^/checkout$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /checkout$";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_beta";
                        set req.backend = chk_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "10";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 11 && req.url ~ "(?i)^/checkout/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /checkout/";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_beta";
                        set req.backend = chk_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "10";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/api/checkout$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/checkout$";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_beta";
                        set req.backend = chk_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/api/checkout/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/checkout/";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_beta";
                        set req.backend = chk_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app chk";
            }
            
            #----------------------------------------------
            # Choice of version for app ffm
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_ffm_version=" ) {
              set req.http.X-VTEX-ffm-Version  = regsuball( req.url, "^.*?vtex_ffm_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-ffm-Version;
              set req.http.X-VTEX-Explicit-ffm-Version = req.http.X-VTEX-ffm-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-ffm-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-ffm-Version;
              set req.http.X-VTEX-Explicit-ffm-Version = req.http.X-VTEX-ffm-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_ffm_version=" ) {
              set req.http.X-VTEX-ffm-Version = regsuball( req.http.Cookie, "^.*?vtex_ffm_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-ffm-Version;
              set req.http.X-VTEX-Explicit-ffm-Version = req.http.X-VTEX-ffm-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_ffm_version_map_20130515=" ) {
                set req.http.X-VTEX-ffm-map_20130515-Version  = regsuball( req.url, "^.*?vtex_ffm_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-ffm-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-ffm-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-ffm-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_ffm_version_map_20130515=" ) {
                set req.http.X-VTEX-ffm-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_ffm_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-ffm-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-ffm-Version isn't present!
              if ( ! req.http.X-VTEX-ffm-Version ) {
                set req.http.X-VTEX-ffm-Version = req.http.X-VTEX-ffm-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-ffm-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app ffm";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/fulfillment/pvt$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/fulfillment/pvt$";
                      
                    if ( req.http.X-VTEX-ffm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ffm_01_00_00_beta";
                        set req.backend = ffm_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                        set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ffm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/fulfillment/pvt/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/fulfillment/pvt/";
                      
                    if ( req.http.X-VTEX-ffm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ffm_01_00_00_beta";
                        set req.backend = ffm_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                        set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ffm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app ffm";
            }
            
            #----------------------------------------------
            # Choice of version for app lmngr
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_lmngr_version=" ) {
              set req.http.X-VTEX-lmngr-Version  = regsuball( req.url, "^.*?vtex_lmngr_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-lmngr-Version;
              set req.http.X-VTEX-Explicit-lmngr-Version = req.http.X-VTEX-lmngr-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-lmngr-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-lmngr-Version;
              set req.http.X-VTEX-Explicit-lmngr-Version = req.http.X-VTEX-lmngr-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_lmngr_version=" ) {
              set req.http.X-VTEX-lmngr-Version = regsuball( req.http.Cookie, "^.*?vtex_lmngr_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-lmngr-Version;
              set req.http.X-VTEX-Explicit-lmngr-Version = req.http.X-VTEX-lmngr-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_lmngr_version_map_20130515=" ) {
                set req.http.X-VTEX-lmngr-map_20130515-Version  = regsuball( req.url, "^.*?vtex_lmngr_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-lmngr-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-lmngr-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-lmngr-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_lmngr_version_map_20130515=" ) {
                set req.http.X-VTEX-lmngr-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_lmngr_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-lmngr-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-lmngr-Version isn't present!
              if ( ! req.http.X-VTEX-lmngr-Version ) {
                set req.http.X-VTEX-lmngr-Version = req.http.X-VTEX-lmngr-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-lmngr-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app lmngr";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin-topbar$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin-topbar$";
                      
                    if ( req.http.X-VTEX-lmngr-Version == "3.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.1, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-lmngr-Version == "3.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.0, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin-topbar/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin-topbar/";
                      
                    if ( req.http.X-VTEX-lmngr-Version == "3.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.1, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-lmngr-Version == "3.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.0, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/license-manager$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/license-manager$";
                      
                    if ( req.http.X-VTEX-lmngr-Version == "3.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.1, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-lmngr-Version == "3.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.0, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/license-manager/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/license-manager/";
                      
                    if ( req.http.X-VTEX-lmngr-Version == "3.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.1, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-lmngr-Version == "3.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.0, delivered lmngr_03_01_00_beta";
                        set req.backend = lmngr_03_01_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app lmngr";
            }
            
            #----------------------------------------------
            # Choice of version for app logist
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_logist_version=" ) {
              set req.http.X-VTEX-logist-Version  = regsuball( req.url, "^.*?vtex_logist_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-logist-Version;
              set req.http.X-VTEX-Explicit-logist-Version = req.http.X-VTEX-logist-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-logist-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-logist-Version;
              set req.http.X-VTEX-Explicit-logist-Version = req.http.X-VTEX-logist-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_logist_version=" ) {
              set req.http.X-VTEX-logist-Version = regsuball( req.http.Cookie, "^.*?vtex_logist_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-logist-Version;
              set req.http.X-VTEX-Explicit-logist-Version = req.http.X-VTEX-logist-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_logist_version_map_20130515=" ) {
                set req.http.X-VTEX-logist-map_20130515-Version  = regsuball( req.url, "^.*?vtex_logist_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-logist-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-logist-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-logist-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_logist_version_map_20130515=" ) {
                set req.http.X-VTEX-logist-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_logist_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-logist-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-logist-Version isn't present!
              if ( ! req.http.X-VTEX-logist-Version ) {
                set req.http.X-VTEX-logist-Version = req.http.X-VTEX-logist-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-logist-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app logist";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 16 && req.url ~ "(?i)^/api/logistics$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/logistics$";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_beta";
                        set req.backend = logist_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "15";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 16 && req.url ~ "(?i)^/api/logistics/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/logistics/";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_beta";
                        set req.backend = logist_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "15";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/admin/logistics$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/logistics$";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_beta";
                        set req.backend = logist_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/admin/logistics/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/logistics/";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_beta";
                        set req.backend = logist_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app logist";
            }
            
            #----------------------------------------------
            # Choice of version for app omsapi
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_omsapi_version=" ) {
              set req.http.X-VTEX-omsapi-Version  = regsuball( req.url, "^.*?vtex_omsapi_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-omsapi-Version;
              set req.http.X-VTEX-Explicit-omsapi-Version = req.http.X-VTEX-omsapi-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-omsapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-omsapi-Version;
              set req.http.X-VTEX-Explicit-omsapi-Version = req.http.X-VTEX-omsapi-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_omsapi_version=" ) {
              set req.http.X-VTEX-omsapi-Version = regsuball( req.http.Cookie, "^.*?vtex_omsapi_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-omsapi-Version;
              set req.http.X-VTEX-Explicit-omsapi-Version = req.http.X-VTEX-omsapi-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_omsapi_version_map_20130515=" ) {
                set req.http.X-VTEX-omsapi-map_20130515-Version  = regsuball( req.url, "^.*?vtex_omsapi_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-omsapi-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-omsapi-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-omsapi-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_omsapi_version_map_20130515=" ) {
                set req.http.X-VTEX-omsapi-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_omsapi_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-omsapi-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-omsapi-Version isn't present!
              if ( ! req.http.X-VTEX-omsapi-Version ) {
                set req.http.X-VTEX-omsapi-Version = req.http.X-VTEX-omsapi-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-omsapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app omsapi";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/oms$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/oms$";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_beta";
                        set req.backend = omsapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/oms/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/oms/";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_beta";
                        set req.backend = omsapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/admin/checkout$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/checkout$";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_beta";
                        set req.backend = omsapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/admin/checkout/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/checkout/";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_beta";
                        set req.backend = omsapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app omsapi";
            }
            
            #----------------------------------------------
            # Choice of version for app portal
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_portal_version=" ) {
              set req.http.X-VTEX-portal-Version  = regsuball( req.url, "^.*?vtex_portal_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-portal-Version;
              set req.http.X-VTEX-Explicit-portal-Version = req.http.X-VTEX-portal-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-portal-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-portal-Version;
              set req.http.X-VTEX-Explicit-portal-Version = req.http.X-VTEX-portal-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_portal_version=" ) {
              set req.http.X-VTEX-portal-Version = regsuball( req.http.Cookie, "^.*?vtex_portal_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-portal-Version;
              set req.http.X-VTEX-Explicit-portal-Version = req.http.X-VTEX-portal-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_portal_version_map_20130515=" ) {
                set req.http.X-VTEX-portal-map_20130515-Version  = regsuball( req.url, "^.*?vtex_portal_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-portal-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-portal-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-portal-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_portal_version_map_20130515=" ) {
                set req.http.X-VTEX-portal-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_portal_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-portal-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-portal-Version isn't present!
              if ( ! req.http.X-VTEX-portal-Version ) {
                set req.http.X-VTEX-portal-Version = req.http.X-VTEX-portal-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-portal-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app portal";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 2 && req.url ~ "(?i)^$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at $";
                      
                    if ( req.http.X-VTEX-portal-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered portal_01_00_00_beta";
                        set req.backend = portal_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/";
                        set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "portal";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "1";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 2 && req.url ~ "(?i)^/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /";
                      
                    if ( req.http.X-VTEX-portal-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered portal_01_00_00_beta";
                        set req.backend = portal_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/";
                        set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "portal";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "1";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app portal";
            }
            
            #----------------------------------------------
            # Choice of version for app prtlv2
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_prtlv2_version=" ) {
              set req.http.X-VTEX-prtlv2-Version  = regsuball( req.url, "^.*?vtex_prtlv2_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-prtlv2-Version;
              set req.http.X-VTEX-Explicit-prtlv2-Version = req.http.X-VTEX-prtlv2-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-prtlv2-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-prtlv2-Version;
              set req.http.X-VTEX-Explicit-prtlv2-Version = req.http.X-VTEX-prtlv2-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_prtlv2_version=" ) {
              set req.http.X-VTEX-prtlv2-Version = regsuball( req.http.Cookie, "^.*?vtex_prtlv2_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-prtlv2-Version;
              set req.http.X-VTEX-Explicit-prtlv2-Version = req.http.X-VTEX-prtlv2-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_prtlv2_version_map_20130515=" ) {
                set req.http.X-VTEX-prtlv2-map_20130515-Version  = regsuball( req.url, "^.*?vtex_prtlv2_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-prtlv2-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-prtlv2-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-prtlv2-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_prtlv2_version_map_20130515=" ) {
                set req.http.X-VTEX-prtlv2-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_prtlv2_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-prtlv2-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-prtlv2-Version isn't present!
              if ( ! req.http.X-VTEX-prtlv2-Version ) {
                set req.http.X-VTEX-prtlv2-Version = req.http.X-VTEX-prtlv2-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-prtlv2-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app prtlv2";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 13 && req.url ~ "(?i)^/api/portal$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/portal$";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_beta";
                        set req.backend = prtlv2_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "12";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 13 && req.url ~ "(?i)^/api/portal/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/portal/";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_beta";
                        set req.backend = prtlv2_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "12";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin/portal$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/portal$";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_beta";
                        set req.backend = prtlv2_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin/portal/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/portal/";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_beta";
                        set req.backend = prtlv2_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app prtlv2";
            }
            
            #----------------------------------------------
            # Choice of version for app ptlapi
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_ptlapi_version=" ) {
              set req.http.X-VTEX-ptlapi-Version  = regsuball( req.url, "^.*?vtex_ptlapi_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-ptlapi-Version;
              set req.http.X-VTEX-Explicit-ptlapi-Version = req.http.X-VTEX-ptlapi-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-ptlapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-ptlapi-Version;
              set req.http.X-VTEX-Explicit-ptlapi-Version = req.http.X-VTEX-ptlapi-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_ptlapi_version=" ) {
              set req.http.X-VTEX-ptlapi-Version = regsuball( req.http.Cookie, "^.*?vtex_ptlapi_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-ptlapi-Version;
              set req.http.X-VTEX-Explicit-ptlapi-Version = req.http.X-VTEX-ptlapi-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_ptlapi_version_map_20130515=" ) {
                set req.http.X-VTEX-ptlapi-map_20130515-Version  = regsuball( req.url, "^.*?vtex_ptlapi_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-ptlapi-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-ptlapi-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-ptlapi-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_ptlapi_version_map_20130515=" ) {
                set req.http.X-VTEX-ptlapi-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_ptlapi_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-ptlapi-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-ptlapi-Version isn't present!
              if ( ! req.http.X-VTEX-ptlapi-Version ) {
                set req.http.X-VTEX-ptlapi-Version = req.http.X-VTEX-ptlapi-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-ptlapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app ptlapi";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/api/addon$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/addon$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/api/addon/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/addon/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/api/installments$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/installments$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/api/installments/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/installments/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 21 && req.url ~ "(?i)^/api/catalog_system$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/catalog_system$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "20";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 21 && req.url ~ "(?i)^/api/catalog_system/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/catalog_system/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "20";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/gift-certificate$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/gift-certificate$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/gift-certificate/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/gift-certificate/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_beta";
                        set req.backend = ptlapi_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app ptlapi";
            }
            
            #----------------------------------------------
            # Choice of version for app rnbwp
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_rnbwp_version=" ) {
              set req.http.X-VTEX-rnbwp-Version  = regsuball( req.url, "^.*?vtex_rnbwp_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-rnbwp-Version;
              set req.http.X-VTEX-Explicit-rnbwp-Version = req.http.X-VTEX-rnbwp-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-rnbwp-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-rnbwp-Version;
              set req.http.X-VTEX-Explicit-rnbwp-Version = req.http.X-VTEX-rnbwp-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_rnbwp_version=" ) {
              set req.http.X-VTEX-rnbwp-Version = regsuball( req.http.Cookie, "^.*?vtex_rnbwp_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-rnbwp-Version;
              set req.http.X-VTEX-Explicit-rnbwp-Version = req.http.X-VTEX-rnbwp-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_rnbwp_version_map_20130515=" ) {
                set req.http.X-VTEX-rnbwp-map_20130515-Version  = regsuball( req.url, "^.*?vtex_rnbwp_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-rnbwp-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-rnbwp-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-rnbwp-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_rnbwp_version_map_20130515=" ) {
                set req.http.X-VTEX-rnbwp-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_rnbwp_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-rnbwp-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-rnbwp-Version isn't present!
              if ( ! req.http.X-VTEX-rnbwp-Version ) {
                set req.http.X-VTEX-rnbwp-Version = req.http.X-VTEX-rnbwp-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-rnbwp-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app rnbwp";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/rnb$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/rnb$";
                      
                    if ( req.http.X-VTEX-rnbwp-Version == "2.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 2.0, delivered rnbwp_02_00_01_beta";
                        set req.backend = rnbwp_02_00_01_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                        set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                        set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/rnb/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/rnb/";
                      
                    if ( req.http.X-VTEX-rnbwp-Version == "2.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 2.0, delivered rnbwp_02_00_01_beta";
                        set req.backend = rnbwp_02_00_01_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                        set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                        set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app rnbwp";
            }
            
            #----------------------------------------------
            # Choice of version for app sno
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_sno_version=" ) {
              set req.http.X-VTEX-sno-Version  = regsuball( req.url, "^.*?vtex_sno_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-sno-Version;
              set req.http.X-VTEX-Explicit-sno-Version = req.http.X-VTEX-sno-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-sno-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-sno-Version;
              set req.http.X-VTEX-Explicit-sno-Version = req.http.X-VTEX-sno-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_sno_version=" ) {
              set req.http.X-VTEX-sno-Version = regsuball( req.http.Cookie, "^.*?vtex_sno_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-sno-Version;
              set req.http.X-VTEX-Explicit-sno-Version = req.http.X-VTEX-sno-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_sno_version_map_20130515=" ) {
                set req.http.X-VTEX-sno-map_20130515-Version  = regsuball( req.url, "^.*?vtex_sno_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-sno-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-sno-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-sno-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_sno_version_map_20130515=" ) {
                set req.http.X-VTEX-sno-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_sno_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-sno-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-sno-Version isn't present!
              if ( ! req.http.X-VTEX-sno-Version ) {
                set req.http.X-VTEX-sno-Version = req.http.X-VTEX-sno-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-sno-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app sno";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/shipping-tracker$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/shipping-tracker$";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_beta";
                        set req.backend = sno_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/shipping-tracker/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/shipping-tracker/";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_beta";
                        set req.backend = sno_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 25 && req.url ~ "(?i)^/admin/shipping-tracker$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/shipping-tracker$";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_beta";
                        set req.backend = sno_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "24";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 25 && req.url ~ "(?i)^/admin/shipping-tracker/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/shipping-tracker/";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_beta";
                        set req.backend = sno_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "24";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app sno";
            }
            
            #----------------------------------------------
            # Choice of version for app svc
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_svc_version=" ) {
              set req.http.X-VTEX-svc-Version  = regsuball( req.url, "^.*?vtex_svc_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-svc-Version;
              set req.http.X-VTEX-Explicit-svc-Version = req.http.X-VTEX-svc-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-svc-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-svc-Version;
              set req.http.X-VTEX-Explicit-svc-Version = req.http.X-VTEX-svc-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_svc_version=" ) {
              set req.http.X-VTEX-svc-Version = regsuball( req.http.Cookie, "^.*?vtex_svc_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-svc-Version;
              set req.http.X-VTEX-Explicit-svc-Version = req.http.X-VTEX-svc-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_svc_version_map_20130515=" ) {
                set req.http.X-VTEX-svc-map_20130515-Version  = regsuball( req.url, "^.*?vtex_svc_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-svc-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-svc-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-svc-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_svc_version_map_20130515=" ) {
                set req.http.X-VTEX-svc-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_svc_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-svc-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-svc-Version isn't present!
              if ( ! req.http.X-VTEX-svc-Version ) {
                set req.http.X-VTEX-svc-Version = req.http.X-VTEX-svc-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-svc-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app svc";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/adminwebservice$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /adminwebservice$";
                      
                    if ( req.http.X-VTEX-svc-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered svc_01_00_00_beta";
                        set req.backend = svc_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                        set req.http.X-VTEX-Router-Backend-Director = "svc_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "svc";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/adminwebservice/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /adminwebservice/";
                      
                    if ( req.http.X-VTEX-svc-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered svc_01_00_00_beta";
                        set req.backend = svc_01_00_00_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                        set req.http.X-VTEX-Router-Backend-Director = "svc_01_00_00_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "svc";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app svc";
            }
            
            #----------------------------------------------
            # Choice of version for app vlm
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_vlm_version=" ) {
              set req.http.X-VTEX-vlm-Version  = regsuball( req.url, "^.*?vtex_vlm_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-vlm-Version;
              set req.http.X-VTEX-Explicit-vlm-Version = req.http.X-VTEX-vlm-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-vlm-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-vlm-Version;
              set req.http.X-VTEX-Explicit-vlm-Version = req.http.X-VTEX-vlm-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_vlm_version=" ) {
              set req.http.X-VTEX-vlm-Version = regsuball( req.http.Cookie, "^.*?vtex_vlm_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-vlm-Version;
              set req.http.X-VTEX-Explicit-vlm-Version = req.http.X-VTEX-vlm-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_vlm_version_map_20130515=" ) {
                set req.http.X-VTEX-vlm-map_20130515-Version  = regsuball( req.url, "^.*?vtex_vlm_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-vlm-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-vlm-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-vlm-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_vlm_version_map_20130515=" ) {
                set req.http.X-VTEX-vlm-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_vlm_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-vlm-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-vlm-Version isn't present!
              if ( ! req.http.X-VTEX-vlm-Version ) {
                set req.http.X-VTEX-vlm-Version = req.http.X-VTEX-vlm-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-vlm-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app vlm";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin-topbar$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin-topbar$";
                      
                    if ( req.http.X-VTEX-vlm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered vlm_01_00_02_beta";
                        set req.backend = vlm_01_00_02_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                        set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                        set req.http.X-VTEX-Router-Backend-App = "vlm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin-topbar/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin-topbar/";
                      
                    if ( req.http.X-VTEX-vlm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered vlm_01_00_02_beta";
                        set req.backend = vlm_01_00_02_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin-topbar/";
                        set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                        set req.http.X-VTEX-Router-Backend-App = "vlm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/license-manager$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/license-manager$";
                      
                    if ( req.http.X-VTEX-vlm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered vlm_01_00_02_beta";
                        set req.backend = vlm_01_00_02_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                        set req.http.X-VTEX-Router-Backend-App = "vlm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/license-manager/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/license-manager/";
                      
                    if ( req.http.X-VTEX-vlm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered vlm_01_00_02_beta";
                        set req.backend = vlm_01_00_02_beta;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "vlm_01_00_02_beta";
                        set req.http.X-VTEX-Router-Backend-Environment = "beta";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.02";
                        set req.http.X-VTEX-Router-Backend-App = "vlm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app vlm";
            }
            
            if (req.url ~ "(?i)^/admin/a/integration/") {
               set req.backend = integracao17;
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // manual backend override: integracao";
                set req.http.X-VTEX-Router-Backend-Director = "integracao";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "n/a";
                set req.http.X-VTEX-Router-Backend-App = "n/a";
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out of vcl_recv with pass";
            }
            if (req.url ~ "(?i)^/admin/a/integration$") {
               set req.backend = integracao17;
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // manual backend override: integracao";
                set req.http.X-VTEX-Router-Backend-Director = "integracao";
                set req.http.X-VTEX-Router-Backend-Environment = "beta";
                set req.http.X-VTEX-Router-Backend-Version = "n/a";
                set req.http.X-VTEX-Router-Backend-App = "n/a";
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out of vcl_recv with pass";
            }
            
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // leaving beta";
        } 
        elsif ( req.http.X-VTEX-Environment == "stable" ) {
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // entering stable";
              
            if ( req.url ~ "(?i)^$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /, source: automagically discovered, highest version available, app: portal, version: 01.00.00, backend: portal_01_00_00_stable";
                set req.backend = portal_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/";
                set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "portal";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "1";
            } 
            if ( req.url ~ "(?i)^/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /, source: automagically discovered, highest version available, app: portal, version: 01.00.00, backend: portal_01_00_00_stable";
                set req.backend = portal_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/";
                set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "portal";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "1";
            } 
            if ( req.url ~ "(?i)^/admin$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_stable";
                set req.backend = admin_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "7";
            } 
            if ( req.url ~ "(?i)^/admin/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_stable";
                set req.backend = admin_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "7";
            } 
            if ( req.url ~ "(?i)^/admin/a$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/a/, source: automagically discovered, highest version available, app: a, version: 01.00.00, backend: a_01_00_00_stable";
                set req.backend = a_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "a";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/admin/a/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/a/, source: automagically discovered, highest version available, app: a, version: 01.00.00, backend: a_01_00_00_stable";
                set req.backend = a_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "a";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/oms$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/oms/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_stable";
                set req.backend = omsapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/oms/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/oms/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_stable";
                set req.backend = omsapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/rnb$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/rnb/, source: automagically discovered, highest version available, app: rnbwp, version: 02.00.01, backend: rnbwp_02_00_01_stable";
                set req.backend = rnbwp_02_00_01_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/api/rnb/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/rnb/, source: automagically discovered, highest version available, app: rnbwp, version: 02.00.01, backend: rnbwp_02_00_01_stable";
                set req.backend = rnbwp_02_00_01_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "9";
            } 
            if ( req.url ~ "(?i)^/checkout$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_stable";
                set req.backend = chk_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "10";
            } 
            if ( req.url ~ "(?i)^/checkout/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_stable";
                set req.backend = chk_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "10";
            } 
            if ( req.url ~ "(?i)^/admin/api$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/api/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_stable";
                set req.backend = admin_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/admin/api/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/api/, source: automagically discovered, highest version available, app: admin, version: 01.00.00, backend: admin_01_00_00_stable";
                set req.backend = admin_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admin";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/api/addon$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/addon/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/api/addon/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/addon/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "11";
            } 
            if ( req.url ~ "(?i)^/api/portal$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_stable";
                set req.backend = prtlv2_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "12";
            } 
            if ( req.url ~ "(?i)^/api/portal/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_stable";
                set req.backend = prtlv2_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "12";
            } 
            if ( req.url ~ "(?i)^/admin/portal$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_stable";
                set req.backend = prtlv2_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/admin/portal/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/portal/, source: automagically discovered, highest version available, app: prtlv2, version: 01.00.00, backend: prtlv2_01_00_00_stable";
                set req.backend = prtlv2_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/checkout$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_stable";
                set req.backend = chk_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/checkout/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/checkout/, source: automagically discovered, highest version available, app: chk, version: 01.00.00, backend: chk_01_00_00_stable";
                set req.backend = chk_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "chk";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/workflow$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/workflow/, source: automagically discovered, highest version available, app: wkfapi, version: 01.00.00, backend: wkfapi_01_00_00_stable";
                set req.backend = wkfapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/workflow/";
                set req.http.X-VTEX-Router-Backend-Director = "wkfapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "wkfapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/workflow/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/workflow/, source: automagically discovered, highest version available, app: wkfapi, version: 01.00.00, backend: wkfapi_01_00_00_stable";
                set req.backend = wkfapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/workflow/";
                set req.http.X-VTEX-Router-Backend-Director = "wkfapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "wkfapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "14";
            } 
            if ( req.url ~ "(?i)^/api/logistics$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_stable";
                set req.backend = logist_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "15";
            } 
            if ( req.url ~ "(?i)^/api/logistics/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_stable";
                set req.backend = logist_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "15";
            } 
            if ( req.url ~ "(?i)^/admin/checkout$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/checkout/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_stable";
                set req.backend = omsapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/admin/checkout/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/checkout/, source: automagically discovered, highest version available, app: omsapi, version: 01.00.00, backend: omsapi_01_00_00_stable";
                set req.backend = omsapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "omsapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/api/middleware$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_stable";
                set req.backend = VChnnl_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/api/middleware/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_stable";
                set req.backend = VChnnl_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "16";
            } 
            if ( req.url ~ "(?i)^/admin/logistics$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_stable";
                set req.backend = logist_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/admin/logistics/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/logistics/, source: automagically discovered, highest version available, app: logist, version: 01.00.00, backend: logist_01_00_00_stable";
                set req.backend = logist_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "logist";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/adminwebservice$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /adminwebservice/, source: automagically discovered, highest version available, app: admsvc, version: 01.00.00, backend: admsvc_01_00_00_stable";
                set req.backend = admsvc_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                set req.http.X-VTEX-Router-Backend-Director = "admsvc_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admsvc";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/adminwebservice/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /adminwebservice/, source: automagically discovered, highest version available, app: admsvc, version: 01.00.00, backend: admsvc_01_00_00_stable";
                set req.backend = admsvc_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                set req.http.X-VTEX-Router-Backend-Director = "admsvc_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "admsvc";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "17";
            } 
            if ( req.url ~ "(?i)^/admin/middleware$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_stable";
                set req.backend = VChnnl_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/admin/middleware/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/middleware/, source: automagically discovered, highest version available, app: VChnnl, version: 01.00.00, backend: VChnnl_01_00_00_stable";
                set req.backend = VChnnl_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/api/installments$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/installments/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/api/installments/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/installments/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "18";
            } 
            if ( req.url ~ "(?i)^/api/catalog_system$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/catalog_system/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "20";
            } 
            if ( req.url ~ "(?i)^/api/catalog_system/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/catalog_system/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "20";
            } 
            if ( req.url ~ "(?i)^/api/profile-system$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/profile-system/, source: automagically discovered, highest version available, app: pfsys, version: 05.03.00, backend: pfsys_05_03_00_stable";
                set req.backend = pfsys_05_03_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_03_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "05.03.00";
                set req.http.X-VTEX-Router-Backend-App = "pfsys";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "20";
            } 
            if ( req.url ~ "(?i)^/api/profile-system/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/profile-system/, source: automagically discovered, highest version available, app: pfsys, version: 05.03.00, backend: pfsys_05_03_00_stable";
                set req.backend = pfsys_05_03_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_03_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "05.03.00";
                set req.http.X-VTEX-Router-Backend-App = "pfsys";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "20";
            } 
            if ( req.url ~ "(?i)^/api/fulfillment/pvt$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/fulfillment/pvt/, source: automagically discovered, highest version available, app: ffm, version: 01.00.00, backend: ffm_01_00_00_stable";
                set req.backend = ffm_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ffm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/fulfillment/pvt/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/fulfillment/pvt/, source: automagically discovered, highest version available, app: ffm, version: 01.00.00, backend: ffm_01_00_00_stable";
                set req.backend = ffm_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ffm";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/license-manager$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/license-manager/, source: automagically discovered, highest version available, app: lmngr, version: 03.01.00, backend: lmngr_03_01_00_stable";
                set req.backend = lmngr_03_01_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                set req.http.X-VTEX-Router-Backend-App = "lmngr";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/license-manager/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/license-manager/, source: automagically discovered, highest version available, app: lmngr, version: 03.01.00, backend: lmngr_03_01_00_stable";
                set req.backend = lmngr_03_01_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                set req.http.X-VTEX-Router-Backend-App = "lmngr";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "21";
            } 
            if ( req.url ~ "(?i)^/api/gift-certificate$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/gift-certificate/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/api/gift-certificate/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/gift-certificate/, source: automagically discovered, highest version available, app: ptlapi, version: 01.00.00, backend: ptlapi_01_00_00_stable";
                set req.backend = ptlapi_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/api/shipping-tracker$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_stable";
                set req.backend = sno_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/api/shipping-tracker/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /api/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_stable";
                set req.backend = sno_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "22";
            } 
            if ( req.url ~ "(?i)^/admin/shipping-tracker$" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_stable";
                set req.backend = sno_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "24";
            } 
            if ( req.url ~ "(?i)^/admin/shipping-tracker/" ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // environment defaults, path: /admin/shipping-tracker/, source: automagically discovered, highest version available, app: sno, version: 01.00.00, backend: sno_01_00_00_stable";
                set req.backend = sno_01_00_00_stable;
                set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                set req.http.X-VTEX-Router-Backend-App = "sno";
                set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                 
                set req.http.X-VTEX-Router-Last-Match-Length = "24";
            } 
             
             
            #----------------------------------------------
            # Choice of version for app VChnnl
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_VChnnl_version=" ) {
              set req.http.X-VTEX-VChnnl-Version  = regsuball( req.url, "^.*?vtex_VChnnl_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-VChnnl-Version;
              set req.http.X-VTEX-Explicit-VChnnl-Version = req.http.X-VTEX-VChnnl-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-VChnnl-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-VChnnl-Version;
              set req.http.X-VTEX-Explicit-VChnnl-Version = req.http.X-VTEX-VChnnl-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_VChnnl_version=" ) {
              set req.http.X-VTEX-VChnnl-Version = regsuball( req.http.Cookie, "^.*?vtex_VChnnl_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-VChnnl-Version;
              set req.http.X-VTEX-Explicit-VChnnl-Version = req.http.X-VTEX-VChnnl-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_VChnnl_version_map_20130515=" ) {
                set req.http.X-VTEX-VChnnl-map_20130515-Version  = regsuball( req.url, "^.*?vtex_VChnnl_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-VChnnl-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-VChnnl-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-VChnnl-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_VChnnl_version_map_20130515=" ) {
                set req.http.X-VTEX-VChnnl-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_VChnnl_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-VChnnl-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-VChnnl-Version isn't present!
              if ( ! req.http.X-VTEX-VChnnl-Version ) {
                set req.http.X-VTEX-VChnnl-Version = req.http.X-VTEX-VChnnl-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-VChnnl-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app VChnnl";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/api/middleware$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/middleware$";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_stable";
                        set req.backend = VChnnl_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/api/middleware/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/middleware/";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_stable";
                        set req.backend = VChnnl_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/admin/middleware$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/middleware$";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_stable";
                        set req.backend = VChnnl_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/admin/middleware/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/middleware/";
                      
                    if ( req.http.X-VTEX-VChnnl-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered VChnnl_01_00_00_stable";
                        set req.backend = VChnnl_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.1, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-VChnnl-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered VChnnl_00_01_00_stable";
                        set req.backend = VChnnl_00_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/middleware/";
                        set req.http.X-VTEX-Router-Backend-Director = "VChnnl_00_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "VChnnl";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app VChnnl";
            }
            
            #----------------------------------------------
            # Choice of version for app a
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_a_version=" ) {
              set req.http.X-VTEX-a-Version  = regsuball( req.url, "^.*?vtex_a_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-a-Version;
              set req.http.X-VTEX-Explicit-a-Version = req.http.X-VTEX-a-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-a-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-a-Version;
              set req.http.X-VTEX-Explicit-a-Version = req.http.X-VTEX-a-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_a_version=" ) {
              set req.http.X-VTEX-a-Version = regsuball( req.http.Cookie, "^.*?vtex_a_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-a-Version;
              set req.http.X-VTEX-Explicit-a-Version = req.http.X-VTEX-a-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_a_version_map_20130515=" ) {
                set req.http.X-VTEX-a-map_20130515-Version  = regsuball( req.url, "^.*?vtex_a_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-a-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-a-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-a-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_a_version_map_20130515=" ) {
                set req.http.X-VTEX-a-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_a_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-a-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-a-Version isn't present!
              if ( ! req.http.X-VTEX-a-Version ) {
                set req.http.X-VTEX-a-Version = req.http.X-VTEX-a-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-a-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app a";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/admin/a$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/a$";
                      
                    if ( req.http.X-VTEX-a-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered a_01_00_00_stable";
                        set req.backend = a_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                        set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "a";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/admin/a/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/a/";
                      
                    if ( req.http.X-VTEX-a-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered a_01_00_00_stable";
                        set req.backend = a_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/a/";
                        set req.http.X-VTEX-Router-Backend-Director = "a_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "a";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app a";
            }
            
            #----------------------------------------------
            # Choice of version for app admin
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_admin_version=" ) {
              set req.http.X-VTEX-admin-Version  = regsuball( req.url, "^.*?vtex_admin_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-admin-Version;
              set req.http.X-VTEX-Explicit-admin-Version = req.http.X-VTEX-admin-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-admin-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-admin-Version;
              set req.http.X-VTEX-Explicit-admin-Version = req.http.X-VTEX-admin-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_admin_version=" ) {
              set req.http.X-VTEX-admin-Version = regsuball( req.http.Cookie, "^.*?vtex_admin_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-admin-Version;
              set req.http.X-VTEX-Explicit-admin-Version = req.http.X-VTEX-admin-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_admin_version_map_20130515=" ) {
                set req.http.X-VTEX-admin-map_20130515-Version  = regsuball( req.url, "^.*?vtex_admin_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-admin-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-admin-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-admin-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_admin_version_map_20130515=" ) {
                set req.http.X-VTEX-admin-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_admin_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-admin-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-admin-Version isn't present!
              if ( ! req.http.X-VTEX-admin-Version ) {
                set req.http.X-VTEX-admin-Version = req.http.X-VTEX-admin-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-admin-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app admin";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 8 && req.url ~ "(?i)^/admin$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin$";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_stable";
                        set req.backend = admin_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "7";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 8 && req.url ~ "(?i)^/admin/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_stable";
                        set req.backend = admin_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "7";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/admin/api$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/api$";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_stable";
                        set req.backend = admin_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/admin/api/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/api/";
                      
                    if ( req.http.X-VTEX-admin-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admin_01_00_00_stable";
                        set req.backend = admin_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/api/";
                        set req.http.X-VTEX-Router-Backend-Director = "admin_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admin";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app admin";
            }
            
            #----------------------------------------------
            # Choice of version for app admsvc
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_admsvc_version=" ) {
              set req.http.X-VTEX-admsvc-Version  = regsuball( req.url, "^.*?vtex_admsvc_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-admsvc-Version;
              set req.http.X-VTEX-Explicit-admsvc-Version = req.http.X-VTEX-admsvc-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-admsvc-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-admsvc-Version;
              set req.http.X-VTEX-Explicit-admsvc-Version = req.http.X-VTEX-admsvc-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_admsvc_version=" ) {
              set req.http.X-VTEX-admsvc-Version = regsuball( req.http.Cookie, "^.*?vtex_admsvc_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-admsvc-Version;
              set req.http.X-VTEX-Explicit-admsvc-Version = req.http.X-VTEX-admsvc-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_admsvc_version_map_20130515=" ) {
                set req.http.X-VTEX-admsvc-map_20130515-Version  = regsuball( req.url, "^.*?vtex_admsvc_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-admsvc-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-admsvc-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-admsvc-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_admsvc_version_map_20130515=" ) {
                set req.http.X-VTEX-admsvc-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_admsvc_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-admsvc-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-admsvc-Version isn't present!
              if ( ! req.http.X-VTEX-admsvc-Version ) {
                set req.http.X-VTEX-admsvc-Version = req.http.X-VTEX-admsvc-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-admsvc-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app admsvc";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/adminwebservice$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /adminwebservice$";
                      
                    if ( req.http.X-VTEX-admsvc-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admsvc_01_00_00_stable";
                        set req.backend = admsvc_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                        set req.http.X-VTEX-Router-Backend-Director = "admsvc_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admsvc";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/adminwebservice/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /adminwebservice/";
                      
                    if ( req.http.X-VTEX-admsvc-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered admsvc_01_00_00_stable";
                        set req.backend = admsvc_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/adminwebservice/";
                        set req.http.X-VTEX-Router-Backend-Director = "admsvc_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "admsvc";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app admsvc";
            }
            
            #----------------------------------------------
            # Choice of version for app chk
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_chk_version=" ) {
              set req.http.X-VTEX-chk-Version  = regsuball( req.url, "^.*?vtex_chk_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-chk-Version;
              set req.http.X-VTEX-Explicit-chk-Version = req.http.X-VTEX-chk-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-chk-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-chk-Version;
              set req.http.X-VTEX-Explicit-chk-Version = req.http.X-VTEX-chk-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_chk_version=" ) {
              set req.http.X-VTEX-chk-Version = regsuball( req.http.Cookie, "^.*?vtex_chk_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-chk-Version;
              set req.http.X-VTEX-Explicit-chk-Version = req.http.X-VTEX-chk-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_chk_version_map_20130515=" ) {
                set req.http.X-VTEX-chk-map_20130515-Version  = regsuball( req.url, "^.*?vtex_chk_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-chk-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-chk-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-chk-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_chk_version_map_20130515=" ) {
                set req.http.X-VTEX-chk-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_chk_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-chk-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-chk-Version isn't present!
              if ( ! req.http.X-VTEX-chk-Version ) {
                set req.http.X-VTEX-chk-Version = req.http.X-VTEX-chk-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-chk-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app chk";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 11 && req.url ~ "(?i)^/checkout$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /checkout$";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_stable";
                        set req.backend = chk_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "10";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 11 && req.url ~ "(?i)^/checkout/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /checkout/";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_stable";
                        set req.backend = chk_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "10";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/api/checkout$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/checkout$";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_stable";
                        set req.backend = chk_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/api/checkout/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/checkout/";
                      
                    if ( req.http.X-VTEX-chk-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered chk_01_00_00_stable";
                        set req.backend = chk_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "chk_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "chk";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app chk";
            }
            
            #----------------------------------------------
            # Choice of version for app ffm
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_ffm_version=" ) {
              set req.http.X-VTEX-ffm-Version  = regsuball( req.url, "^.*?vtex_ffm_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-ffm-Version;
              set req.http.X-VTEX-Explicit-ffm-Version = req.http.X-VTEX-ffm-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-ffm-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-ffm-Version;
              set req.http.X-VTEX-Explicit-ffm-Version = req.http.X-VTEX-ffm-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_ffm_version=" ) {
              set req.http.X-VTEX-ffm-Version = regsuball( req.http.Cookie, "^.*?vtex_ffm_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-ffm-Version;
              set req.http.X-VTEX-Explicit-ffm-Version = req.http.X-VTEX-ffm-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_ffm_version_map_20130515=" ) {
                set req.http.X-VTEX-ffm-map_20130515-Version  = regsuball( req.url, "^.*?vtex_ffm_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-ffm-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-ffm-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-ffm-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_ffm_version_map_20130515=" ) {
                set req.http.X-VTEX-ffm-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_ffm_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-ffm-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-ffm-Version isn't present!
              if ( ! req.http.X-VTEX-ffm-Version ) {
                set req.http.X-VTEX-ffm-Version = req.http.X-VTEX-ffm-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-ffm-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app ffm";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/fulfillment/pvt$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/fulfillment/pvt$";
                      
                    if ( req.http.X-VTEX-ffm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ffm_01_00_00_stable";
                        set req.backend = ffm_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                        set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ffm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/fulfillment/pvt/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/fulfillment/pvt/";
                      
                    if ( req.http.X-VTEX-ffm-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ffm_01_00_00_stable";
                        set req.backend = ffm_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/fulfillment/pvt/";
                        set req.http.X-VTEX-Router-Backend-Director = "ffm_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ffm";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app ffm";
            }
            
            #----------------------------------------------
            # Choice of version for app lmngr
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_lmngr_version=" ) {
              set req.http.X-VTEX-lmngr-Version  = regsuball( req.url, "^.*?vtex_lmngr_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-lmngr-Version;
              set req.http.X-VTEX-Explicit-lmngr-Version = req.http.X-VTEX-lmngr-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-lmngr-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-lmngr-Version;
              set req.http.X-VTEX-Explicit-lmngr-Version = req.http.X-VTEX-lmngr-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_lmngr_version=" ) {
              set req.http.X-VTEX-lmngr-Version = regsuball( req.http.Cookie, "^.*?vtex_lmngr_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-lmngr-Version;
              set req.http.X-VTEX-Explicit-lmngr-Version = req.http.X-VTEX-lmngr-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_lmngr_version_map_20130515=" ) {
                set req.http.X-VTEX-lmngr-map_20130515-Version  = regsuball( req.url, "^.*?vtex_lmngr_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-lmngr-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-lmngr-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-lmngr-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_lmngr_version_map_20130515=" ) {
                set req.http.X-VTEX-lmngr-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_lmngr_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-lmngr-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-lmngr-Version isn't present!
              if ( ! req.http.X-VTEX-lmngr-Version ) {
                set req.http.X-VTEX-lmngr-Version = req.http.X-VTEX-lmngr-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-lmngr-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app lmngr";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/license-manager$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/license-manager$";
                      
                    if ( req.http.X-VTEX-lmngr-Version == "3.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.1, delivered lmngr_03_01_00_stable";
                        set req.backend = lmngr_03_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-lmngr-Version == "3.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.0, delivered lmngr_03_01_00_stable";
                        set req.backend = lmngr_03_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 22 && req.url ~ "(?i)^/api/license-manager/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/license-manager/";
                      
                    if ( req.http.X-VTEX-lmngr-Version == "3.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.1, delivered lmngr_03_01_00_stable";
                        set req.backend = lmngr_03_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-lmngr-Version == "3.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 3.0, delivered lmngr_03_01_00_stable";
                        set req.backend = lmngr_03_01_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/license-manager/";
                        set req.http.X-VTEX-Router-Backend-Director = "lmngr_03_01_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "03.01.00";
                        set req.http.X-VTEX-Router-Backend-App = "lmngr";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "21";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app lmngr";
            }
            
            #----------------------------------------------
            # Choice of version for app logist
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_logist_version=" ) {
              set req.http.X-VTEX-logist-Version  = regsuball( req.url, "^.*?vtex_logist_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-logist-Version;
              set req.http.X-VTEX-Explicit-logist-Version = req.http.X-VTEX-logist-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-logist-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-logist-Version;
              set req.http.X-VTEX-Explicit-logist-Version = req.http.X-VTEX-logist-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_logist_version=" ) {
              set req.http.X-VTEX-logist-Version = regsuball( req.http.Cookie, "^.*?vtex_logist_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-logist-Version;
              set req.http.X-VTEX-Explicit-logist-Version = req.http.X-VTEX-logist-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_logist_version_map_20130515=" ) {
                set req.http.X-VTEX-logist-map_20130515-Version  = regsuball( req.url, "^.*?vtex_logist_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-logist-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-logist-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-logist-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_logist_version_map_20130515=" ) {
                set req.http.X-VTEX-logist-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_logist_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-logist-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-logist-Version isn't present!
              if ( ! req.http.X-VTEX-logist-Version ) {
                set req.http.X-VTEX-logist-Version = req.http.X-VTEX-logist-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-logist-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app logist";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 16 && req.url ~ "(?i)^/api/logistics$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/logistics$";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_stable";
                        set req.backend = logist_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "15";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 16 && req.url ~ "(?i)^/api/logistics/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/logistics/";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_stable";
                        set req.backend = logist_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "15";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/admin/logistics$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/logistics$";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_stable";
                        set req.backend = logist_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 18 && req.url ~ "(?i)^/admin/logistics/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/logistics/";
                      
                    if ( req.http.X-VTEX-logist-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered logist_01_00_00_stable";
                        set req.backend = logist_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/logistics/";
                        set req.http.X-VTEX-Router-Backend-Director = "logist_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "logist";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "17";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app logist";
            }
            
            #----------------------------------------------
            # Choice of version for app omsapi
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_omsapi_version=" ) {
              set req.http.X-VTEX-omsapi-Version  = regsuball( req.url, "^.*?vtex_omsapi_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-omsapi-Version;
              set req.http.X-VTEX-Explicit-omsapi-Version = req.http.X-VTEX-omsapi-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-omsapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-omsapi-Version;
              set req.http.X-VTEX-Explicit-omsapi-Version = req.http.X-VTEX-omsapi-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_omsapi_version=" ) {
              set req.http.X-VTEX-omsapi-Version = regsuball( req.http.Cookie, "^.*?vtex_omsapi_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-omsapi-Version;
              set req.http.X-VTEX-Explicit-omsapi-Version = req.http.X-VTEX-omsapi-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_omsapi_version_map_20130515=" ) {
                set req.http.X-VTEX-omsapi-map_20130515-Version  = regsuball( req.url, "^.*?vtex_omsapi_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-omsapi-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-omsapi-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-omsapi-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_omsapi_version_map_20130515=" ) {
                set req.http.X-VTEX-omsapi-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_omsapi_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-omsapi-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-omsapi-Version isn't present!
              if ( ! req.http.X-VTEX-omsapi-Version ) {
                set req.http.X-VTEX-omsapi-Version = req.http.X-VTEX-omsapi-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-omsapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app omsapi";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/oms$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/oms$";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_stable";
                        set req.backend = omsapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/oms/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/oms/";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_stable";
                        set req.backend = omsapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/oms/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/admin/checkout$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/checkout$";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_stable";
                        set req.backend = omsapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 17 && req.url ~ "(?i)^/admin/checkout/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/checkout/";
                      
                    if ( req.http.X-VTEX-omsapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered omsapi_01_00_00_stable";
                        set req.backend = omsapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/checkout/";
                        set req.http.X-VTEX-Router-Backend-Director = "omsapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "omsapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "16";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app omsapi";
            }
            
            #----------------------------------------------
            # Choice of version for app pfsys
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_pfsys_version=" ) {
              set req.http.X-VTEX-pfsys-Version  = regsuball( req.url, "^.*?vtex_pfsys_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-pfsys-Version;
              set req.http.X-VTEX-Explicit-pfsys-Version = req.http.X-VTEX-pfsys-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-pfsys-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-pfsys-Version;
              set req.http.X-VTEX-Explicit-pfsys-Version = req.http.X-VTEX-pfsys-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_pfsys_version=" ) {
              set req.http.X-VTEX-pfsys-Version = regsuball( req.http.Cookie, "^.*?vtex_pfsys_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-pfsys-Version;
              set req.http.X-VTEX-Explicit-pfsys-Version = req.http.X-VTEX-pfsys-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_pfsys_version_map_20130515=" ) {
                set req.http.X-VTEX-pfsys-map_20130515-Version  = regsuball( req.url, "^.*?vtex_pfsys_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-pfsys-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-pfsys-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-pfsys-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_pfsys_version_map_20130515=" ) {
                set req.http.X-VTEX-pfsys-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_pfsys_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-pfsys-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-pfsys-Version isn't present!
              if ( ! req.http.X-VTEX-pfsys-Version ) {
                set req.http.X-VTEX-pfsys-Version = req.http.X-VTEX-pfsys-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-pfsys-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app pfsys";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 21 && req.url ~ "(?i)^/api/profile-system$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/profile-system$";
                      
                    if ( req.http.X-VTEX-pfsys-Version == "5.3" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.3, delivered pfsys_05_03_00_stable";
                        set req.backend = pfsys_05_03_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_03_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.03.00";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-pfsys-Version == "5.2" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.2, delivered pfsys_05_02_08_stable";
                        set req.backend = pfsys_05_02_08_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_02_08_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.02.08";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-pfsys-Version == "5.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.1, delivered pfsys_05_02_08_stable";
                        set req.backend = pfsys_05_02_08_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_02_08_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.02.08";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-pfsys-Version == "5.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.0, delivered pfsys_05_02_08_stable";
                        set req.backend = pfsys_05_02_08_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_02_08_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.02.08";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "20";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 21 && req.url ~ "(?i)^/api/profile-system/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/profile-system/";
                      
                    if ( req.http.X-VTEX-pfsys-Version == "5.3" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.3, delivered pfsys_05_03_00_stable";
                        set req.backend = pfsys_05_03_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_03_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.03.00";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-pfsys-Version == "5.2" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.2, delivered pfsys_05_02_08_stable";
                        set req.backend = pfsys_05_02_08_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_02_08_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.02.08";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-pfsys-Version == "5.1" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.1, delivered pfsys_05_02_08_stable";
                        set req.backend = pfsys_05_02_08_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_02_08_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.02.08";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                    elsif ( req.http.X-VTEX-pfsys-Version == "5.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 5.0, delivered pfsys_05_02_08_stable";
                        set req.backend = pfsys_05_02_08_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/profile-system/";
                        set req.http.X-VTEX-Router-Backend-Director = "pfsys_05_02_08_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "05.02.08";
                        set req.http.X-VTEX-Router-Backend-App = "pfsys";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "20";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app pfsys";
            }
            
            #----------------------------------------------
            # Choice of version for app portal
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_portal_version=" ) {
              set req.http.X-VTEX-portal-Version  = regsuball( req.url, "^.*?vtex_portal_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-portal-Version;
              set req.http.X-VTEX-Explicit-portal-Version = req.http.X-VTEX-portal-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-portal-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-portal-Version;
              set req.http.X-VTEX-Explicit-portal-Version = req.http.X-VTEX-portal-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_portal_version=" ) {
              set req.http.X-VTEX-portal-Version = regsuball( req.http.Cookie, "^.*?vtex_portal_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-portal-Version;
              set req.http.X-VTEX-Explicit-portal-Version = req.http.X-VTEX-portal-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_portal_version_map_20130515=" ) {
                set req.http.X-VTEX-portal-map_20130515-Version  = regsuball( req.url, "^.*?vtex_portal_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-portal-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-portal-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-portal-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_portal_version_map_20130515=" ) {
                set req.http.X-VTEX-portal-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_portal_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-portal-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-portal-Version isn't present!
              if ( ! req.http.X-VTEX-portal-Version ) {
                set req.http.X-VTEX-portal-Version = req.http.X-VTEX-portal-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-portal-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app portal";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 2 && req.url ~ "(?i)^$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at $";
                      
                    if ( req.http.X-VTEX-portal-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered portal_01_00_00_stable";
                        set req.backend = portal_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/";
                        set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "portal";
                         
                    } 
                    elsif ( req.http.X-VTEX-portal-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered portal_00_00_00_stable";
                        set req.backend = portal_00_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/";
                        set req.http.X-VTEX-Router-Backend-Director = "portal_00_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "portal";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "1";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 2 && req.url ~ "(?i)^/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /";
                      
                    if ( req.http.X-VTEX-portal-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered portal_01_00_00_stable";
                        set req.backend = portal_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/";
                        set req.http.X-VTEX-Router-Backend-Director = "portal_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "portal";
                         
                    } 
                    elsif ( req.http.X-VTEX-portal-Version == "0.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 0.0, delivered portal_00_00_00_stable";
                        set req.backend = portal_00_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/";
                        set req.http.X-VTEX-Router-Backend-Director = "portal_00_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "00.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "portal";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "1";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app portal";
            }
            
            #----------------------------------------------
            # Choice of version for app prtlv2
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_prtlv2_version=" ) {
              set req.http.X-VTEX-prtlv2-Version  = regsuball( req.url, "^.*?vtex_prtlv2_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-prtlv2-Version;
              set req.http.X-VTEX-Explicit-prtlv2-Version = req.http.X-VTEX-prtlv2-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-prtlv2-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-prtlv2-Version;
              set req.http.X-VTEX-Explicit-prtlv2-Version = req.http.X-VTEX-prtlv2-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_prtlv2_version=" ) {
              set req.http.X-VTEX-prtlv2-Version = regsuball( req.http.Cookie, "^.*?vtex_prtlv2_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-prtlv2-Version;
              set req.http.X-VTEX-Explicit-prtlv2-Version = req.http.X-VTEX-prtlv2-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_prtlv2_version_map_20130515=" ) {
                set req.http.X-VTEX-prtlv2-map_20130515-Version  = regsuball( req.url, "^.*?vtex_prtlv2_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-prtlv2-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-prtlv2-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-prtlv2-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_prtlv2_version_map_20130515=" ) {
                set req.http.X-VTEX-prtlv2-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_prtlv2_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-prtlv2-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-prtlv2-Version isn't present!
              if ( ! req.http.X-VTEX-prtlv2-Version ) {
                set req.http.X-VTEX-prtlv2-Version = req.http.X-VTEX-prtlv2-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-prtlv2-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app prtlv2";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 13 && req.url ~ "(?i)^/api/portal$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/portal$";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_stable";
                        set req.backend = prtlv2_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "12";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 13 && req.url ~ "(?i)^/api/portal/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/portal/";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_stable";
                        set req.backend = prtlv2_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "12";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin/portal$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/portal$";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_stable";
                        set req.backend = prtlv2_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/admin/portal/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/portal/";
                      
                    if ( req.http.X-VTEX-prtlv2-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered prtlv2_01_00_00_stable";
                        set req.backend = prtlv2_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/portal/";
                        set req.http.X-VTEX-Router-Backend-Director = "prtlv2_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "prtlv2";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app prtlv2";
            }
            
            #----------------------------------------------
            # Choice of version for app ptlapi
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_ptlapi_version=" ) {
              set req.http.X-VTEX-ptlapi-Version  = regsuball( req.url, "^.*?vtex_ptlapi_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-ptlapi-Version;
              set req.http.X-VTEX-Explicit-ptlapi-Version = req.http.X-VTEX-ptlapi-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-ptlapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-ptlapi-Version;
              set req.http.X-VTEX-Explicit-ptlapi-Version = req.http.X-VTEX-ptlapi-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_ptlapi_version=" ) {
              set req.http.X-VTEX-ptlapi-Version = regsuball( req.http.Cookie, "^.*?vtex_ptlapi_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-ptlapi-Version;
              set req.http.X-VTEX-Explicit-ptlapi-Version = req.http.X-VTEX-ptlapi-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_ptlapi_version_map_20130515=" ) {
                set req.http.X-VTEX-ptlapi-map_20130515-Version  = regsuball( req.url, "^.*?vtex_ptlapi_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-ptlapi-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-ptlapi-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-ptlapi-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_ptlapi_version_map_20130515=" ) {
                set req.http.X-VTEX-ptlapi-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_ptlapi_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-ptlapi-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-ptlapi-Version isn't present!
              if ( ! req.http.X-VTEX-ptlapi-Version ) {
                set req.http.X-VTEX-ptlapi-Version = req.http.X-VTEX-ptlapi-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-ptlapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app ptlapi";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/api/addon$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/addon$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 12 && req.url ~ "(?i)^/api/addon/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/addon/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/addon/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "11";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/api/installments$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/installments$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 19 && req.url ~ "(?i)^/api/installments/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/installments/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/installments/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "18";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 21 && req.url ~ "(?i)^/api/catalog_system$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/catalog_system$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "20";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 21 && req.url ~ "(?i)^/api/catalog_system/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/catalog_system/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/catalog_system/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "20";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/gift-certificate$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/gift-certificate$";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/gift-certificate/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/gift-certificate/";
                      
                    if ( req.http.X-VTEX-ptlapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered ptlapi_01_00_00_stable";
                        set req.backend = ptlapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/gift-certificate/";
                        set req.http.X-VTEX-Router-Backend-Director = "ptlapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "ptlapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app ptlapi";
            }
            
            #----------------------------------------------
            # Choice of version for app rnbwp
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_rnbwp_version=" ) {
              set req.http.X-VTEX-rnbwp-Version  = regsuball( req.url, "^.*?vtex_rnbwp_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-rnbwp-Version;
              set req.http.X-VTEX-Explicit-rnbwp-Version = req.http.X-VTEX-rnbwp-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-rnbwp-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-rnbwp-Version;
              set req.http.X-VTEX-Explicit-rnbwp-Version = req.http.X-VTEX-rnbwp-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_rnbwp_version=" ) {
              set req.http.X-VTEX-rnbwp-Version = regsuball( req.http.Cookie, "^.*?vtex_rnbwp_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-rnbwp-Version;
              set req.http.X-VTEX-Explicit-rnbwp-Version = req.http.X-VTEX-rnbwp-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_rnbwp_version_map_20130515=" ) {
                set req.http.X-VTEX-rnbwp-map_20130515-Version  = regsuball( req.url, "^.*?vtex_rnbwp_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-rnbwp-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-rnbwp-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-rnbwp-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_rnbwp_version_map_20130515=" ) {
                set req.http.X-VTEX-rnbwp-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_rnbwp_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-rnbwp-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-rnbwp-Version isn't present!
              if ( ! req.http.X-VTEX-rnbwp-Version ) {
                set req.http.X-VTEX-rnbwp-Version = req.http.X-VTEX-rnbwp-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-rnbwp-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app rnbwp";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/rnb$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/rnb$";
                      
                    if ( req.http.X-VTEX-rnbwp-Version == "2.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 2.0, delivered rnbwp_02_00_01_stable";
                        set req.backend = rnbwp_02_00_01_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                        set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                        set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 10 && req.url ~ "(?i)^/api/rnb/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/rnb/";
                      
                    if ( req.http.X-VTEX-rnbwp-Version == "2.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 2.0, delivered rnbwp_02_00_01_stable";
                        set req.backend = rnbwp_02_00_01_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/rnb/";
                        set req.http.X-VTEX-Router-Backend-Director = "rnbwp_02_00_01_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "02.00.01";
                        set req.http.X-VTEX-Router-Backend-App = "rnbwp";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "9";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app rnbwp";
            }
            
            #----------------------------------------------
            # Choice of version for app sno
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_sno_version=" ) {
              set req.http.X-VTEX-sno-Version  = regsuball( req.url, "^.*?vtex_sno_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-sno-Version;
              set req.http.X-VTEX-Explicit-sno-Version = req.http.X-VTEX-sno-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-sno-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-sno-Version;
              set req.http.X-VTEX-Explicit-sno-Version = req.http.X-VTEX-sno-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_sno_version=" ) {
              set req.http.X-VTEX-sno-Version = regsuball( req.http.Cookie, "^.*?vtex_sno_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-sno-Version;
              set req.http.X-VTEX-Explicit-sno-Version = req.http.X-VTEX-sno-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_sno_version_map_20130515=" ) {
                set req.http.X-VTEX-sno-map_20130515-Version  = regsuball( req.url, "^.*?vtex_sno_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-sno-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-sno-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-sno-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_sno_version_map_20130515=" ) {
                set req.http.X-VTEX-sno-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_sno_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-sno-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-sno-Version isn't present!
              if ( ! req.http.X-VTEX-sno-Version ) {
                set req.http.X-VTEX-sno-Version = req.http.X-VTEX-sno-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-sno-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app sno";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/shipping-tracker$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/shipping-tracker$";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_stable";
                        set req.backend = sno_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 23 && req.url ~ "(?i)^/api/shipping-tracker/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/shipping-tracker/";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_stable";
                        set req.backend = sno_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "22";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 25 && req.url ~ "(?i)^/admin/shipping-tracker$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/shipping-tracker$";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_stable";
                        set req.backend = sno_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "24";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 25 && req.url ~ "(?i)^/admin/shipping-tracker/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /admin/shipping-tracker/";
                      
                    if ( req.http.X-VTEX-sno-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered sno_01_00_00_stable";
                        set req.backend = sno_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/admin/shipping-tracker/";
                        set req.http.X-VTEX-Router-Backend-Director = "sno_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "sno";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "24";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app sno";
            }
            
            #----------------------------------------------
            # Choice of version for app wkfapi
            # Precedence (high to low): Query string, Header, Cookie
            #----------------------------------------------
            
            # Query String
            if ( req.url ~ "(?i)vtex_wkfapi_version=" ) {
              set req.http.X-VTEX-wkfapi-Version  = regsuball( req.url, "^.*?vtex_wkfapi_version=([^&]*)&*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from query string: " + req.http.X-VTEX-wkfapi-Version;
              set req.http.X-VTEX-Explicit-wkfapi-Version = req.http.X-VTEX-wkfapi-Version;
            }
            # Header
            elsif ( req.http.X-VTEX-wkfapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from header: " + req.http.X-VTEX-wkfapi-Version;
              set req.http.X-VTEX-Explicit-wkfapi-Version = req.http.X-VTEX-wkfapi-Version;
            }
            # Cookie 
            elsif( req.http.Cookie ~ "vtex_wkfapi_version=" ) {
              set req.http.X-VTEX-wkfapi-Version = regsuball( req.http.Cookie, "^.*?vtex_wkfapi_version=([^;]*);*.*$", "\1" );
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Version override from cookie: " + req.http.X-VTEX-wkfapi-Version;
              set req.http.X-VTEX-Explicit-wkfapi-Version = req.http.X-VTEX-wkfapi-Version;
            } 
            
            
            # collect prefixes
            
            
            # Query String
              if ( req.url ~ "(?i)vtex_wkfapi_version_map_20130515=" ) {
                set req.http.X-VTEX-wkfapi-map_20130515-Version  = regsuball( req.url, "^.*?vtex_wkfapi_version_map_20130515=([^&]*)&*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from query string: " + req.http.X-VTEX-wkfapi-map_20130515-Version;
              }
            # Header
              elsif ( req.http.X-VTEX-wkfapi-map_20130515-Version ) {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from header: " + req.http.X-VTEX-wkfapi-map_20130515-Version;
              }
            # Cookie 
              elsif( req.http.Cookie ~ "vtex_wkfapi_version_map_20130515=" ) {
                set req.http.X-VTEX-wkfapi-map_20130515-Version = regsuball( req.http.Cookie, "^.*?map_20130515_vtex_wkfapi_version=([^;]*);*.*$", "\1" );
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Suffixed version override from cookie: " + req.http.X-VTEX-wkfapi-map_20130515-Version;
              } 
            
            # have we collected anything? then it's time to rock! as long as a X-VTEX-wkfapi-Version isn't present!
              if ( ! req.http.X-VTEX-wkfapi-Version ) {
                set req.http.X-VTEX-wkfapi-Version = req.http.X-VTEX-wkfapi-map_20130515-Version;
              } else {
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Explicit version found, prefixed version override cancelled.";
              }
            
            
            
            
            # have we collected anything? then it's time to rock!
            if ( req.http.X-VTEX-wkfapi-Version ) {
              set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // Entering manual version override for app wkfapi";
                  
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/api/workflow$" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/workflow$";
                      
                    if ( req.http.X-VTEX-wkfapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered wkfapi_01_00_00_stable";
                        set req.backend = wkfapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/workflow/";
                        set req.http.X-VTEX-Router-Backend-Director = "wkfapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "wkfapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
              if ( std.integer(req.http.X-VTEX-Router-Last-Match-Length, 0) < 15 && req.url ~ "(?i)^/api/workflow/" ) {
                  set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // version override at /api/workflow/";
                      
                    if ( req.http.X-VTEX-wkfapi-Version == "1.0" ) {
                        set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // asked for 1.0, delivered wkfapi_01_00_00_stable";
                        set req.backend = wkfapi_01_00_00_stable;
                        set req.http.X-VTEX-Router-Backend-Root = "/api/workflow/";
                        set req.http.X-VTEX-Router-Backend-Director = "wkfapi_01_00_00_stable";
                        set req.http.X-VTEX-Router-Backend-Environment = "stable";
                        set req.http.X-VTEX-Router-Backend-Version = "01.00.00";
                        set req.http.X-VTEX-Router-Backend-App = "wkfapi";
                        set req.http.X-VTEX-Router-Cache-CDNIgnore = "1";
                         
                    } 
                     
                  
                  set req.http.X-VTEX-Router-Last-Match-Length = "14";
              } 
               
            
            }
            else {
              # shut up.
              # set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug  + " // No version override for app wkfapi";
            }
            
            
            if (req.url ~ "(?i)^/admin-topbar/") {
                set req.backend = LICENSE_MANAGER;
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // manual backend override: LICENSE_MANAGER";
                set req.http.X-VTEX-Router-Backend-Director = "LICENSE_MANAGER";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "n/a";
                set req.http.X-VTEX-Router-Backend-App = "n/a";
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out of vcl_recv with pass";
                return (pass);
            }
            if (req.url ~ "(?i)^/admin/a/integration/") {
               set req.backend = integracao17;
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // manual backend override: integracao";
                set req.http.X-VTEX-Router-Backend-Director = "integracao";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "n/a";
                set req.http.X-VTEX-Router-Backend-App = "n/a";
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out of vcl_recv with pass";
            }
            
            # now the naked urls
            
            if (req.url ~ "(?i)^/admin-topbar$") {
                set req.backend = LICENSE_MANAGER;
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // manual backend override: LICENSE_MANAGER";
                set req.http.X-VTEX-Router-Backend-Director = "LICENSE_MANAGER";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "n/a";
                set req.http.X-VTEX-Router-Backend-App = "n/a";
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out of vcl_recv with pass";
                return (pass);
            }
            if (req.url ~ "(?i)^/admin/a/integration$") {
               set req.backend = integracao17;
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // manual backend override: integracao";
                set req.http.X-VTEX-Router-Backend-Director = "integracao";
                set req.http.X-VTEX-Router-Backend-Environment = "stable";
                set req.http.X-VTEX-Router-Backend-Version = "n/a";
                set req.http.X-VTEX-Router-Backend-App = "n/a";
                set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out of vcl_recv with pass";
            }
            
            
            set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // leaving stable";
        } 
         
    
    
          
        if ( req.http.X-VTEX-Router-Dummy-Use-Every-Director == "So-Varnish-Wont-Complain-At-VCL-Load-Time" ) {
            set req.backend = VChnnl_00_02_00_beta;
             set req.backend = VChnnl_01_00_00_beta;
             set req.backend = VChnnl_00_01_00_stable;
             set req.backend = VChnnl_01_00_00_stable;
             set req.backend = a_01_00_00_beta;
             set req.backend = a_01_00_00_stable;
             set req.backend = admin_01_00_00_beta;
             set req.backend = admin_01_00_00_stable;
             set req.backend = admsvc_01_00_00_stable;
             set req.backend = chk_01_00_00_beta;
             set req.backend = chk_01_00_00_stable;
             set req.backend = ffm_01_00_00_beta;
             set req.backend = ffm_01_00_00_stable;
             set req.backend = lmngr_03_01_00_beta;
             set req.backend = lmngr_03_01_00_stable;
             set req.backend = logist_01_00_00_beta;
             set req.backend = logist_01_00_00_stable;
             set req.backend = omsapi_01_00_00_beta;
             set req.backend = omsapi_01_00_00_stable;
             set req.backend = pfsys_05_02_08_stable;
             set req.backend = pfsys_05_03_00_stable;
             set req.backend = portal_01_00_00_beta;
             set req.backend = portal_00_00_00_stable;
             set req.backend = portal_01_00_00_stable;
             set req.backend = prtlv2_01_00_00_beta;
             set req.backend = prtlv2_01_00_00_stable;
             set req.backend = ptlapi_01_00_00_beta;
             set req.backend = ptlapi_01_00_00_stable;
             set req.backend = rnbwp_02_00_01_beta;
             set req.backend = rnbwp_02_00_01_stable;
             set req.backend = sno_01_00_00_beta;
             set req.backend = sno_01_00_00_stable;
             set req.backend = svc_01_00_00_beta;
             set req.backend = vlm_01_00_02_beta;
             set req.backend = wkfapi_01_00_00_stable;
             
        } 
         
    
      }
    
      if ( req.http.X-VTEX-Router-Backend-Environment == "beta" ) {
        if ( req.url ~ "(?i)^/admin/checkout$" || req.url ~ "(?i)^/admin/checkout/$" || req.url ~ "(?i)^/admin/checkout\?" || req.url ~ "(?i)^/admin/checkout/\?" || req.url ~ "(?i)^/admin/checkout/index.html$" || req.url ~ "(?i)^/admin/checkout/index.html?" ) {
          set req.url = "/admin/checkout/beta/index.html";
          set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out to vtex-io";
          set req.backend = VTEX_IO;
          remove req.http.Cookie;
          set req.http.host = "vtex-io.s3.amazonaws.com";
          set req.url = regsub(req.url, "\?.*$", "");
    
          set req.http.X-VTEX-Router-Backend-App = "vtex.io";
          set req.http.X-VTEX-Router-Backend-Director = "n/a";
          set req.http.X-VTEX-Router-Backend-Environment = "beta";
          set req.http.X-VTEX-Router-Backend-Version = "n/a";
    
        }
        elsif ( req.url ~ "(?i)^/admin/checkout/index.debug.html" || req.url ~ "(?i)^/admin/checkout/index.debug.html" ) {
          set req.url = "/admin/checkout/beta/index.debug.html";
          set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out to vtex-io";
          set req.backend = VTEX_IO;
          remove req.http.Cookie;
          set req.http.host = "vtex-io.s3.amazonaws.com";
          set req.url = regsub(req.url, "\?.*$", "");
    
          set req.http.X-VTEX-Router-Backend-App = "vtex.io";
          set req.http.X-VTEX-Router-Backend-Director = "n/a";
          set req.http.X-VTEX-Router-Backend-Environment = "beta";
          set req.http.X-VTEX-Router-Backend-Version = "n/a";
    
        }
      }
      elsif ( req.http.X-VTEX-Router-Backend-Environment == "stable" ) {
        if ( req.url ~ "(?i)^/admin/checkout$" || req.url ~ "(?i)^/admin/checkout/$" || req.url ~ "(?i)^/admin/checkout\?" || req.url ~ "(?i)^/admin/checkout/\?" || req.url ~ "(?i)^/admin/checkout/index.html$" || req.url ~ "(?i)^/admin/checkout/index.html?" ) {
          set req.url = "/admin/checkout/stable/index.html";
          set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out to vtex-io";
          set req.backend = VTEX_IO;
          remove req.http.Cookie;
          set req.http.host = "vtex-io.s3.amazonaws.com";
          set req.url = regsub(req.url, "\?.*$", "");
    
          set req.http.X-VTEX-Router-Backend-App = "vtex.io";
          set req.http.X-VTEX-Router-Backend-Director = "n/a";
          set req.http.X-VTEX-Router-Backend-Environment = "stable";
          set req.http.X-VTEX-Router-Backend-Version = "n/a";
    
        }
        elsif ( req.url ~ "(?i)^/admin/checkout/index.debug.html" || req.url ~ "(?i)^/admin/checkout/index.debug.html" ) {
          set req.url = "/admin/checkout/stable/index.debug.html";
          set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // jumping out to vtex-io";
          set req.backend = VTEX_IO;
          remove req.http.Cookie;
          set req.http.host = "vtex-io.s3.amazonaws.com";
          set req.url = regsub(req.url, "\?.*$", "");
    
          set req.http.X-VTEX-Router-Backend-App = "vtex.io";
          set req.http.X-VTEX-Router-Backend-Director = "n/a";
          set req.http.X-VTEX-Router-Backend-Environment = "stable";
          set req.http.X-VTEX-Router-Backend-Version = "n/a";
    
        }
      }
    
    
    if ( req.http.X-VTEX-Router-Cache-CDNIgnore == "1" ) {
      set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // CDNIgnore set, so we return(pass)";
      return(pass);
    }
    
    if ( req.restarts == 0 ) {
      if (req.http.x-forwarded-for) {
        set req.http.X-Forwarded-For = req.http.X-Forwarded-For + ", " + client.ip;
      } 
      else {
        set req.http.X-Forwarded-For = client.ip;
      }
    }
    
    if (
      req.request != "GET" &&
      req.request != "HEAD" &&
      req.request != "PUT" &&
      req.request != "POST" &&
      req.request != "TRACE" &&
      req.request != "OPTIONS" &&
      req.request != "DELETE") 
      {
      return (pipe);
      # Non-RFC2616 or CONNECT which is weird.
    }
    
    if (req.request != "GET" && req.request != "HEAD") {
      /* We only deal with GET and HEAD by default */
      return (pass);
    }
    
    #   # here we depart from varnish's default behaviour, left here for reference
    #   # if (req.http.Authorization || req.http.Cookie) {
    #   #  # Not cacheable by default
    #   #  return (pass);
    #   #}
    #   
    #   if ( req.http.Authorization ) {
    #     # Not cacheable by default
    #     return (pass);
    #   }
    #   
    #   # so now we'll look it up, even if it has a cookie'
    #   return (lookup);
    
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // leaving vcl_recv >> ";
    

} # end of vcl_recv


#-------------------------------------------------------------------------------

sub vcl_hash {
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " << entering vcl_hash";
    
    # From cookie: SGTS
    if( req.http.Cookie ~ "SGTS" ) {
        set req.http.X-VTEX-Router-Cache-Cookie-SGTS = regsub( req.http.Cookie, "^.*?SGTS=([^;]*);*.*$", "\1" );
        set req.http.X-VTEX-Router-Cache-Debug = req.http.X-VTEX-Router-Cache-Debug + " // SGTS set: " + req.http.X-VTEX-Router-Cache-SGTS;
    }
    
    if ( req.http.X-VTEX-Router-Cache-Cookie-SGTS ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "SGTS=" + req.http.X-VTEX-Router-Cache-Cookie-SGTS;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding SGTS=" + req.http.X-VTEX-Router-Cache-Cookie-SGTS;
    }
    
    if ( req.http.X-Forwarded-Proto ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "proto=" + req.http.X-VTEX-Router-Forwarded-Proto;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding X-VTEX-Router-Forwarded-Proto=" + req.http.X-VTEX-Router-Forwarded-Proto;
    }
    
    if ( req.http.X-VTEX-Environment ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "env=" + req.http.X-VTEX-Environment;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding X-VTEX-Environment=" + req.http.X-VTEX-Environment;
    }
    
    if ( req.http.X-VTEX-Router-Backend-App ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "backend_app=" + req.http.X-VTEX-Router-Backend-App;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding X-VTEX-Router-Backend-App=" + req.http.X-VTEX-Router-Backend-App;
    }
    
    if ( req.http.X-VTEX-Router-Backend-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "backend_version=" + req.http.X-VTEX-Router-Backend-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding X-VTEX-Router-Backend-Version=" + req.http.X-VTEX-Router-Backend-Version;
    }
    
    if ( req.http.X-VTEX-Router-Backend-Environment ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "backend_env=" + req.http.X-VTEX-Router-Backend-Environment;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding X-VTEX-Router-Backend-Environment=" + req.http.X-VTEX-Router-Backend-Environment;
    }
    
    
    
    # body of vcl_hash
    
    
    if ( req.http.X-VTEX-VChnnl-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "VChnnl_version=" + req.http.X-VTEX-VChnnl-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding VChnnl_version=" + req.http.X-VTEX-VChnnl-Version;
    }
    
    if ( req.http.X-VTEX-a-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "a_version=" + req.http.X-VTEX-a-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding a_version=" + req.http.X-VTEX-a-Version;
    }
    
    if ( req.http.X-VTEX-admin-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "admin_version=" + req.http.X-VTEX-admin-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding admin_version=" + req.http.X-VTEX-admin-Version;
    }
    
    if ( req.http.X-VTEX-admsvc-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "admsvc_version=" + req.http.X-VTEX-admsvc-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding admsvc_version=" + req.http.X-VTEX-admsvc-Version;
    }
    
    if ( req.http.X-VTEX-chk-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "chk_version=" + req.http.X-VTEX-chk-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding chk_version=" + req.http.X-VTEX-chk-Version;
    }
    
    if ( req.http.X-VTEX-ffm-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "ffm_version=" + req.http.X-VTEX-ffm-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding ffm_version=" + req.http.X-VTEX-ffm-Version;
    }
    
    if ( req.http.X-VTEX-lmngr-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "lmngr_version=" + req.http.X-VTEX-lmngr-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding lmngr_version=" + req.http.X-VTEX-lmngr-Version;
    }
    
    if ( req.http.X-VTEX-logist-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "logist_version=" + req.http.X-VTEX-logist-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding logist_version=" + req.http.X-VTEX-logist-Version;
    }
    
    if ( req.http.X-VTEX-omsapi-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "omsapi_version=" + req.http.X-VTEX-omsapi-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding omsapi_version=" + req.http.X-VTEX-omsapi-Version;
    }
    
    if ( req.http.X-VTEX-pfsys-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "pfsys_version=" + req.http.X-VTEX-pfsys-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding pfsys_version=" + req.http.X-VTEX-pfsys-Version;
    }
    
    if ( req.http.X-VTEX-portal-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "portal_version=" + req.http.X-VTEX-portal-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding portal_version=" + req.http.X-VTEX-portal-Version;
    }
    
    if ( req.http.X-VTEX-prtlv2-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "prtlv2_version=" + req.http.X-VTEX-prtlv2-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding prtlv2_version=" + req.http.X-VTEX-prtlv2-Version;
    }
    
    if ( req.http.X-VTEX-ptlapi-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "ptlapi_version=" + req.http.X-VTEX-ptlapi-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding ptlapi_version=" + req.http.X-VTEX-ptlapi-Version;
    }
    
    if ( req.http.X-VTEX-rnbwp-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "rnbwp_version=" + req.http.X-VTEX-rnbwp-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding rnbwp_version=" + req.http.X-VTEX-rnbwp-Version;
    }
    
    if ( req.http.X-VTEX-sno-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "sno_version=" + req.http.X-VTEX-sno-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding sno_version=" + req.http.X-VTEX-sno-Version;
    }
    
    if ( req.http.X-VTEX-svc-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "svc_version=" + req.http.X-VTEX-svc-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding svc_version=" + req.http.X-VTEX-svc-Version;
    }
    
    if ( req.http.X-VTEX-vlm-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "vlm_version=" + req.http.X-VTEX-vlm-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding vlm_version=" + req.http.X-VTEX-vlm-Version;
    }
    
    if ( req.http.X-VTEX-wkfapi-Version ) {
      set req.http.X-VTEX-Router-Hash-Tmp = "wkfapi_version=" + req.http.X-VTEX-wkfapi-Version;
      hash_data( req.http.X-VTEX-Router-Hash-Tmp );
      set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // adding wkfapi_version=" + req.http.X-VTEX-wkfapi-Version;
    }
    
    
    # cleanup
    remove req.http.X-VTEX-Router-Hash-Tmp;
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // leaving vcl_hash >>";

} # end of vcl_hash


#-------------------------------------------------------------------------------

sub vcl_fetch {
    
    set beresp.http.X-VTEX-Router-Debug = " << entering vcl_fetch";
    
    
    set beresp.http.X-VTEX-Router-Debug-Backend-Name = beresp.backend.name;
    set beresp.http.X-VTEX-Router-Debug-Backend-IP   = beresp.backend.ip;
    set beresp.http.X-VTEX-Router-Debug-Backend-Port = beresp.backend.port;
    
    if ( req.http.X-VTEX-Router-Cache-CDNIgnore == "1") {
    
      # it was set at an earlier stage for this request to not be cached
      set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: no cache, found X-VTEX-Router-Cache-CDNIgnore";
      set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // jumping out of vcl_fetch with a hit_for_pass >>";
      return(hit_for_pass);
    
    }
      
    
    # let's get the default behaviour handled right away
    # here, commented out for reference
    #     if (beresp.ttl <= 0s ||
    #         beresp.http.Set-Cookie ||
    #         beresp.http.Vary == "*") {
    # 		/*
    # 		 * Mark as "Hit-For-Pass" for the next 2 minutes
    # 		 */
    # 		set beresp.ttl = 120 s;
    # 		return (hit_for_pass);
    #     }
    #     return (deliver);
    
    # handling vtex.io separately
    if ( req.http.host == "vtex-io.s3.amazonaws.com" ) {
    
      # first, set a content-type
      if ( req.url ~ "(?i)\.js$" ) { set beresp.http.Content-Type = "application/javascript; charset=UTF-8"; }
      elsif ( req.url ~ "(?i)\.json$" ) { set beresp.http.Content-Type = "application/json; charset=UTF-8"; }
      elsif ( req.url ~ "(?i)\.html$" ) { set beresp.http.Content-Type = "text/html; charset=UTF-8"; }
      elsif ( req.url ~ "(?i)\.htm$" ) { set beresp.http.Content-Type = "text/html; charset=UTF-8"; }
      elsif ( req.url ~ "(?i)\.xml$" ) { set beresp.http.Content-Type = "application/xml; charset=UTF-8"; }
      elsif ( req.url ~ "(?i)\.txt$" ) { set beresp.http.Content-Type = "text/plain"; }
      elsif ( req.url ~ "(?i)\.css$" ) { set beresp.http.Content-Type = "text/css"; }
      elsif ( req.url ~ "(?i)\.png$" ) { set beresp.http.Content-Type = "image/png"; }
      elsif ( req.url ~ "(?i)\.jpeg$" ) { set beresp.http.Content-Type = "image/jpeg"; }
      elsif ( req.url ~ "(?i)\.jpg$" ) { set beresp.http.Content-Type = "image/jpeg"; }
      elsif ( req.url ~ "(?i)\.gif$" ) { set beresp.http.Content-Type = "image/gif"; }
    
      # gzip, if it makes sense..
      if (! beresp.http.Content-Encoding == "gzip" ) {
        if ( ( beresp.http.Content-Type ~ "text/" ) || ( beresp.http.Content-Type ~ "javascript" ) || ( beresp.http.Content-Type ~ "json" ) ) {
          set beresp.do_gzip = true;
        }
      }
    
      # set a permissive CORS
      set beresp.http.Access-Control-Allow-Origin = "*";
    
      # if this is an index, set a tiny cache
      if ( ( req.url ~ "(?i)index\.html$") || ( req.url ~ "(?i)index\.debug\.html$") ) {
        set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // vtex.io short-lived cache";
        set beresp.http.cache-control = "private, max-age=60";
        set beresp.ttl = 1m;
      } 
      else {
        set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // vtex.io long-lived cache";
        set beresp.http.cache-control = "private, max-age=7200";
        set beresp.ttl = 24h;
      }
    
      # TODO: ASAP DRY this|! really! this was ctrl+c ctrl+v from below
      # cache per response status
      if ( beresp.status == 200 || beresp.status == 201 || beresp.status == 202 ||  beresp.status == 203 ||  beresp.status == 204 ||  beresp.status == 205 
            ||  beresp.status == 206 ||  beresp.status == 207 ||  beresp.status == 208 ||  beresp.status == 226 ) { 
          # success 2xx
      }
      elsif ( beresp.status == 300 || beresp.status == 301 || beresp.status == 302 ||  beresp.status == 303 ||  beresp.status == 304 ||  beresp.status == 305 
            ||  beresp.status == 306 ||  beresp.status == 307 ||  beresp.status == 308 ) {
          # redirection 3xx 
          set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: caching 3xx with ttl 60 secs and no client cache";
          set beresp.ttl = 60s;
          set beresp.http.cache-control = "no-cache";
      }
      else {
          # here comes everyone else # 1xx informational # 4xx client error # 5xx server error
          set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: caching non-3xx-or-2xx with ttl of 10 secs and no client cache";
          set beresp.ttl = 10s;
          set beresp.http.cache-control = "no-cache";
      }
    
      # done with vtex.io
    
    } else {
     
    #  # general handling of X-VTEX-Remote-Cache
    #  if ( beresp.http.X-VTEX-Remote-Cache ) {
    #    if ( ! beresp.http.X-VTEX-Remote-Cache == "1" ) {
    #      # things flaged as not cacheable by the backend
    #      set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: would have cached , but backend sent X-vtex-remote-cache=0";
    #      set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // jumping out of vcl_fetch with a hit_for_pass >>";
    #      set beresp.ttl = 120 s;
    #      return(hit_for_pass);
    #    } else {
    #      # we want to cache this one, but we gotta remove the set-cookie first
    #      remove beresp.http.Set-Cookie;
    #    }
    #  }
      
       set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: save cache with 2 Hours ";
       set beresp.ttl = 2h;
       # set beresp.http.cache-control = "private, max-age=120";
       set beresp.http.cache-control = "no-cache";
      
       # cache per root
       if ( (req.url ~ "(?i)^/arquivos/") || (req.url ~ "(?i)^/Control/ArquivoExibir.aspx") || (req.url ~ "(?i)^/Control/ArquivoTextoExibir.aspx") ) {
      
           # strong cache. Store at varnish for 24 hrs and ask client to cache for 24hrs
           #set beresp.do_esi = true;
      
           # force gzipping before storing in the cache
           # commented out by nuba on Fri Apr 19 12:06:13 BRT 2013
           # set beresp.do_gzip = true;
      
           set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: save cache with 24 hours";
           set beresp.ttl = 24h;
           set beresp.http.cache-control = "private, max-age=3600";
           set beresp.http.ressethttpage = "1";
      
           # remove cookies, by nuba on Mon Apr 22 06:38:13 BRT 2013
           unset beresp.http.set-cookie;
      
       }
      
       # cache per filetypes
       if ( req.url ~ "(?i)\.(xml)$" ) {
      
           # small cache. Store at varnish for 12 hrs and ask client cache for 12hrs
           #set beresp.do_esi = true;
           
           # force gzipping before storing in the cache
           # commented out by nuba on Fri Apr 19 12:06:13 BRT 2013
           # set beresp.do_gzip = true;
      
           set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: save cache with 12hrs";
           set beresp.ttl = 12h;
           set beresp.http.cache-control = "private, max-age=7200";
           set beresp.http.ressethttpage = "1";
      
           # remove cookies, by nuba on Mon Apr 22 06:38:13 BRT 2013
           unset beresp.http.set-cookie;
      
      
       } elsif ( req.url ~  "\.js(\?.*)?$") {
      
           # strong cache. Store at varnish for 24 hrs and ask client to cache for 24hrs
           #set beresp.do_esi = true;
      
           # force gzipping before storing in the cache
           # commented out by nuba on Fri Apr 19 12:06:13 BRT 2013
           # set beresp.do_gzip = true;
      
           set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: save cache with 24 hours";
           set beresp.ttl = 24h;
           set beresp.http.cache-control = "private, max-age=7200";
           set beresp.http.ressethttpage = "1";
      
           # remove cookies, by nuba on Mon Apr 22 06:38:13 BRT 2013
           unset beresp.http.set-cookie;
      
       }
      
       # cache per host
       if ( req.http.X-Host ~ "(?i)solrteste." ) {
      
           # strong cache. Store at varnish for 3 minutes and ask client to cache for 3 minutes
           #set beresp.do_esi = true;
      
           # force gzipping before storing in the cache
           # commented out by nuba on Fri Apr 19 12:06:13 BRT 2013
           # set beresp.do_gzip = true;
      
           set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: save cache with 3 minutes";
           set beresp.ttl = 3m;
           #set beresp.http.cache-control = "private, max-age=7200";
           set beresp.http.ressethttpage = "1";
       }
      
       # cache per response status
       if ( beresp.status == 200 || beresp.status == 201 || beresp.status == 202 ||  beresp.status == 203 ||  beresp.status == 204 ||  beresp.status == 205 ||  beresp.status == 206 ||  beresp.status == 207 ||  beresp.status == 208 ||  beresp.status == 226 ) { 
           # success 2xx
           # don't change what was already set
       }
       elsif ( beresp.status == 300 || beresp.status == 301 || beresp.status == 302 ||  beresp.status == 303 ||  beresp.status == 304 ||  beresp.status == 305 ||  beresp.status == 306 ||  beresp.status == 307 ||  beresp.status == 308 ) {
           # redirection 3xx 
           set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: caching 3xx with ttl 60 secs and no client cache";
           set beresp.ttl = 60s;
           set beresp.http.cache-control = "no-cache";
       }
       else {
           # here comes everyone else # 1xx informational # 4xx client error # 5xx server error
           set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // fetch: caching non-3xx-or-2xx with ttl of 10 secs and no client cache";
           set beresp.ttl = 10s;
           set beresp.http.cache-control = "no-cache";
       }
    }
    
    # makes sure everyone gets the gzipping treatment
    if (! beresp.http.Content-Encoding == "gzip" ) {
      if ( ( beresp.http.Content-Type ~ "text/" ) || ( beresp.http.Content-Type ~ "javascript" ) || ( beresp.http.Content-Type ~ "json" ) ) {
        set beresp.do_gzip = true;
      }
    }
    
#	set beresp.http.X-VTEX-Router-StatsKey = "fetch." +  req.http.X-VTEX-Router-Backend-App + "." + req.http.X-VTEX-Router-Backend-Version + "."  + req.http.X-VTEX-Router-Backend-Environment  + "." + regsuball(beresp.backend.ip, "\.", "-") + "." + beresp.status + ".";
#	statsd.incr( beresp.http.X-VTEX-Router-StatsKey );
#	statsd.timing( beresp.http.X-VTEX-Router-StatsKey, timers.req_response_time()  );
#	std.syslog(180, "TEMPO DE RESPOSTA: " + timers.req_response_time() );
#	std.syslog(180, " METRICAS: " + beresp.http.X-VTEX-Router-StatsKey );




 
    
    # body of vcl_fetch
    
    set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // leaving fetch with deliver >>";
    return(deliver);
    
    
    set beresp.http.X-VTEX-Router-Debug = beresp.http.X-VTEX-Router-Debug + " // leaving vcl_fetch >>";

} # end of vcl_fetch


#-------------------------------------------------------------------------------

sub vcl_deliver {
    
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " << entering vcl_deliver";
    if (obj.hits > 0) {
            set resp.http.X-VTEX-Router-Cache = "HIT";
    } else {
            set resp.http.X-VTEX-Router-Cache = "MISS";
    }
    
    
    
    # body of vcl_deliver
    
    # requires the header vmod
    # first just send back the environment we ended up with
    # should be 'stable' if not requested explicitly, or the requested one was invalid
    
    
    
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // leaving vcl_deliver >>";
    
    # general debug
    set resp.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + resp.http.X-VTEX-Router-Debug;
    
    # cache
    set resp.http.X-VTEX-Router-Cache-obj-ttl = req.http.X-VTEX-Router-Cache-obj-ttl;
    set resp.http.X-VTEX-Router-Cache-CDNIgnore = req.http.X-VTEX-Router-Cache-CDNIgnore; 
    
    # cache keys from cookie
    set resp.http.X-VTEX-Router-Cache-Cookie-SGTS   = req.http.X-VTEX-Router-Cache-Cookie-SGTS;   
    
    # routing
    set resp.http.X-VTEX-Router-Backend-Director = req.http.X-VTEX-Router-Backend-Director;
    set resp.http.X-VTEX-Router-Backend-App = req.http.X-VTEX-Router-Backend-App;
    set resp.http.X-VTEX-Router-Backend-Version = req.http.X-VTEX-Router-Backend-Version;
    set resp.http.X-VTEX-Router-Backend-Environment = req.http.X-VTEX-Router-Backend-Environment;
    
    
    
    # debugging the ELB
    if ( req.http.X-Forwarded-For ) {
      set resp.http.X-VTEX-Router-Debug-X-Forwarded-For = req.http.X-Forwarded-For;
    }
    if ( req.http.X-Forwarded-Proto ) {
      set resp.http.X-VTEX-Router-Debug-X-Forwarded-Proto = req.http.X-Forwarded-Proto;
    }
   
 if( !req.http.X-VTEX-Router-Status ) {
  set req.http.X-VTEX-Router-Status = resp.status;
 }


  set req.http.X-Stats-Key = "deliver." +
  req.http.X-VTEX-Router-Backend-App + "." +
  req.http.X-VTEX-Router-Backend-Environment + "." +
  req.http.X-VTEX-Router-Backend-Version + "." +
  resp.http.X-VTEX-Router-Cache + "." +
  resp.status;

 
 statsd.incr( req.http.X-Stats-Key );
 #statsd.counter( req.http.X-Stats-Key, timers.req_response_time() );
 statsd.timing( req.http.X-Stats-Key, timers.req_response_time() );
 std.syslog(180, "TEMPO DE RESPOSTA: " + timers.req_response_time() );
 std.syslog(180, " METRICAS: " + req.http.X-Stats-Key );
 
    return(deliver);
    

} # end of vcl_deliver


#-------------------------------------------------------------------------------

sub vcl_hit {
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " << entering vcl_hit";
    set req.http.X-VTEX-Router-Cache-obj-ttl =  obj.ttl;
    
    
    # body of vcl_hit
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " // leaving vcl_hit >>";

} # end of vcl_hit


#-------------------------------------------------------------------------------

sub vcl_error {
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + " << entering vcl_error";
    # one more time!..
    if ( req.restarts < 1 ) {
      return(restart);
    } 
    
    
    # body of vcl_error
    
    set req.http.X-VTEX-Router-Debug = req.http.X-VTEX-Router-Debug + "// leaving vcl_error >>";

} # end of vcl_error

