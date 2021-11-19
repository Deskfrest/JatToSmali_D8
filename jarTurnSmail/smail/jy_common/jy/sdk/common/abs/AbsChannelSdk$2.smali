.class Ljy/sdk/common/abs/AbsChannelSdk$2;
.super Ljava/lang/Object;
.source "AbsChannelSdk.java"

# interfaces
.implements Ljy/sdk/common/abs/innercallbacks/IloginStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/common/abs/AbsChannelSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/abs/AbsChannelSdk;


# direct methods
.method constructor <init>(Ljy/sdk/common/abs/AbsChannelSdk;)V
    .registers 2

    .line 142
    iput-object p1, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFailed(Ljava/lang/String;)V
    .registers 5

    .line 183
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u8c03cp \u767b\u5f55\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    const/4 v1, 0x0

    # setter for: Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z
    invoke-static {v0, v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$302(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z

    .line 186
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$2$2;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$2$2;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$2;Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLoginSuc(Ljava/util/Map;Ljy/sdk/common/abs/innercallbacks/INotifyListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljy/sdk/common/abs/innercallbacks/INotifyListener;",
            ")V"
        }
    .end annotation

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    iget-object v1, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v3, v3, Ljy/sdk/common/abs/AbsChannelSdk;->channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v3, v3, Ljy/sdk/common/abs/AbsChannelSdk;->subChannelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v3, v3, Ljy/sdk/common/abs/AbsChannelSdk;->app_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "sid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljy/sdk/common/abs/AbsChannelSdk;->channelInfo:Ljava/lang/String;

    :try_start_41
    const-string v1, "gameId"

    .line 151
    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, v2, Ljy/sdk/common/abs/AbsChannelSdk;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    .line 152
    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, v2, Ljy/sdk/common/abs/AbsChannelSdk;->channel_version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    .line 153
    iget-object v2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    iget-object v2, v2, Ljy/sdk/common/abs/AbsChannelSdk;->channelInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ext"

    const-string v2, ""

    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6b

    :cond_85
    if-eqz p2, :cond_91

    .line 160
    invoke-interface {p2, v0}, Ljy/sdk/common/abs/innercallbacks/INotifyListener;->onNotifySuccess(Lorg/json/JSONObject;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_8a} :catch_8b

    goto :goto_91

    :catch_8b
    move-exception p1

    const-string p2, "jy_sdk"

    .line 164
    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_91
    :goto_91
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    sget-object p2, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u56de\u8c03cp \u767b\u5f55\u6210\u529f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    const/4 v0, 0x1

    # setter for: Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z
    invoke-static {p2, v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$302(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z

    .line 171
    iget-object p2, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {p2}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object p2

    new-instance v0, Ljy/sdk/common/abs/AbsChannelSdk$2$1;

    invoke-direct {v0, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$2$1;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$2;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogout(Z)V
    .registers 5

    .line 198
    sget-object v0, Ljy/sdk/common/abs/AbsChannelSdk;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u8c03cp \u767b\u51fa\u6210\u529f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    const/4 v1, 0x0

    # setter for: Ljy/sdk/common/abs/AbsChannelSdk;->hasLogin:Z
    invoke-static {v0, v1}, Ljy/sdk/common/abs/AbsChannelSdk;->access$302(Ljy/sdk/common/abs/AbsChannelSdk;Z)Z

    .line 201
    iget-object v0, p0, Ljy/sdk/common/abs/AbsChannelSdk$2;->this$0:Ljy/sdk/common/abs/AbsChannelSdk;

    # getter for: Ljy/sdk/common/abs/AbsChannelSdk;->activity:Landroid/app/Activity;
    invoke-static {v0}, Ljy/sdk/common/abs/AbsChannelSdk;->access$100(Ljy/sdk/common/abs/AbsChannelSdk;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljy/sdk/common/abs/AbsChannelSdk$2$3;

    invoke-direct {v1, p0, p1}, Ljy/sdk/common/abs/AbsChannelSdk$2$3;-><init>(Ljy/sdk/common/abs/AbsChannelSdk$2;Z)V

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->runUI(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method
