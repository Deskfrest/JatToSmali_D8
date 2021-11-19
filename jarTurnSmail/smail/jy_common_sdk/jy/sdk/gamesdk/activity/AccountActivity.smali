.class public Ljy/sdk/gamesdk/activity/AccountActivity;
.super Landroid/app/Activity;
.source "AccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private activity:Landroid/app/Activity;

.field private fl_content:Landroid/widget/FrameLayout;

.field private mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

.field progressBar:Landroid/widget/ProgressBar;

.field private root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;

.field private screenHeight:I

.field private url:Ljava/lang/String;

.field private webView:Ljy/sdk/gamesdk/widget/MyWebView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 73
    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->url:Ljava/lang/String;

    const-string v0, "jy_sdk"

    .line 75
    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;
    .registers 1

    .line 67
    iget-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Ljy/sdk/gamesdk/activity/AccountActivity;)I
    .registers 1

    .line 67
    iget p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->screenHeight:I

    return p0
.end method

.method static synthetic access$200(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/widget/MyWebView;
    .registers 1

    .line 67
    iget-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    return-object p0
.end method

.method static synthetic access$300(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/widget/KeyboardLayout;
    .registers 1

    .line 67
    iget-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    return-object p0
.end method

.method static synthetic access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;
    .registers 1

    .line 67
    iget-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$600(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
    .registers 1

    .line 67
    iget-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    return-object p0
.end method

.method private destoryWebView()V
    .registers 9

    .line 504
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    if-eqz v0, :cond_44

    .line 505
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 506
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const/4 v3, 0x0

    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "utf-8"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljy/sdk/gamesdk/widget/MyWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearHistory()V

    .line 508
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 509
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->clearFormData()V

    .line 510
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->stopLoading()V

    .line 511
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->removeAllViews()V

    .line 512
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/widget/MyWebView;->destroy()V

    const/4 v0, 0x0

    .line 513
    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    :cond_44
    return-void
.end method

.method private getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .registers 7

    const/4 v0, 0x2

    .line 482
    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 483
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 484
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v4, "jy_white"

    invoke-virtual {v2, v3, v4}, Ljy/sdk/common/utils/misc/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 485
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 486
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v3

    iget-object v4, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v5, "jy_deepblue"

    invoke-virtual {v3, v4, v5}, Ljy/sdk/common/utils/misc/ResUtils;->getColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 487
    new-instance v3, Landroid/graphics/drawable/ClipDrawable;

    const/4 v4, 0x1

    const v5, 0x800003

    invoke-direct {v3, v2, v5, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    aput-object v3, v0, v4

    .line 490
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x1020000

    .line 491
    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const v0, 0x102000d

    .line 492
    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object v1
.end method

.method private initView()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 110
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "fl_content"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->fl_content:Landroid/widget/FrameLayout;

    .line 111
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "root_keyboard"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Ljy/sdk/gamesdk/widget/KeyboardLayout;

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    .line 112
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    new-instance v1, Ljy/sdk/gamesdk/activity/AccountActivity$1;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/activity/AccountActivity$1;-><init>(Ljy/sdk/gamesdk/activity/AccountActivity;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->screenHeight:I

    .line 122
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;

    new-instance v1, Ljy/sdk/gamesdk/activity/AccountActivity$2;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/activity/AccountActivity$2;-><init>(Ljy/sdk/gamesdk/activity/AccountActivity;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->setKeyboardListener(Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;)V

    .line 139
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->fl_content:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->resetLayout(Landroid/widget/FrameLayout;)V

    .line 141
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->initWeb()V

    return-void
.end method

.method private initWeb()V
    .registers 3

    .line 146
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    new-instance v1, Ljy/sdk/gamesdk/activity/AccountActivity$3;

    invoke-direct {v1, p0}, Ljy/sdk/gamesdk/activity/AccountActivity$3;-><init>(Ljy/sdk/gamesdk/activity/AccountActivity;)V

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 186
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    const-string v1, "android"

    invoke-virtual {v0, p0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    invoke-direct {v0, p0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;-><init>(Ljy/sdk/gamesdk/activity/AccountActivity;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    .line 188
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 189
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private resetLayout(Landroid/widget/FrameLayout;)V
    .registers 7

    .line 450
    new-instance v0, Ljy/sdk/gamesdk/widget/MyWebView;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/widget/MyWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    .line 452
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v0}, Ljy/sdk/common/utils/misc/UIUtil;->isOritationVertical(Landroid/content/Context;)Z

    move-result v0

    .line 453
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v1}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 454
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v2}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    .line 456
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v0, :cond_35

    .line 458
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    const-string v4, "oritationVertical:true"

    invoke-static {v0, v4}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v1, v1, 0x6

    .line 460
    div-int/lit8 v1, v1, 0x7

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    mul-int/lit8 v2, v2, 0x3

    .line 461
    div-int/lit8 v2, v2, 0x4

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_44

    .line 463
    :cond_35
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    const-string v4, "oritationVertical:false"

    invoke-static {v0, v4}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v1, v1, 0x2

    .line 465
    div-int/lit8 v1, v1, 0x3

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 466
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 469
    :goto_44
    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 472
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 473
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const/high16 v3, 0x40000000    # 2.0f

    .line 475
    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 476
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 477
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static showAccountActivity(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 206
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "jy_sdk"

    const-string p1, "sid is null"

    .line 207
    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 210
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "url"

    .line 211
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public autoLogin(Z)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    if-eqz p1, :cond_1d

    .line 563
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v1, "last_sid"

    sget-object v2, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v2}, Ljy/sdk/gamesdk/entity/UserInfo;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 564
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v1, "last_sid_username"

    sget-object v2, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v2}, Ljy/sdk/gamesdk/entity/UserInfo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2f

    .line 566
    :cond_1d
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v1, "last_sid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 567
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v1, "last_sid_username"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Ljy/sdk/gamesdk/utils/SpUtil;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_2f
    const-string v0, "auto_login_check"

    .line 569
    invoke-static {p0, v0, p1}, Ljy/sdk/gamesdk/utils/SpUtil;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public checkLocalApp(Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 677
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/update/UpdateManager;->checkLocalInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public clipboard(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    const-string v0, "clipboard"

    .line 709
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "Label"

    .line 710
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 711
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1d

    :catch_12
    move-exception p1

    .line 713
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v0, "\u590d\u5236\u5f02\u5e38"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public closeWebView()V
    .registers 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 526
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->finish()V

    return-void
.end method

.method public getRoleInfo()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 627
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "getRoleInfo"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    sget-object v0, Ljy/sdk/gamesdk/GameService;->currentUser:Ljy/sdk/gamesdk/entity/UserInfo;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/entity/UserInfo;->getExtraData()Ljy/sdk/shell/proxy/JyUserExtraData;

    move-result-object v0

    .line 630
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-nez v0, :cond_19

    .line 632
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    :try_start_19
    const-string v2, "serverId"

    .line 635
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljy/sdk/shell/proxy/JyUserExtraData;->getServerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "serverName"

    .line 636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljy/sdk/shell/proxy/JyUserExtraData;->getServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleId"

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roleName"

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljy/sdk/shell/proxy/JyUserExtraData;->getRoleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_81
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_81} :catch_82

    goto :goto_86

    :catch_82
    move-exception v0

    .line 640
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 642
    :goto_86
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public installApp(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 695
    new-instance v0, Ljy/sdk/gamesdk/update/Spread;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/update/Spread;-><init>(Landroid/app/Activity;)V

    const-string v1, "\u6d6e\u6807"

    const-string v2, "installApp"

    invoke-virtual {v0, p1, v1, v2}, Ljy/sdk/gamesdk/update/Spread;->spreadAppByApkInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loginType()I
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 664
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v1, "last_sid"

    invoke-static {v0, v1}, Ljy/sdk/gamesdk/utils/SpUtil;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public logout(Z)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 655
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/LoginActivity;->onLogout(Z)V

    .line 656
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->finish()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/16 v0, 0x80

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3d

    .line 419
    :try_start_5
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object v0, v0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_12

    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object v0, v0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_12

    return-void

    :cond_12
    if-eqz p3, :cond_1d

    const/4 v0, -0x1

    if-eq p2, v0, :cond_18

    goto :goto_1d

    .line 421
    :cond_18
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move-object v0, v1

    .line 422
    :goto_1e
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object v2, v2, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_29

    .line 423
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    # invokes: Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->onActivityResultAboveL(IILandroid/content/Intent;)V
    invoke-static {v2, p1, p2, p3}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->access$700(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;IILandroid/content/Intent;)V

    .line 425
    :cond_29
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_7d

    .line 426
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 427
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iput-object v1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_7d

    :catch_3b
    move-exception p1

    goto :goto_61

    :cond_3d
    const/16 p2, 0x81

    if-ne p1, p2, :cond_7d

    .line 430
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->tmpImgPath:Ljava/lang/String;
    invoke-static {p2}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->access$800(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->getOutTmpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x1

    .line 431
    new-array p2, p2, [Landroid/net/Uri;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 433
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_7d

    .line 434
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_60} :catch_3b

    goto :goto_7d

    .line 438
    :goto_61
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string p3, "error~"

    invoke-static {p2, p3}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 439
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p2, p2, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p2, :cond_75

    .line 440
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p2, p2, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p2, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 442
    :cond_75
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 443
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 105
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_11

    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-gt p1, v0, :cond_2e

    .line 82
    :cond_11
    sget p1, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->setRequestedOrientation(I)V

    .line 83
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRequestedOrientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ljy/sdk/gamesdk/Global;->GAME_ORITATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_2e
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p1

    const-string v0, "jy_account"

    invoke-virtual {p1, v0}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->setContentView(I)V

    .line 86
    iput-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    .line 88
    invoke-virtual {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->url:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->url:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 90
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkGetBuoyCenterUrl(Landroid/app/Activity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->url:Ljava/lang/String;

    .line 92
    :cond_5f
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 498
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity;->destoryWebView()V

    .line 499
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public openApp(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 576
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/gamesdk/utils/AppUtils;->launchApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    new-instance v2, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v3, 0x1

    const/16 v4, 0x8

    iget-object v5, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, p1, v5}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method

.method public parsezfb(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "alipays:"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2b

    const-string v0, "alipay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2b

    .line 197
    :cond_12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_29

    const-string v0, "platformapi"

    .line 198
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

.method public resetPass(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public sdkVersion()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "3.0.8"

    return-object v0
.end method

.method public serviceQQ(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 587
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 588
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    const-string v0, "\u914d\u7f6e\u7684QQ\u53f7\u4e3a\u7a7a"

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    .line 591
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mqqwpa://im/chat?chat_type=wpa&uin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&version=1"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 592
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 593
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_3c

    :catch_33
    move-exception p1

    .line 596
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, "\u7a0b\u5e8f\u5f02\u5e38\uff0c\u6216\u8005\u5b89\u88c5\u7684QQ\u7248\u672c\u4e0d\u652f\u6301"

    .line 597
    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public setPayType(Ljava/lang/String;)V
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public showFloatNewMsg(I)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 534
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFloatNewMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/activity/AccountActivity$4;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/activity/AccountActivity$4;-><init>(Ljy/sdk/gamesdk/activity/AccountActivity;I)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public spreadApp(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 554
    new-instance v0, Ljy/sdk/gamesdk/update/Spread;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Ljy/sdk/gamesdk/update/Spread;-><init>(Landroid/app/Activity;)V

    const-string v1, "\u6d6e\u6807"

    const-string v2, "spreadApp"

    invoke-virtual {v0, p1, v1, v2}, Ljy/sdk/gamesdk/update/Spread;->spreadAppOnlyUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 647
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
