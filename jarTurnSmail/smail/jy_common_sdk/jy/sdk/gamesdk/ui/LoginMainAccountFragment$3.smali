.class Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;
.super Ljava/lang/Object;
.source "LoginMainAccountFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$LoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->initAccountStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;)V
    .registers 2

    .line 136
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljy/sdk/gamesdk/entity/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;->this$0:Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;

    invoke-direct {v1, p0, p1}, Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3$1;-><init>(Ljy/sdk/gamesdk/ui/LoginMainAccountFragment$3;Ljava/util/List;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
