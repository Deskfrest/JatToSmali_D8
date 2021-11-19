.class public Ljy/sdk/gamesdk/update/JyProgressDialog;
.super Ljava/lang/Object;
.source "JyProgressDialog.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private proGressDialog:Landroid/app/AlertDialog;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tv_bottom:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    .line 23
    invoke-direct {p0}, Ljy/sdk/gamesdk/update/JyProgressDialog;->initView()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .registers 2

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private initView()V
    .registers 11

    .line 28
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 29
    iget-object v1, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2}, Ljy/sdk/gamesdk/update/JyProgressDialog;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 30
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v1, 0x1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, -0x1

    .line 32
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v4, 0x11

    .line 33
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 35
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v6, "\u8bf7\u6ce8\u610f"

    .line 36
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v6, "#68cbff"

    .line 37
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x41900000    # 18.0f

    .line 38
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 39
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 41
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 42
    invoke-virtual {v0, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v6, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    const/4 v8, 0x0

    const v9, 0x1010078

    invoke-direct {v5, v6, v8, v9}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 49
    iget-object v5, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 50
    iget-object v5, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 52
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Ljy/sdk/gamesdk/update/JyProgressDialog;->dip2px(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v5, v3, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    iget-object v8, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    invoke-static {v8, v2}, Ljy/sdk/gamesdk/update/JyProgressDialog;->dip2px(Landroid/content/Context;F)I

    move-result v2

    .line 54
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 55
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v8, 0x3

    mul-int/lit8 v2, v2, 0x3

    .line 56
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 57
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 58
    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    iget-object v5, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    .line 63
    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    const-string v5, "\u6b63\u5728\u4e0b\u8f7d..."

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    const-string v5, "#61A3D2"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 69
    iget-object v1, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_c8

    .line 75
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    const v3, 0x103023a

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_cf

    .line 77
    :cond_c8
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 79
    :goto_cf
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public disMiss()V
    .registers 2

    .line 96
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 97
    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    return-void
.end method

.method public setProgress(I)V
    .registers 5

    const/16 v0, 0x64

    if-gt p1, v0, :cond_26

    if-ltz p1, :cond_26

    .line 109
    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 110
    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->tv_bottom:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d...("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_26
    return-void
.end method

.method public show()V
    .registers 2

    .line 87
    :try_start_0
    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_16

    .line 88
    iget-object v0, p0, Ljy/sdk/gamesdk/update/JyProgressDialog;->proGressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_16
    :goto_16
    return-void
.end method
