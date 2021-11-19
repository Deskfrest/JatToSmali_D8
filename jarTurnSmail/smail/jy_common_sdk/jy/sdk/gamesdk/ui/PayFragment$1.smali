.class Ljy/sdk/gamesdk/ui/PayFragment$1;
.super Landroid/webkit/WebViewClient;
.source "PayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/PayFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/PayFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/PayFragment;)V
    .registers 2

    .line 60
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    .line 106
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 15

    .line 64
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u52a0\u8f7d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "weixin://wap/pay?"

    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8f

    .line 67
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "start wx"

    invoke-static {p1, v2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_27
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 70
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {v2, p1}, Ljy/sdk/gamesdk/ui/PayFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_3e

    goto :goto_8e

    :catch_3e
    move-exception p1

    .line 74
    sget-object v2, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {v2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object v3, v3, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    new-instance v11, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v5, 0x2

    const/4 v6, 0x2

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object v4, v4, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object v9, v4, Ljy/sdk/gamesdk/ui/PayFragment;->jyOrderId:Ljava/lang/String;

    move-object v4, v11

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v11}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_89

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No Activity found"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_89

    .line 77
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "\u5fae\u4fe1\u672a\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\u3002"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/PayFragment;->setPayType(Ljava/lang/String;)V

    return v1

    .line 81
    :cond_89
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/PayFragment;->dismiss()V

    :goto_8e
    return v1

    .line 84
    :cond_8f
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {p1, p2}, Ljy/sdk/gamesdk/ui/PayFragment;->parsezfb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_100

    .line 85
    sget-object p1, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    const-string v2, "start zfb"

    invoke-static {p1, v2}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :try_start_9e
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 88
    iget-object v2, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {v2, p1}, Ljy/sdk/gamesdk/ui/PayFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_ae} :catch_af

    return v1

    :catch_af
    move-exception p1

    .line 90
    invoke-static {}, Ljy/sdk/gamesdk/api/ApiClient;->getInstance()Ljy/sdk/gamesdk/api/ApiClient;

    move-result-object v2

    iget-object v3, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object v3, v3, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    new-instance v11, Ljy/sdk/gamesdk/entity/DataInfo;

    const/4 v5, 0x2

    const/4 v6, 0x3

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object v4, v4, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object v9, v4, Ljy/sdk/gamesdk/ui/PayFragment;->jyOrderId:Ljava/lang/String;

    move-object v4, v11

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Ljy/sdk/gamesdk/entity/DataInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v11}, Ljy/sdk/gamesdk/api/ApiClient;->sdkDataUpload(Landroid/content/Context;Ljy/sdk/gamesdk/entity/DataInfo;)V

    .line 91
    sget-object p2, Ljy/sdk/gamesdk/ui/BaseDialogFragment;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_fa

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No Activity found"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 93
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iget-object p1, p1, Ljy/sdk/gamesdk/ui/PayFragment;->mActivity:Landroid/app/Activity;

    const-string p2, "\u652f\u4ed8\u5b9d\u672a\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e\u3002"

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/ui/PayFragment;->setPayType(Ljava/lang/String;)V

    return v1

    .line 97
    :cond_fa
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$1;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/PayFragment;->dismiss()V

    return v1

    :cond_100
    const/4 p1, 0x0

    return p1
.end method
