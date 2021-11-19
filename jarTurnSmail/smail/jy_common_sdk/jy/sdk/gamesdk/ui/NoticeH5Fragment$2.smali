.class Ljy/sdk/gamesdk/ui/NoticeH5Fragment$2;
.super Landroid/webkit/WebChromeClient;
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

    .line 92
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/NoticeH5Fragment$2;->this$0:Ljy/sdk/gamesdk/ui/NoticeH5Fragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .registers 5

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    return-void
.end method
