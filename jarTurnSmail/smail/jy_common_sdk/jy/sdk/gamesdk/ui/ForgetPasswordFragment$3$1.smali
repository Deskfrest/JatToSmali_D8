.class Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;
.super Ljava/lang/Object;
.source "ForgetPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->onFinish(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;)V
    .registers 2

    .line 157
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;->this$1:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 161
    iget-object v0, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;->this$1:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;

    iget-object v0, v0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;

    iget-object v1, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;->this$1:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;

    iget-object v1, v1, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->val$phone:Ljava/lang/String;

    iget-object v2, p0, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3$1;->this$1:Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;

    iget-object v2, v2, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment$3;->val$verify:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/ui/ForgetPasswordFragment;->nextStep(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
