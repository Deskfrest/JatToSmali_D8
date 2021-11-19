.class Ljy/sdk/channel/jy/Jy$4;
.super Landroid/os/Handler;
.source "Jy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/channel/jy/Jy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy;)V
    .registers 2

    .line 340
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$4;->this$0:Ljy/sdk/channel/jy/Jy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x111

    if-eq v0, v1, :cond_7

    goto :goto_21

    .line 344
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljy/sdk/channel/jy/Jy$PayQuery;

    .line 345
    iget v0, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->querySum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->querySum:I

    .line 346
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v0

    sget-object v1, Ljy/sdk/gamesdk/GameService;->context:Landroid/content/Context;

    iget-object v2, p1, Ljy/sdk/channel/jy/Jy$PayQuery;->orderId:Ljava/lang/String;

    new-instance v3, Ljy/sdk/channel/jy/Jy$4$1;

    invoke-direct {v3, p0, p1}, Ljy/sdk/channel/jy/Jy$4$1;-><init>(Ljy/sdk/channel/jy/Jy$4;Ljy/sdk/channel/jy/Jy$PayQuery;)V

    invoke-virtual {v0, v1, v2, v3}, Ljy/sdk/gamesdk/api/ApiClient;->sdkPayQuery(Landroid/content/Context;Ljava/lang/String;Ljy/sdk/gamesdk/api/IApiCallBack;)V

    :goto_21
    return-void
.end method
