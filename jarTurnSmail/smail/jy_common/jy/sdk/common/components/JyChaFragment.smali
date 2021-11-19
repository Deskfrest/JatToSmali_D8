.class public Ljy/sdk/common/components/JyChaFragment;
.super Landroid/app/Fragment;
.source "JyChaFragment.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private akey:Ljava/lang/String;

.field private app_id:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private brur:Ljava/lang/String;

.field private bww:Ljava/lang/String;

.field private bzz1:Ljava/lang/String;

.field private bzz2:Ljava/lang/String;

.field private bzz3:Ljava/lang/String;

.field private bzz4:Ljava/lang/String;

.field private bzz5:Ljava/lang/String;

.field private pluginParam:Ljava/lang/String;

.field private rur:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;

.field private ww:Ljava/lang/String;

.field private zz1:Ljava/lang/String;

.field private zz2:Ljava/lang/String;

.field private zz3:Ljava/lang/String;

.field private zz4:Ljava/lang/String;

.field private zz5:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, "jy2019jy2019ffff"

    .line 29
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    const-string v0, "7D47E64E2D2CA693F06DD907F962A039C114DE5AFF9676FA572AD1EBA7D85F36"

    .line 31
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bww:Ljava/lang/String;

    const-string v0, ""

    .line 32
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->ww:Ljava/lang/String;

    const-string v0, "F7A66391C8680D2F7BC725459DFD16D4"

    .line 34
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz1:Ljava/lang/String;

    const-string v0, ""

    .line 35
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz1:Ljava/lang/String;

    const-string v0, "44F1EF560AA8303C014E2DEB09EFF9F3"

    .line 37
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz2:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz2:Ljava/lang/String;

    const-string v0, "1B390FACEE322A75FFA3B7E2E2F33501"

    .line 40
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz3:Ljava/lang/String;

    const-string v0, ""

    .line 41
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz3:Ljava/lang/String;

    const-string v0, "E3CAD3481B80605B1659016CAE3C52BF"

    .line 43
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz4:Ljava/lang/String;

    const-string v0, ""

    .line 44
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz4:Ljava/lang/String;

    const-string v0, "2A759D2529A8D7F765F853F537B7F74F2F498C23C2ED8512D7C83F2E1A837DAD"

    .line 46
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz5:Ljava/lang/String;

    const-string v0, ""

    .line 47
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz5:Ljava/lang/String;

    const-string v0, "547819B70425509FFBB48D90969E1DFA421D7B331FE0C33C28BC45E2083402BAED041A06350E844DB9193658F6334E74"

    .line 49
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->brur:Ljava/lang/String;

    const-string v0, ""

    .line 50
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->rur:Ljava/lang/String;

    const-string v0, "jy_sdk"

    .line 52
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Ljy/sdk/common/components/JyChaFragment;->ww:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;
    .registers 1

    .line 27
    iget-object p0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Ljy/sdk/common/components/JyChaFragment;)Landroid/app/Activity;
    .registers 1

    .line 27
    iget-object p0, p0, Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private destoryWebView()V
    .registers 8

    .line 221
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    if-eqz v0, :cond_37

    .line 223
    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, "text/html"

    const-string v5, "utf-8"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 225
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 226
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 227
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 228
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 229
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    :cond_37
    return-void
.end method

.method private initKeywords()V
    .registers 3

    .line 77
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bww:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->ww:Ljava/lang/String;

    .line 78
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz1:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz1:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz2:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz2:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz3:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz3:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz4:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz4:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->bzz5:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz5:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->brur:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->akey:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/common/utils/encode/Encryption;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->rur:Ljava/lang/String;

    return-void
.end method

.method private initWebView()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 90
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Ljy/sdk/common/components/JyChaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    .line 91
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    .line 92
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 93
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x2

    const/16 v4, 0x15

    if-lt v2, v4, :cond_27

    .line 94
    iget-object v2, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 96
    :cond_27
    iget-object v2, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    const-string v4, "android"

    invoke-virtual {v2, p0, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 101
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 102
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 103
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 105
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 106
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const-string v2, "utf-8"

    .line 114
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    return-void
.end method

.method private startWork()V
    .registers 5

    .line 121
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljy/sdk/common/components/JyChaFragment$1;

    invoke-direct {v1, p0}, Ljy/sdk/common/components/JyChaFragment$1;-><init>(Ljy/sdk/common/components/JyChaFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 161
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Ljy/sdk/common/components/JyChaFragment$2;

    invoke-direct {v1, p0}, Ljy/sdk/common/components/JyChaFragment$2;-><init>(Ljy/sdk/common/components/JyChaFragment;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->rur:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->pluginParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "swi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeSwiWebView()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 267
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    const-string v1, "closeSwiWebView"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :try_start_7
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-void
.end method

.method public getAppIdAndKey()Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 250
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    const-string v1, "getAppIdAndKey"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/common/components/JyChaFragment;->app_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public md5GetSign(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "||"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment;->app_key:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljy/sdk/common/utils/encode/MD5Provider;->md5string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 197
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 63
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Ljy/sdk/common/components/JyChaFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;

    .line 66
    invoke-virtual {p0}, Ljy/sdk/common/components/JyChaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pluginParam"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/common/components/JyChaFragment;->pluginParam:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Ljy/sdk/common/components/JyChaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "pluginKeyId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 68
    aget-object v0, p1, v0

    iput-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->app_id:Ljava/lang/String;

    const/4 v0, 0x1

    .line 69
    aget-object p1, p1, v0

    iput-object p1, p0, Ljy/sdk/common/components/JyChaFragment;->app_key:Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljy/sdk/common/components/JyChaFragment;->initKeywords()V

    .line 71
    invoke-direct {p0}, Ljy/sdk/common/components/JyChaFragment;->initWebView()V

    .line 72
    invoke-direct {p0}, Ljy/sdk/common/components/JyChaFragment;->startWork()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 191
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    const-string p2, "onCreateView"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment;->webView:Landroid/webkit/WebView;

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 215
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Ljy/sdk/common/components/JyChaFragment;->destoryWebView()V

    .line 217
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 210
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 1

    .line 204
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method

.method public parsezz(Ljava/lang/String;)Z
    .registers 5

    .line 180
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2b

    .line 182
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_29

    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz3:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->zz4:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_29

    return v1

    :cond_29
    const/4 p1, 0x0

    return p1

    :cond_2b
    :goto_2b
    return v1
.end method

.method public setSwiType(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 237
    :try_start_0
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwiType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 239
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1b
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 257
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public swiResult(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 262
    iget-object v0, p0, Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swiResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
