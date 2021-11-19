.class public Ljy/sdk/gamesdk/ui/NoticeH5Fragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "NoticeH5Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private clicked:Z

.field private fl_content:Landroid/widget/FrameLayout;

.field private notice:Ljy/sdk/gamesdk/entity/Notice;

.field private webView:Ljy/sdk/gamesdk/widget/MyWebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->clicked:Z

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->clicked:Z

    return p0
.end method

.method static synthetic access$002(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;Z)Z
    .registers 2

    .line 44
    iput-boolean p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->clicked:Z

    return p1
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)Ljy/sdk/gamesdk/entity/Notice;
    .registers 1

    .line 44
    iget-object p0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    return-object p0
.end method

.method private destoryWebView()V
    .registers 9

    .line 195
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    if-eqz v0, :cond_49

    .line 196
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 197
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljy/sdk/gamesdk/widget/MyWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearHistory()V

    .line 199
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 200
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearFormData()V

    .line 201
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->stopLoading()V

    .line 202
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->removeAllViews()V

    .line 203
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->destroy()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    :goto_49
    return-void
.end method

.method private resetLayout(Landroid/widget/FrameLayout;)V
    .registers 4

    .line 76
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/entity/Notice;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    .line 77
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    if-nez v0, :cond_16

    .line 78
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->dismiss()V

    return-void

    .line 82
    :cond_16
    new-instance v0, Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    .line 83
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const-string v1, "android"

    invoke-virtual {v0, p0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$1;-><init>(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$2;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$2;-><init>(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->notice:Ljy/sdk/gamesdk/entity/Notice;

    iget-object v1, v1, Ljy/sdk/gamesdk/entity/Notice;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->loadUrl(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$3;-><init>(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 122
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public checkLocalApp(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 169
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/update/UpdateManager;->checkLocalInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clipboard(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 157
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Label"

    .line 158
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1f

    :catch_14
    move-exception p1

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u590d\u5236\u5f02\u5e38"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public closeWebView()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 140
    sget-object v0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->TAG:Ljava/lang/String;

    const-string v1, "close called"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->dismiss()V

    return-void
.end method

.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_login_h5_ad"

    return-object v0
.end method

.method public gotoAccountCenter(I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 150
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    .line 56
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "fl_content"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->fl_content:Landroid/widget/FrameLayout;

    .line 57
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "h5_close"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->fl_content:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->resetLayout(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public installApp(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 181
    new-instance v0, Ljy/sdk/gamesdk/update/Spread;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/update/Spread;-><init>(Landroid/app/Activity;)V

    const-string v1, "H5\u516c\u544a"

    const-string v2, "installApp"

    invoke-virtual {v0, p1, v1, v2}, Ljy/sdk/gamesdk/update/Spread;->spreadAppByApkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 215
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "h5_close"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 216
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->dismiss()V

    :cond_13
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->destoryWebView()V

    .line 191
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onDestroy()V

    return-void
.end method

.method public onStart()V
    .registers 8

    .line 223
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStart()V

    .line 224
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 226
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 227
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 228
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    int-to-double v3, v0

    const-wide v5, 0x3feb333333333333L    # 0.85

    mul-double v3, v3, v5

    double-to-int v0, v3

    int-to-double v3, v1

    mul-double v3, v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_37
    return-void
.end method

.method public openApp(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 131
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/utils/AppUtils;->launchApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public spreadApp(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 175
    new-instance v0, Ljy/sdk/gamesdk/update/Spread;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/update/Spread;-><init>(Landroid/app/Activity;)V

    const-string v1, "H5\u516c\u544a"

    const-string v2, "spreadApp"

    invoke-virtual {v0, p1, v1, v2}, Ljy/sdk/gamesdk/update/Spread;->spreadAppOnlyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 145
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
