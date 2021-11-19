.class Ljy/sdk/gamesdk/ui/AutoLoginFragment$4$1;
.super Ljava/lang/Object;
.source "AutoLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->onFinish(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;)V
    .registers 2

    .line 250
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4$1;->this$1:Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 254
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4$1;->this$1:Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/AutoLoginFragment$4;->this$0:Ljy/sdk/gamesdk/ui/AutoLoginFragment;

    # getter for: Ljy/sdk/gamesdk/ui/AutoLoginFragment;->tv_login_msg:Landroid/widget/TextView;
    invoke-static {v0}, Ljy/sdk/gamesdk/ui/AutoLoginFragment;->access$200(Ljy/sdk/gamesdk/ui/AutoLoginFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
