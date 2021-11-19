.class Ljy/sdk/gamesdk/activity/AccountActivity$3;
.super Landroid/webkit/WebViewClient;
.source "AccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/activity/AccountActivity;->initWeb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/activity/AccountActivity;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/activity/AccountActivity;)V
    .registers 2

    .line 146
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 13

    const-string p1, "jy_sdk"

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u52a0\u8f7d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "weixin://wap/pay?"

    .line 152
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8e

    .line 153
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "start wx"

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :try_start_2a
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {v1, p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_40} :catch_42

    goto/16 :goto_fe

    :catch_42
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No Activity found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 161
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u5fae\u4fe1\u672a\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\u3002"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 163
    :cond_60
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v2

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v3}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 164
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {p2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    .line 167
    :cond_8e
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {p1, p2}, Ljy/sdk/gamesdk/activity/AccountActivity;->parsezfb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_fe

    .line 168
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "start zfb"

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :try_start_a1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 171
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {v1, p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_b1} :catch_b2

    goto :goto_fe

    :catch_b2
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No Activity found"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 175
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u652f\u4ed8\u5b9d\u672a\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\u3002"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 177
    :cond_d0
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v1

    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v2

    new-instance v9, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v3}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v9}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 178
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$3;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {p2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_fe
    :goto_fe
    const/4 p1, 0x0

    return p1
.end method
