.class Ljy/sdk/gamesdk/ui/PayFragment$2;
.super Landroid/webkit/WebChromeClient;
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

.field final synthetic val$progressLoading:Ljy/sdk/gamesdk/ui/ProgressLoading;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/PayFragment;Ljy/sdk/gamesdk/ui/ProgressLoading;)V
    .registers 3

    .line 109
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$2;->this$0:Ljy/sdk/gamesdk/ui/PayFragment;

    iput-object p2, p0, Ljy/sdk/gamesdk/ui/PayFragment$2;->val$progressLoading:Ljy/sdk/gamesdk/ui/ProgressLoading;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 112
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 p1, 0x64

    if-lt p2, p1, :cond_c

    .line 114
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/PayFragment$2;->val$progressLoading:Ljy/sdk/gamesdk/ui/ProgressLoading;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/ui/ProgressLoading;->dismiss()V

    :cond_c
    return-void
.end method
