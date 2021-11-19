.class Ljy/sdk/channel/jy/Jy$2;
.super Ljava/lang/Object;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/gamesdk/api/IApiCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/channel/jy/Jy;->getChannelByTouTiao(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;

.field final synthetic val$channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy;Ljava/lang/String;)V
    .registers 3

    .line 167
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$2;->this$0:Ljy/sdk/channel/jy/Jy;

    iput-object p2, p0, Ljy/sdk/channel/jy/Jy$2;->val$channel:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lorg/json/JSONObject;)V
    .registers 5

    .line 171
    :try_start_0
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c\u4e09\u65b9\u6e20\u9053\u53f7\u8f6c\u6362\u5e73\u53f0\u6e20\u9053\u53f7,tt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "status"

    .line 172
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    .line 173
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 175
    invoke-static {p1}, Ljy/sdk/common/utils/misc/INFChannel;->setCustomChannel(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_4b

    :catch_30
    move-exception p1

    .line 178
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7b2c\u4e09\u65b9\u6e20\u9053\u53f7\u8f6c\u6362\u5e73\u53f0\u6e20\u9053\u53f7\u5f02\u5e38,tt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljy/sdk/channel/jy/Jy$2;->val$channel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_4b
    :goto_4b
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$2;->this$0:Ljy/sdk/channel/jy/Jy;

    const/4 v0, 0x1

    iput-boolean v0, p1, Ljy/sdk/channel/jy/Jy;->setToutiaoStartInit:Z

    return-void
.end method
