.class Ljy/sdk/common/components/JyChaFragment$1;
.super Landroid/webkit/WebViewClient;
.source "JyChaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/components/JyChaFragment;->startWork()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/components/JyChaFragment;


# direct methods
.method constructor <init>(Ljy/sdk/common/components/JyChaFragment;)V
    .registers 2

    .line 121
    iput-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5

    const-string p1, "jy_sdk"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51c6\u5907\u52a0\u8f7d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->ww:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/common/components/JyChaFragment;->access$000(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_78

    .line 129
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/common/components/JyChaFragment;->access$100(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "start ww"

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_2e
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 132
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 134
    iget-object p2, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    invoke-virtual {p2, p1}, Ljy/sdk/common/components/JyChaFragment;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/common/components/JyChaFragment;->access$200(Ljy/sdk/common/components/JyChaFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4d} :catch_4f

    goto/16 :goto_cd

    :catch_4f
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6e

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "No Activity found"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6e

    .line 138
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/common/components/JyChaFragment;->access$200(Ljy/sdk/common/components/JyChaFragment;)Landroid/app/Activity;

    move-result-object p1

    const-string p2, "app\u672a\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e."

    invoke-static {p1, p2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    return v0

    .line 141
    :cond_6e
    iget-object p2, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;
    invoke-static {p2}, Ljy/sdk/common/components/JyChaFragment;->access$100(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cd

    .line 143
    :cond_78
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    invoke-virtual {p1, p2}, Ljy/sdk/common/components/JyChaFragment;->parsezz(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_cd

    .line 144
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;
    invoke-static {p1}, Ljy/sdk/common/components/JyChaFragment;->access$100(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "start zz"

    invoke-static {p1, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :try_start_8b
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    iget-object p2, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    invoke-virtual {p2, p1}, Ljy/sdk/common/components/JyChaFragment;->startActivity(Landroid/content/Intent;)V

    .line 148
    iget-object p1, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/common/components/JyChaFragment;->access$200(Ljy/sdk/common/components/JyChaFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_a4} :catch_a5

    goto :goto_cd

    :catch_a5
    move-exception p1

    .line 150
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c3

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "No Activity found"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_c3

    .line 151
    iget-object p2, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->activity:Landroid/app/Activity;
    invoke-static {p2}, Ljy/sdk/common/components/JyChaFragment;->access$200(Ljy/sdk/common/components/JyChaFragment;)Landroid/app/Activity;

    move-result-object p2

    const-string v1, "app\u672a\u5b89\u88c5\u6216\u8005\u7248\u672c\u592a\u4f4e."

    invoke-static {p2, v1}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 153
    :cond_c3
    iget-object p2, p0, Ljy/sdk/common/components/JyChaFragment$1;->this$0:Ljy/sdk/common/components/JyChaFragment;

    # getter for: Ljy/sdk/common/components/JyChaFragment;->TAG:Ljava/lang/String;
    invoke-static {p2}, Ljy/sdk/common/components/JyChaFragment;->access$100(Ljy/sdk/common/components/JyChaFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Ljy/sdk/common/utils/misc/FLogger;->Ex(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_cd
    :goto_cd
    const/4 p1, 0x0

    return p1
.end method
