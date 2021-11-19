.class Ljy/sdk/gamesdk/ui/ResetPassFragment$2;
.super Ljava/lang/Object;
.source "ResetPassFragment.java"

# interfaces
.implements Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/ui/ResetPassFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/ui/ResetPassFragment;)V
    .registers 2

    .line 84
    iput-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEyeChange(Z)V
    .registers 3

    if-eqz p1, :cond_10

    .line 89
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    # getter for: Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password2:Landroid/widget/EditText;
    invoke-static {p1}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->access$000(Ljy/sdk/gamesdk/ui/ResetPassFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_1d

    .line 91
    :cond_10
    iget-object p1, p0, Ljy/sdk/gamesdk/ui/ResetPassFragment$2;->this$0:Ljy/sdk/gamesdk/ui/ResetPassFragment;

    # getter for: Ljy/sdk/gamesdk/ui/ResetPassFragment;->et_password2:Landroid/widget/EditText;
    invoke-static {p1}, Ljy/sdk/gamesdk/ui/ResetPassFragment;->access$000(Ljy/sdk/gamesdk/ui/ResetPassFragment;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_1d
    return-void
.end method
