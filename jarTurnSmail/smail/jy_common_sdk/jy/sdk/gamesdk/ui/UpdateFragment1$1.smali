.class Ljy/sdk/gamesdk/ui/UpdateFragment1$1;
.super Ljava/lang/Object;
.source "UpdateFragment1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/UpdateFragment1;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

.field final synthetic val$info:Ljy/sdk/gamesdk/update/ApkInfo;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/UpdateFragment1;Ljy/sdk/gamesdk/update/ApkInfo;)V
    .registers 3

    .line 30
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->val$info:Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 35
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/UpdateFragment1;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->val$info:Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/update/UpdateManager;->checkLocalFile(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 36
    new-instance p1, Ljy/sdk/gamesdk/ui/UpdateFragment2;

    invoke-direct {p1}, Ljy/sdk/gamesdk/ui/UpdateFragment2;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "apkInfo"

    .line 38
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->val$info:Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 39
    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/UpdateFragment2;->setArguments(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/UpdateFragment2;->setCancelable(Z)V

    .line 41
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

    invoke-virtual {v0}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "UpdateFragment1"

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/ui/UpdateFragment2;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 42
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->dismiss()V

    goto :goto_43

    .line 45
    :cond_35
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/UpdateFragment1;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->val$info:Ljy/sdk/gamesdk/update/ApkInfo;

    invoke-static {p1, v0}, Ljy/sdk/gamesdk/update/InstallUtil;->callInstall(Landroid/app/Activity;Ljy/sdk/gamesdk/update/ApkInfo;)V

    .line 46
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/UpdateFragment1$1;->this$0:Ljy/sdk/gamesdk/ui/UpdateFragment1;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/UpdateFragment1;->dismiss()V

    :goto_43
    return-void
.end method
