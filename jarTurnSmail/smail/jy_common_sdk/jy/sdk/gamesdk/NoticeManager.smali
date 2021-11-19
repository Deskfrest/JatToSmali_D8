.class public Ljy/sdk/gamesdk/NoticeManager;
.super Ljava/lang/Object;
.source "NoticeManager.java"


# static fields
.field private static final TYPE_H5:I = 0x3

.field private static final TYPE_IMG:I = 0x2

.field private static final TYPE_MARQUEE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyServer(Landroid/content/Context;Ljy/sdk/gamesdk/entity/Notice;)V
    .registers 5

    .line 80
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iget v1, p1, Ljy/sdk/gamesdk/entity/Notice;->type:I

    iget p1, p1, Ljy/sdk/gamesdk/entity/Notice;->id:I

    new-instance v2, Ljy/sdk/gamesdk/NoticeManager$2;

    invoke-direct {v2}, Ljy/sdk/gamesdk/NoticeManager$2;-><init>()V

    invoke-virtual {v0, p0, v1, p1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkNoticeRecord(Landroid/content/Context;IILjy/sdk/gamesdk/api/IApiCallBack;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljy/sdk/gamesdk/entity/Notice;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    if-nez p1, :cond_6

    return-void

    .line 38
    :cond_6
    iget-object v0, p1, Ljy/sdk/gamesdk/entity/Notice;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 42
    :cond_f
    iget v0, p1, Ljy/sdk/gamesdk/entity/Notice;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 43
    iget-object v0, p1, Ljy/sdk/gamesdk/entity/Notice;->content:Ljava/lang/String;

    new-instance v1, Ljy/sdk/gamesdk/NoticeManager$1;

    invoke-direct {v1, p1, p0}, Ljy/sdk/gamesdk/NoticeManager$1;-><init>(Ljy/sdk/gamesdk/entity/Notice;Landroid/app/Activity;)V

    invoke-static {p0, v0, v1}, Ljy/sdk/gamesdk/widget/NoticeMarqueeView;->show(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto/16 :goto_99

    .line 54
    :cond_20
    iget v0, p1, Ljy/sdk/gamesdk/entity/Notice;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5d

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "NoticeImgFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string p0, "jy_sdk"

    const-string p1, "last NoticeImgFragment is still exist"

    .line 57
    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_39
    new-instance v0, Ljy/sdk/gamesdk/ui/NoticeImgFragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notice"

    .line 63
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 64
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/NoticeImgFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "NoticeImgFragment"

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_99

    .line 66
    :cond_5d
    iget v0, p1, Ljy/sdk/gamesdk/entity/Notice;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_99

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "NoticeH5Fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_76

    const-string p0, "jy_sdk"

    const-string p1, "last NoticeH5Fragment is still exist"

    .line 68
    invoke-static {p0, p1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_76
    new-instance v0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    invoke-direct {v0}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "notice"

    .line 73
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    invoke-virtual {v0, v1}, Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p0

    const-string p1, "NoticeH5Fragment"

    invoke-virtual {p0, v0, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_99
    :goto_99
    return-void
.end method
