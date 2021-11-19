.class Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;
.super Ljava/lang/Object;
.source "EditTextAccount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;I)V
    .registers 3

    .line 261
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    iput p2, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 265
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    iget v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->val$position:I

    invoke-virtual {p1, v0}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljy/sdk/gamesdk/entity/UserInfo;

    if-nez p1, :cond_d

    return-void

    .line 269
    :cond_d
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    iget-object v0, v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->this$0:Ljy/sdk/gamesdk/widget/EditTextAccount;

    # getter for: Ljy/sdk/gamesdk/widget/EditTextAccount;->deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;
    invoke-static {v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->access$000(Ljy/sdk/gamesdk/widget/EditTextAccount;)Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 270
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    iget-object v0, v0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->this$0:Ljy/sdk/gamesdk/widget/EditTextAccount;

    # getter for: Ljy/sdk/gamesdk/widget/EditTextAccount;->deleteHistoryUserListener:Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;
    invoke-static {v0}, Ljy/sdk/gamesdk/widget/EditTextAccount;->access$000(Ljy/sdk/gamesdk/widget/EditTextAccount;)Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;

    move-result-object v0

    invoke-interface {v0, p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$DeleteHistoryUserListener;->onDeleteUser(Ljy/sdk/gamesdk/entity/UserInfo;)V

    .line 272
    :cond_22
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {v0, p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->remove(Ljava/lang/Object;)V

    .line 273
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->getCount()I

    move-result p1

    if-nez p1, :cond_3a

    .line 274
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    iget-object p1, p1, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->this$0:Ljy/sdk/gamesdk/widget/EditTextAccount;

    # getter for: Ljy/sdk/gamesdk/widget/EditTextAccount;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {p1}, Ljy/sdk/gamesdk/widget/EditTextAccount;->access$100(Ljy/sdk/gamesdk/widget/EditTextAccount;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 276
    :cond_3a
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter$1;->this$1:Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/widget/EditTextAccount$ListAdapter;->notifyDataSetChanged()V

    return-void
.end method
