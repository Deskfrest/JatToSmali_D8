.class public Ljy/sdk/gamesdk/ui/FastRegFragment;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "FastRegFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private REQUEST_CODE:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    const/16 v0, 0x6f

    .line 41
    iput v0, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->REQUEST_CODE:I

    return-void
.end method

.method private requestPermission(Landroid/view/View;)Z
    .registers 4

    .line 43
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p1, v1, :cond_15

    const/4 p1, 0x1

    .line 44
    new-array p1, p1, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, p1, v0

    .line 46
    iget v0, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->REQUEST_CODE:I

    invoke-static {p0, p1, v0}, Ljy/sdk/common/utils/misc/PermissionUtils;->requestPermissions(Landroid/app/Fragment;[Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_15
    return v0
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_fast_register_succcess"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 85
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_cancel"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_store_image"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_account_pre"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v2, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u8d26\u53f7\u662f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_password_pre"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60a8\u7684"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljy/sdk/gamesdk/GameService;->initInfo:Ljy/sdk/gamesdk/entity/InitInfo;

    sget-object v2, Ljy/sdk/gamesdk/entity/InitInfo;->sdkTopicName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u5bc6\u7801\u662f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_fast_username"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 93
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/FastRegFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_fast_password"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/FastRegFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pwd"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    new-instance p1, Ljy/sdk/gamesdk/ui/FastRegFragment$1;

    invoke-direct {p1, p0}, Ljy/sdk/gamesdk/ui/FastRegFragment$1;-><init>(Ljy/sdk/gamesdk/ui/FastRegFragment;)V

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/ui/FastRegFragment;->setFragmentDismissListener(Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 27
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/FastRegFragment;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->view:Landroid/view/View;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 30
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "tv_cancel"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1a

    .line 31
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/FastRegFragment;->dismiss()V

    goto :goto_50

    .line 32
    :cond_1a
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "tv_store_image"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 34
    invoke-direct {p0, p1}, Ljy/sdk/gamesdk/ui/FastRegFragment;->requestPermission(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_50

    .line 35
    new-instance p1, Ljy/sdk/gamesdk/utils/ScreenShot;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Ljy/sdk/gamesdk/utils/ScreenShot;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->view:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/utils/ScreenShot;->viewShot(Landroid/view/View;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/FastRegFragment;->dismiss()V

    :cond_50
    :goto_50
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    .line 54
    sget-object v0, Ljy/sdk/gamesdk/ui/FastRegFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Ljy/sdk/gamesdk/ui/FastRegFragment;->TAG:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object p2, Ljy/sdk/gamesdk/ui/FastRegFragment;->TAG:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget p2, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->REQUEST_CODE:I

    if-ne p1, p2, :cond_73

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 60
    :goto_2e
    array-length v0, p3

    if-ge p2, v0, :cond_39

    .line 61
    aget v0, p3, p2

    if-eqz v0, :cond_36

    goto :goto_3a

    :cond_36
    add-int/lit8 p2, p2, 0x1

    goto :goto_2e

    :cond_39
    const/4 p1, 0x1

    :goto_3a
    if-eqz p1, :cond_6c

    .line 67
    sget-object p1, Ljy/sdk/gamesdk/ui/FastRegFragment;->TAG:Ljava/lang/String;

    const-string p2, "\u5df2\u5168\u90e8\u6388\u6743"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->view:Landroid/view/View;

    if-eqz p1, :cond_68

    .line 69
    new-instance p1, Ljy/sdk/gamesdk/utils/ScreenShot;

    iget-object p2, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Ljy/sdk/gamesdk/utils/ScreenShot;-><init>(Landroid/app/Activity;)V

    iget-object p2, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->view:Landroid/view/View;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ".png"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Ljy/sdk/gamesdk/utils/ScreenShot;->viewShot(Landroid/view/View;Ljava/lang/String;)V

    .line 70
    :cond_68
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/FastRegFragment;->dismiss()V

    goto :goto_73

    .line 72
    :cond_6c
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/FastRegFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "\u672a\u83b7\u53d6\u6743\u9650, \u4fdd\u5b58\u5931\u8d25!"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_73
    :goto_73
    return-void
.end method
