.class Ljy/sdk/gamesdk/activity/AccountActivity$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 112
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$1;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 116
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$1;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->finish()V

    return-void
.end method
