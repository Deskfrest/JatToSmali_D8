.class Ljy/sdk/gamesdk/ui/UpdateFragment2$1;
.super Ljava/lang/Object;
.source "UpdateFragment2.java"

# interfaces
.implements Ljy/sdk/gamesdk/update/DownloadManager$DownloadStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/UpdateFragment2;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/UpdateFragment2;

.field final synthetic val$progressBar:Landroid/widget/ProgressBar;

.field final synthetic val$tv_update_tip:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/UpdateFragment2;Landroid/widget/ProgressBar;Landroid/widget/TextView;)V
    .registers 4

    .line 26
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment2;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->val$progressBar:Landroid/widget/ProgressBar;

    iput-object p3, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->val$tv_update_tip:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComp(ZLjy/sdk/gamesdk/update/ApkInfo;Ljava/lang/Exception;)V
    .registers 4

    if-eqz p1, :cond_8

    .line 40
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment2;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/UpdateFragment2;->dismiss()V

    goto :goto_18

    .line 43
    :cond_8
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment2;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/UpdateFragment2;->mActivity:Landroid/app/Activity;

    const-string p2, "~\u66f4\u65b0\u9519\u8bef"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 44
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string p2, "error..."

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void
.end method

.method public onDownloadProgress(I)V
    .registers 5

    const/16 v0, 0x64

    if-gt p1, v0, :cond_26

    if-ltz p1, :cond_26

    .line 31
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->val$progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 32
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/UpdateFragment2$1;->val$tv_update_tip:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u4e0b\u8f7d  ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%)"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method
