.class Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljy/sdk/gamesdk/activity/AccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWebChromeClient"
.end annotation


# static fields
.field private static final FILE_CAMERA_RESULT_CODE:I = 0x81

.field private static final FILE_CHOOSER_RESULT_CODE:I = 0x80


# instance fields
.field final synthetic this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

.field private tmpImgPath:Ljava/lang/String;

.field public uploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public uploadMessageAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljy/sdk/gamesdk/activity/AccountActivity;)V
    .registers 4

    .line 227
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v1, "upload"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IMG_tmp.jpg"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->tmpImgPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;)V
    .registers 1

    .line 215
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->openImageChooserActivity()V

    return-void
.end method

.method static synthetic access$700(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;IILandroid/content/Intent;)V
    .registers 4

    .line 215
    invoke-direct {p0, p1, p2, p3}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->onActivityResultAboveL(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;)Ljava/lang/String;
    .registers 1

    .line 215
    iget-object p0, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->tmpImgPath:Ljava/lang/String;

    return-object p0
.end method

.method private cameraUseable(Landroid/content/Intent;)Z
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 296
    :try_start_2
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.camera.any"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 297
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u6444\u50cf\u5934..."

    invoke-static {p1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_24

    .line 299
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_24
    return v0

    .line 303
    :cond_25
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_46

    .line 304
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u53ef\u7528\u7684\u6444\u50cf\u5934..."

    invoke-static {p1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_45

    .line 306
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_45
    return v0

    .line 310
    :cond_46
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "camera"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 311
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 312
    array-length p1, p1

    if-nez p1, :cond_5e

    goto :goto_60

    :cond_5e
    const/4 p1, 0x1

    return p1

    .line 313
    :cond_60
    :goto_60
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "\u672a\u68c0\u6d4b\u5230\u53ef\u7528\u7684\u6444\u50cf\u5934"

    invoke-static {p1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_74

    .line 315
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_74} :catch_75

    :cond_74
    return v0

    :catch_75
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 321
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    const-string v2, "check camera error"

    invoke-static {p1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_8d

    .line 323
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_8d
    return v0
.end method

.method private chooseMethod()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_21

    .line 346
    :cond_15
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 348
    :goto_21
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v2

    const-string v3, "jy_photo_dialog"

    invoke-virtual {v2, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 350
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 353
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 354
    new-instance v2, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;

    invoke-direct {v2, p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient$1;-><init>(Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;Landroid/app/AlertDialog;)V

    .line 376
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v3, "jy_take_photo"

    invoke-virtual {v0, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v3, "jy_take_pic"

    invoke-virtual {v0, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 379
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 380
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v3, "jy_cancel"

    invoke-virtual {v0, v3}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/16 v0, 0x80

    if-ne p1, v0, :cond_4c

    .line 392
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_9

    goto :goto_4c

    :cond_9
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_43

    if-eqz p3, :cond_43

    .line 397
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_34

    .line 400
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 401
    :goto_21
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 402
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 403
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_34
    move-object v1, v0

    :cond_35
    if-eqz p1, :cond_41

    const/4 p2, 0x1

    .line 407
    new-array p2, p2, [Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, p2, p3

    goto :goto_44

    :cond_41
    move-object p2, v1

    goto :goto_44

    :cond_43
    move-object p2, v0

    .line 410
    :goto_44
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 411
    iput-object v0, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    return-void

    :cond_4c
    :goto_4c
    return-void
.end method

.method private openImageChooserActivity()V
    .registers 4

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 385
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 386
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    const-string v2, "Image Chooser"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getOutTmpUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 5

    .line 331
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge p1, v1, :cond_10

    .line 333
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 335
    :cond_10
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {p1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jyfileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Ljy/sdk/gamesdk/update/JyFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 3

    .line 233
    iget-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    iget-object p1, p1, Ljy/sdk/gamesdk/activity/AccountActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 241
    iput-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    .line 242
    invoke-virtual {p3}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object p1

    .line 243
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 244
    iget-object p2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {p2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "onShowFileChooser"

    invoke-static {p2, p3}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "image"

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 246
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->openImageChooserActivity()V

    goto :goto_24

    .line 248
    :cond_21
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->chooseMethod()V

    :goto_24
    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessage:Landroid/webkit/ValueCallback;

    .line 256
    invoke-direct {p0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->openImageChooserActivity()V

    return-void
.end method

.method public takePhotoActivity()V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    :try_start_7
    invoke-direct {p0, v0}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->cameraUseable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 268
    :cond_e
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->tmpImgPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 270
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->TAG:Ljava/lang/String;
    invoke-static {v2}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$000(Ljy/sdk/gamesdk/activity/AccountActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete..."

    invoke-static {v2, v3}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 274
    :cond_29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/16 v3, 0x81

    if-ge v1, v2, :cond_42

    const-string v1, "output"

    .line 275
    iget-object v2, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->tmpImgPath:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->getOutTmpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {v1, v0, v3}, Ljy/sdk/gamesdk/activity/AccountActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_74

    .line 278
    :cond_42
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->tmpImgPath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->getOutTmpUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    .line 279
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 280
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "output"

    .line 281
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 282
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    invoke-virtual {v1, v0, v3}, Ljy/sdk/gamesdk/activity/AccountActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5a} :catch_5b

    goto :goto_74

    :catch_5b
    move-exception v0

    .line 285
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->this$0:Ljy/sdk/gamesdk/activity/AccountActivity;

    # getter for: Ljy/sdk/gamesdk/activity/AccountActivity;->activity:Landroid/app/Activity;
    invoke-static {v1}, Ljy/sdk/gamesdk/activity/AccountActivity;->access$400(Ljy/sdk/gamesdk/activity/AccountActivity;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "error~"

    invoke-static {v1, v2}, Ljy/sdk/common/utils/misc/UIUtil;->toastShortOnMain(Landroid/app/Activity;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_71

    .line 287
    iget-object v1, p0, Ljy/sdk/gamesdk/activity/AccountActivity$MyWebChromeClient;->uploadMessageAboveL:Landroid/webkit/ValueCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 289
    :cond_71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    return-void
.end method
