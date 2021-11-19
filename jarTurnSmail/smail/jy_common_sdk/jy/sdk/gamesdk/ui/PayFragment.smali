.class public Ljy/sdk/gamesdk/ui/PayFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "PayFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private fl_content:Landroid/widget/FrameLayout;

.field jyOrderId:Ljava/lang/String;

.field private mPayType:Ljava/lang/String;

.field url:Ljava/lang/String;

.field private webView:Ljy/sdk/gamesdk/widget/MyWebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 198
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mPayType:Ljava/lang/String;

    return-void
.end method

.method private static checkResult(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 230
    sget-object v0, Ljy/sdk/gamesdk/activity/PayActivity;->ipayListener:Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;

    if-nez v0, :cond_5

    return-void

    .line 233
    :cond_5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 234
    sget-object p0, Ljy/sdk/gamesdk/activity/PayActivity;->ipayListener:Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;

    const-string p1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {p0, p1}, Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;->onPayFail(Ljava/lang/String;)V

    .line 235
    sget-object p0, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    const-string p1, "payType is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 238
    :cond_1a
    sget-object v0, Ljy/sdk/gamesdk/activity/PayActivity;->ipayListener:Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;

    invoke-interface {v0, p1, p0}, Ljy/sdk/gamesdk/ISdkApi$IJyPayListener;->onPayQuery(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private destoryWebView()V
    .registers 9

    .line 252
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    if-eqz v0, :cond_49

    .line 253
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 254
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljy/sdk/gamesdk/widget/MyWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearHistory()V

    .line 256
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 257
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearFormData()V

    .line 258
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->stopLoading()V

    .line 259
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->removeAllViews()V

    .line 260
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->destroy()V

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    .line 264
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method public clipboard(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Label"

    .line 211
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 212
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1f

    :catch_14
    move-exception p1

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 215
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u590d\u5236\u5f02\u5e38"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method public closeWebView()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 184
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->dismiss()V

    return-void
.end method

.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_pay_main"

    return-object v0
.end method

.method public gotoAccountCenter(I)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 194
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 52
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "fl_content"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->fl_content:Landroid/widget/FrameLayout;

    .line 53
    new-instance p1, Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Ljy/sdk/gamesdk/widget/MyWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    .line 54
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/widget/MyWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 55
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/widget/MyWebView;->setVerticalScrollBarEnabled(Z)V

    .line 56
    new-instance p1, Ljy/sdk/gamesdk/ui/ProgressLoading;

    invoke-direct {p1}, Ljy/sdk/gamesdk/ui/ProgressLoading;-><init>()V

    .line 57
    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/ProgressLoading;->setCancelable(Z)V

    .line 58
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PayFragment"

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/ui/ProgressLoading;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->fl_content:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljy/sdk/gamesdk/ui/PayFragment$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/ui/PayFragment$1;-><init>(Ljy/sdk/gamesdk/ui/PayFragment;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 109
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljy/sdk/gamesdk/ui/PayFragment$2;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/PayFragment$2;-><init>(Ljy/sdk/gamesdk/ui/PayFragment;Ljy/sdk/gamesdk/ui/ProgressLoading;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 118
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const-string v0, "android"

    invoke-virtual {p1, p0, v0}, Ljy/sdk/gamesdk/widget/MyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_88

    const-string v0, "url"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "jyOrderId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "url"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->url:Ljava/lang/String;

    const-string v0, "jyOrderId"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->jyOrderId:Ljava/lang/String;

    goto :goto_8f

    .line 124
    :cond_88
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    const-string v0, "\u751f\u6210\u652f\u4ed8\u8bf7\u6c42\u5931\u8d25!"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 127
    :goto_8f
    sget-object p1, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/widget/MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 222
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->destoryWebView()V

    .line 223
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onDestroy()V

    .line 224
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mPayType:Ljava/lang/String;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->jyOrderId:Ljava/lang/String;

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/ui/PayFragment;->checkResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 p3, 0x4

    if-ne p2, p3, :cond_5

    return p1

    :cond_5
    return p1
.end method

.method public onPause()V
    .registers 3

    .line 154
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onPause()V

    .line 155
    sget-object v0, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 161
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onResume()V

    .line 162
    sget-object v0, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mPayType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 167
    :cond_13
    sget-object v0, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    const-string v1, "\u8c03\u7528js"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:csFocusCallback(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mPayType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljy/sdk/gamesdk/ui/PayFragment$3;

    invoke-direct {v2, p0}, Ljy/sdk/gamesdk/ui/PayFragment$3;-><init>(Ljy/sdk/gamesdk/ui/PayFragment;)V

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/widget/MyWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 271
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStart()V

    .line 272
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 273
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/PayFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_1a
    return-void
.end method

.method public onStop()V
    .registers 3

    .line 178
    invoke-super {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->onStop()V

    .line 179
    sget-object v0, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openApp(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 244
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/utils/AppUtils;->launchApp(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public parsezfb(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "alipays:"

    .line 142
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2b

    .line 144
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_29

    const-string v0, "platformapi"

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "startapp"

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

.method public setPayType(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 202
    sget-object v0, Ljy/sdk/gamesdk/ui/PayFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "payType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mPayType:Ljava/lang/String;

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 189
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
