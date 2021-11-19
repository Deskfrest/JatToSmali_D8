.class Ljy/sdk/channel/jy/Jy$3;
.super Ljava/lang/Object;
.source "Jy.java"

# interfaces
.implements Ljy/sdk/gamesdk/ISdkApi$IJyLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/channel/jy/Jy;->loginChannel(Landroid/app/Activity;Ljy/sdk/common/abs/innercallbacks/IloginStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/channel/jy/Jy;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$listener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;


# direct methods
.method constructor <init>(Ljy/sdk/channel/jy/Jy;Ljy/sdk/common/abs/innercallbacks/IloginStateListener;Landroid/app/Activity;)V
    .registers 4

    .line 232
    iput-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iput-object p2, p0, Ljy/sdk/channel/jy/Jy$3;->val$listener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

    iput-object p3, p0, Ljy/sdk/channel/jy/Jy$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginFailed(Ljava/lang/String;)V
    .registers 3

    .line 297
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$3;->val$listener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

    invoke-interface {v0, p1}, Ljy/sdk/common/abs/innercallbacks/IloginStateListener;->onLoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method public onLoginSuc(Ljava/lang/String;)V
    .registers 8

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sid"

    .line 284
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "userId"

    const-string v1, ""

    .line 285
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->val$listener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljy/sdk/common/abs/innercallbacks/IloginStateListener;->onLoginSuc(Ljava/util/Map;Ljy/sdk/common/abs/innercallbacks/INotifyListener;)V

    .line 288
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object p1

    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljy/sdk/gamesdk/entity/DataInfo;

    const-string v2, ""

    iget-object v3, p0, Ljy/sdk/channel/jy/Jy$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const/16 v5, 0xa

    invoke-direct {v1, v4, v5, v2, v3}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 289
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_45

    .line 290
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u767b\u5f55\u4e8b\u4ef6"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "loginSucc"

    const/4 v0, 0x1

    .line 291
    invoke-static {p1, v0}, Lcom/bytedance/applog/GameReportHelper;->onEventLogin(Ljava/lang/String;Z)V

    :cond_45
    return-void
.end method

.method public onLogout(Z)V
    .registers 3

    .line 274
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$3;->val$listener:Ljy/sdk/common/abs/innercallbacks/IloginStateListener;

    invoke-interface {v0, p1}, Ljy/sdk/common/abs/innercallbacks/IloginStateListener;->onLogout(Z)V

    .line 275
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_18

    .line 276
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$1000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u767b\u51fa\u4e8b\u4ef6\uff0c\u6e05\u9664\u5934\u6761\u7528\u6237ID\u8bbe\u7f6e"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 277
    invoke-static {p1}, Lcom/bytedance/applog/AppLog;->setUserUniqueID(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public onReg(Ljava/lang/String;)V
    .registers 6

    .line 236
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6ce8\u518c\u7c7b\u578b:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x462c75d3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_50

    const v1, 0x2fd85c

    if-eq v0, v1, :cond_46

    const v1, 0x65b3d6e

    if-eq v0, v1, :cond_3c

    const v1, 0x4d84ca94    # 2.78483584E8f

    if-eq v0, v1, :cond_32

    goto :goto_5a

    :cond_32
    const-string v0, "\u6e38\u620f\u4e2d\u5fc3App"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x0

    goto :goto_5b

    :cond_3c
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x2

    goto :goto_5b

    :cond_46
    const-string v0, "fast"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x1

    goto :goto_5b

    :cond_50
    const-string v0, "account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const/4 v0, 0x3

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 v0, -0x1

    :goto_5b
    packed-switch v0, :pswitch_data_d6

    .line 264
    iget-object v0, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean v0, v0, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz v0, :cond_d5

    .line 265
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5934\u6761\u6ce8\u518c\u4e8b\u4ef6\uff1a\u5176\u5b83\uff0c\u6ce8\u518cType-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "otherReg"

    .line 266
    invoke-static {p1, v2}, Lcom/bytedance/applog/GameReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    goto :goto_d5

    .line 258
    :pswitch_82
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_d5

    .line 259
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$800()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u6ce8\u518c\u4e8b\u4ef6\uff1a\u5e10\u53f7\u6ce8\u518c"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "accountReg"

    .line 260
    invoke-static {p1, v2}, Lcom/bytedance/applog/GameReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    goto :goto_d5

    .line 252
    :pswitch_97
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_d5

    .line 253
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$700()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u6ce8\u518c\u4e8b\u4ef6\uff1a\u624b\u673a\u53f7\u6ce8\u518c"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "phoneReg"

    .line 254
    invoke-static {p1, v2}, Lcom/bytedance/applog/GameReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    goto :goto_d5

    .line 246
    :pswitch_ac
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_d5

    .line 247
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$600()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u6ce8\u518c\u4e8b\u4ef6\uff1a\u5feb\u901f\u6ce8\u518c"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "fastReg"

    .line 248
    invoke-static {p1, v2}, Lcom/bytedance/applog/GameReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    goto :goto_d5

    .line 240
    :pswitch_c1
    iget-object p1, p0, Ljy/sdk/channel/jy/Jy$3;->this$0:Ljy/sdk/channel/jy/Jy;

    iget-boolean p1, p1, Ljy/sdk/channel/jy/Jy;->startToutiao:Z

    if-eqz p1, :cond_d5

    .line 241
    # getter for: Ljy/sdk/channel/jy/Jy;->TAG:Ljava/lang/String;
    invoke-static {}, Ljy/sdk/channel/jy/Jy;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u5934\u6761\u6ce8\u518c\u4e8b\u4ef6\uff1aappToken"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "appTokenReg"

    .line 242
    invoke-static {p1, v2}, Lcom/bytedance/applog/GameReportHelper;->onEventRegister(Ljava/lang/String;Z)V

    :cond_d5
    :goto_d5
    return-void

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_c1
        :pswitch_ac
        :pswitch_97
        :pswitch_82
    .end packed-switch
.end method
