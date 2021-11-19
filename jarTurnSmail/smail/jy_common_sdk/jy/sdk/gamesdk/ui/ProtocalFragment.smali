.class public Ljy/sdk/gamesdk/ui/ProtocalFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "ProtocalFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# static fields
.field public static final TYPE_OPEN_LOGIN_MAIN_ACCOUNT:I = 0x1

.field public static final TYPE_OPEN_LOGIN_MAIN_PHONE:I = 0x2

.field public static final TYPE_OPEN_NORMAL_REG:I = 0x3


# instance fields
.field private fl_content:Landroid/widget/FrameLayout;

.field private webView:Ljy/sdk/gamesdk/widget/MyWebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method private destoryWebView()V
    .registers 9

    .line 154
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    if-eqz v0, :cond_49

    .line 155
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljy/sdk/gamesdk/widget/MyWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearHistory()V

    .line 158
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 159
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearFormData()V

    .line 160
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->stopLoading()V

    .line 161
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->removeAllViews()V

    .line 162
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->destroy()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    :goto_49
    return-void
.end method

.method private resetLayout(Landroid/widget/FrameLayout;)V
    .registers 6

    const-string v0, "jy_sdk"

    const-string v1, "resetLayout"

    .line 80
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->isOritationVertical(Landroid/content/Context;)Z

    move-result v0

    .line 83
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 84
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 86
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_26

    mul-int/lit8 v1, v1, 0x4

    .line 88
    div-int/lit8 v1, v1, 0x5

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2c

    :cond_26
    mul-int/lit8 v1, v1, 0x2

    .line 90
    div-int/lit8 v1, v1, 0x5

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_2c
    mul-int/lit8 v2, v2, 0x5

    .line 92
    div-int/lit8 v2, v2, 0x6

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    new-instance v0, Ljy/sdk/gamesdk/ui/ProgressLoading;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/ProgressLoading;-><init>()V

    const/4 v1, 0x0

    .line 98
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/ProgressLoading;->setCancelable(Z)V

    .line 99
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ProtocalFragment"

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/ui/ProgressLoading;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    new-instance v1, Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljy/sdk/gamesdk/widget/MyWebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    .line 103
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const-string v2, "android"

    invoke-virtual {v1, p0, v2}, Ljy/sdk/gamesdk/widget/MyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v2, Ljy/sdk/gamesdk/ui/ProtocalFragment$2;

    invoke-direct {v2, p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment$2;-><init>(Ljy/sdk/gamesdk/ui/ProtocalFragment;)V

    invoke-virtual {v1, v2}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v2, Ljy/sdk/gamesdk/ui/ProtocalFragment$3;

    invoke-direct {v2, p0, v0}, Ljy/sdk/gamesdk/ui/ProtocalFragment$3;-><init>(Ljy/sdk/gamesdk/ui/ProtocalFragment;Ljy/sdk/gamesdk/ui/ProgressLoading;)V

    invoke-virtual {v1, v2}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 123
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    sget-object v1, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v1, Ljy/sdk/gamesdk/entity/InitInfo;->userpro:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->loadUrl(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 129
    sget-object v0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->TAG:Ljava/lang/String;

    const-string v1, "close called"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->dismiss()V

    return-void
.end method

.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_protocal"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 4

    const-string v0, "jy_sdk"

    const-string v1, "initView"

    .line 42
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "fl_content"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->fl_content:Landroid/widget/FrameLayout;

    .line 44
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment;->fl_content:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->resetLayout(Landroid/widget/FrameLayout;)V

    .line 45
    new-instance p1, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment$1;-><init>(Ljy/sdk/gamesdk/ui/ProtocalFragment;)V

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 135
    invoke-super {p0, p1}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 136
    sget-object p1, Ljy/sdk/gamesdk/ui/ProtocalFragment;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 148
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->destoryWebView()V

    .line 149
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onDestroy()V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .registers 2

    .line 141
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStart()V

    .line 142
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 143
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/ProtocalFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1a
    return-void
.end method
