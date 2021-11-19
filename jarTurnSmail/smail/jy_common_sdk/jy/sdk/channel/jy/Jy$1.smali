.class Ljy/sdk/channel/jy/Jy$1;
.super Ljava/lang/Object;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/gamesdk/ISdkApi$IJyInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/channel/jy/Jy;->initChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IinitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/common/abs/innercallbacks/IinitListener;Landroid/app/Activity;)V
    .registers 4

    .line 93
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$1;->this$0:Ljy/sdk/channel/jy/Jy;

    iput-object p2, p0, Ljy/sdk/channel/jy/Jy$1;->val$initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;

    iput-object p3, p0, Ljy/sdk/channel/jy/Jy$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initFailed(Ljava/lang/String;)V
    .registers 8

    .line 103
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$1;->val$initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;

    invoke-interface {v0, p1}, Ljy/sdk/common/abs/innercallbacks/IinitListener;->initFailed(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    iget-object v1, p0, Ljy/sdk/channel/jy/Jy$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljy/sdk/gamesdk/entity/DataInfo;

    iget-object v3, p0, Ljy/sdk/channel/jy/Jy$1;->val$activity:Landroid/app/Activity;

    .line 106
    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, p1, v3}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0, v1, v2}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    return-void
.end method

.method public initSuc(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$1;->val$initListener:Ljy/sdk/common/abs/innercallbacks/IinitListener;

    invoke-interface {v0, p1}, Ljy/sdk/common/abs/innercallbacks/IinitListener;->initSuc(Ljava/util/Map;)V

    return-void
.end method
