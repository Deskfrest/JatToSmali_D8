.class Ljy/sdk/gamesdk/ui/ProtocalFragment$2;
.super Landroid/webkit/WebViewClient;
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


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ProtocalFragment;)V
    .registers 2

    .line 104
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ProtocalFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ProtocalFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 108
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
