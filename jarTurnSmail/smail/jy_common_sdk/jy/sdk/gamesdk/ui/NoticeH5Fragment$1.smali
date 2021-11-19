.class Ljy/sdk/gamesdk/ui/NoticeH5Fragment$1;
.super Landroid/webkit/WebViewClient;
.source "NoticeH5Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/NoticeH5Fragment;->resetLayout(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/NoticeH5Fragment;)V
    .registers 2

    .line 84
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$1;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 3

    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
