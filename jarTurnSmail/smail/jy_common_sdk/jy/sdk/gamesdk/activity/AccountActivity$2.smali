.class Ljy/sdk/gamesdk/activity/AccountActivity$2;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Ljy/sdk/gamesdk/widget/KeyboardLayout$KeyboardLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/activity/AccountActivity;->initView()V
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

    .line 122
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$2;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyboardStateChanged(ZI)V
    .registers 6

    .line 127
    iget-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity$2;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {v0}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " keyboardHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    .line 129
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$2;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->screenHeight:I
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$100(Ljy/sdk/gamesdk/activity/AccountActivity;)I

    move-result p1

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$2;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->webView:Ljy/sdk/gamesdk/widget/MyWebView;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$200(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/widget/MyWebView;

    move-result-object v1

    invoke-virtual {v1}, Ljy/sdk/gamesdk/widget/MyWebView;->getLastTouchRowY()I

    move-result v1

    sub-int/2addr p1, v1

    if-le p2, p1, :cond_4e

    .line 131
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$2;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$300(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/widget/KeyboardLayout;

    move-result-object v1

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x50

    invoke-virtual {v1, v0, p2}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->scrollTo(II)V

    goto :goto_4e

    .line 134
    :cond_45
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$2;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->root_keyboard:Ljy/sdk/gamesdk/widget/KeyboardLayout;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$300(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/widget/KeyboardLayout;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Ljy/sdk/gamesdk/widget/KeyboardLayout;->scrollTo(II)V

    :cond_4e
    :goto_4e
    return-void
.end method
