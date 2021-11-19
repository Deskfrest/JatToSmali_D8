.class Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;
.super Ljava/lang/Object;
.source "AccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->chooseMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;Landroid/app/AlertDialog;)V
    .registers 3

    .line 354
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iput-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 359
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_take_photo"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    .line 360
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    invoke-virtual {p1}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->takePhotoActivity()V

    .line 361
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_76

    .line 362
    :cond_1b
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_take_pic"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_32

    .line 363
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    # invokes: Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->openImageChooserActivity()V
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->access$500(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;)V

    .line 364
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_76

    .line 365
    :cond_32
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_cancel"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_76

    .line 366
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 367
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$600(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    move-result-object p1

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    const/4 v0, 0x0

    if-eqz p1, :cond_5d

    .line 368
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$600(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    move-result-object p1

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 370
    :cond_5d
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$600(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    move-result-object p1

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_76

    .line 371
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;->this$1:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->mWebChromeClient:Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$600(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;

    move-result-object p1

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_76
    :goto_76
    return-void
.end method
