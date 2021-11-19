.class public Ljy/sdk/gamesdk/floatview/DeviceUtil;
.super Ljava/lang/Object;
.source "DeviceUtil.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "jy.sdk.gamesdk.floatview.DeviceUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceHeight(Landroid/content/Context;)I
    .registers 1

    .line 73
    invoke-static {p0}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getDeviceSDKVersion()I
    .registers 1

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDeviceVersion()Ljava/lang/String;
    .registers 1

    .line 24
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getMemorySize(Landroid/content/Context;)I
    .registers 2

    const-string v0, "activity"

    .line 38
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 39
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result p0

    return p0
.end method

.method public static getOnlyTopBarHeight(Landroid/content/Context;)I
    .registers 5

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1f

    :cond_19
    const/high16 v0, 0x41a00000    # 20.0f

    .line 93
    invoke-static {p0, v0}, Ljy/sdk/gamesdk/floatview/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result p0

    :goto_1f
    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 1

    .line 103
    invoke-static {p0}, Ljy/sdk/common/utils/misc/UIUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getTopBarHeight(Landroid/app/Activity;)I
    .registers 2

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public static isWeixinAvilible(Landroid/content/Context;)Z
    .registers 5

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_27

    const/4 v1, 0x0

    .line 58
    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 59
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_27
    return v0
.end method


# virtual methods
.method public hideInputKeyboard(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "input_method"

    .line 46
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 47
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
