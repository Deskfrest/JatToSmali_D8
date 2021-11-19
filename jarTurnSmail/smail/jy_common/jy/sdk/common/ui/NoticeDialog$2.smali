.class Ljy/sdk/common/ui/NoticeDialog$2;
.super Ljava/lang/Object;
.source "NoticeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/common/ui/NoticeDialog;->initExitDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/common/ui/NoticeDialog;


# direct methods
.method constructor <init>(Ljy/sdk/common/ui/NoticeDialog;)V
    .registers 2

    .line 93
    iput-object p1, p0, Ljy/sdk/common/ui/NoticeDialog$2;->this$0:Ljy/sdk/common/ui/NoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 95
    iget-object p1, p0, Ljy/sdk/common/ui/NoticeDialog$2;->this$0:Ljy/sdk/common/ui/NoticeDialog;

    # getter for: Ljy/sdk/common/ui/NoticeDialog;->listener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;
    invoke-static {p1}, Ljy/sdk/common/ui/NoticeDialog;->access$000(Ljy/sdk/common/ui/NoticeDialog;)Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 96
    iget-object p1, p0, Ljy/sdk/common/ui/NoticeDialog$2;->this$0:Ljy/sdk/common/ui/NoticeDialog;

    # getter for: Ljy/sdk/common/ui/NoticeDialog;->listener:Ljy/sdk/common/abs/innercallbacks/IDialogListener;
    invoke-static {p1}, Ljy/sdk/common/ui/NoticeDialog;->access$000(Ljy/sdk/common/ui/NoticeDialog;)Ljy/sdk/common/abs/innercallbacks/IDialogListener;

    move-result-object p1

    invoke-interface {p1}, Ljy/sdk/common/abs/innercallbacks/IDialogListener;->clickConfirm()V

    .line 98
    :cond_11
    iget-object p1, p0, Ljy/sdk/common/ui/NoticeDialog$2;->this$0:Ljy/sdk/common/ui/NoticeDialog;

    # getter for: Ljy/sdk/common/ui/NoticeDialog;->mDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Ljy/sdk/common/ui/NoticeDialog;->access$100(Ljy/sdk/common/ui/NoticeDialog;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
