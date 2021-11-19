.class public Ljy/sdk/gamesdk/ui/UpdateFragment2;
.super Ljy/sdk/gamesdk/ui/BaseDialogFragment;
.source "UpdateFragment2.java"


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

    const-string v0, "jy_update_download"

    return-object v0
.end method

.method public initView(Landroid/view/View;)V
    .registers 7

    .line 23
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "tv_update_tip"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 24
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "pb_update_progress"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 25
    invoke-virtual {p0}, Ljy/sdk/gamesdk/ui/UpdateFragment2;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "apkInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljy/sdk/gamesdk/update/ApkInfo;

    .line 26
    new-instance v2, Ljy/sdk/gamesdk/update/DownloadManager;

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2;->mActivity:Landroid/app/Activity;

    new-instance v4, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;

    invoke-direct {v4, p0, p1, v0}, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;-><init>(Ljy/sdk/gamesdk/ui/UpdateFragment2;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V

    const/4 p1, 0x1

    invoke-direct {v2, v3, v1, v4, p1}, Ljy/sdk/gamesdk/update/DownloadManager;-><init>(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;Z)V

    .line 49
    invoke-virtual {v2}, Ljy/sdk/gamesdk/update/DownloadManager;->start()V

    return-void
.end method
