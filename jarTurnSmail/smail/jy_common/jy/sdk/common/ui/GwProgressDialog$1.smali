.class Ljy/sdk/common/ui/GwProgressDialog$1;
.super Ljava/lang/Object;
.source "GwProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/ui/GwProgressDialog;->createDialog(Landroid/widget/LinearLayout;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/ui/GwProgressDialog;


# direct methods
.method constructor <init>(Ljy/sdk/common/ui/GwProgressDialog;)V
    .registers 2

    .line 113
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog$1;->this$0:Ljy/sdk/common/ui/GwProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 117
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog$1;->this$0:Ljy/sdk/common/ui/GwProgressDialog;

    # getter for: Ljy/sdk/common/ui/GwProgressDialog;->Listener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Ljy/sdk/common/ui/GwProgressDialog;->access$000(Ljy/sdk/common/ui/GwProgressDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 118
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog$1;->this$0:Ljy/sdk/common/ui/GwProgressDialog;

    # getter for: Ljy/sdk/common/ui/GwProgressDialog;->Listener:Landroid/content/DialogInterface$OnDismissListener;
    invoke-static {v0}, Ljy/sdk/common/ui/GwProgressDialog;->access$000(Ljy/sdk/common/ui/GwProgressDialog;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 119
    iget-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog$1;->this$0:Ljy/sdk/common/ui/GwProgressDialog;

    const/4 v0, 0x0

    # setter for: Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {p1, v0}, Ljy/sdk/common/ui/GwProgressDialog;->access$102(Ljy/sdk/common/ui/GwProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_17
    return-void
.end method
