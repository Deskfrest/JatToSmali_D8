.class Ljy/sdk/gamesdk/activity/PayActivity$1;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Ljy/sdk/gamesdk/ui/OnFragmentDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/activity/PayActivity;->showPayWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/activity/PayActivity;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/activity/PayActivity;)V
    .registers 2

    .line 36
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/PayActivity$1;->this$0:Ljy/sdk/gamesdk/activity/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentDismiss(I)V
    .registers 2

    .line 40
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/PayActivity$1;->this$0:Ljy/sdk/gamesdk/activity/PayActivity;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/activity/PayActivity;->finish()V

    return-void
.end method
