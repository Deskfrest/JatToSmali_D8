.class public Ljy/sdk/gamesdk/ui/UpdateFragment1;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "UpdateFragment1.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljy/sdk/gamesdk/ui/BaseDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutName()Ljava/lang/String;
    .registers 2

    const-string v0, "jy_update_tips"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 5

    .line 24
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_update_tip"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 25
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "tv_update_now"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 27
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "apkInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljy/sdk/gamesdk/update/ApkInfo;

    .line 28
    iget-object v2, v1, Ljy/sdk/gamesdk/update/ApkInfo;->upTrip:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    new-instance v0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;

    invoke-direct {v0, p0, v1}, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;-><init>(Ljy/sdk/gamesdk/ui/UpdateFragment1;Ljy/sdk/gamesdk/update/ApkInfo;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
