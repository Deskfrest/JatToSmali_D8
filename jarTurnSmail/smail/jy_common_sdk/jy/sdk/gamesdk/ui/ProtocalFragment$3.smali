.class Ljy/sdk/gamesdk/ui/ProtocalFragment$3;
.super Landroid/webkit/WebChromeClient;
.source "ProtocalFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ProtocalFragment;->resetLayout(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

.field final synthetic val$progressLoading:Ljy/sdk/gamesdk/ui/ProgressLoading;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ProtocalFragment;Ljy/sdk/gamesdk/ui/ProgressLoading;)V
    .registers 3

    .line 111
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$3;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$3;->val$progressLoading:Ljy/sdk/gamesdk/ui/ProgressLoading;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    const/16 p1, 0x64

    if-lt p2, p1, :cond_9

    .line 115
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$3;->val$progressLoading:Ljy/sdk/gamesdk/ui/ProgressLoading;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/ProgressLoading;->dismiss()V

    :cond_9
    return-void
.end method
