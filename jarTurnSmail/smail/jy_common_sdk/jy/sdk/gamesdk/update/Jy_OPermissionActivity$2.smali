.class Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$2;
.super Ljava/lang/Object;
.source "Jy_OPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;)V
    .registers 2

    .line 85
    iput-object p1, p0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$2;->this$0:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 88
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    if-eqz p1, :cond_9

    .line 89
    sget-object p1, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->listener:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;

    invoke-interface {p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$AndroidOInstallPermissionListener;->permissionFail()V

    .line 91
    :cond_9
    iget-object p1, p0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$2;->this$0:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;

    # getter for: Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->access$000(Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 92
    iget-object p1, p0, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity$2;->this$0:Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/update/Jy_OPermissionActivity;->finish()V

    return-void
.end method
