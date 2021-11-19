.class Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "EditTextAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field fl_delete_user:Landroid/view/View;

.field iv_list_dot:Landroid/view/View;

.field final synthetic this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

.field tv_list_user_lastgame:Landroid/widget/TextView;

.field tv_list_userid:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;)V
    .registers 2

    .line 282
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$ViewHolder;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
