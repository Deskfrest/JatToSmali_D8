.class public Ljy/sdk/common/ui/GwProgressDialog;
.super Ljava/lang/Object;
.source "GwProgressDialog.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private Listener:Landroid/content/DialogInterface$OnDismissListener;

.field private canCancel:Z

.field private context:Landroid/content/Context;

.field private lineColor:Ljava/lang/String;

.field private mDialog:Landroid/app/AlertDialog;

.field private msg:Ljava/lang/String;

.field private msgColor:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleColor:Ljava/lang/String;

.field private tv_msg:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#169BD5"

    .line 30
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->titleColor:Ljava/lang/String;

    const-string v0, "#000000"

    .line 32
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->msgColor:Ljava/lang/String;

    const-string v0, "#169B88"

    .line 34
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->lineColor:Ljava/lang/String;

    const-string v0, "\u8bf7\u7a0d\u540e..."

    .line 38
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->msg:Ljava/lang/String;

    const-string v0, "\u63d0\u793a"

    .line 40
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->title:Ljava/lang/String;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->canCancel:Z

    .line 47
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Ljy/sdk/common/ui/GwProgressDialog;->msg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "#169BD5"

    .line 30
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->titleColor:Ljava/lang/String;

    const-string v0, "#000000"

    .line 32
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->msgColor:Ljava/lang/String;

    const-string v0, "#169B88"

    .line 34
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->lineColor:Ljava/lang/String;

    const-string v0, "\u8bf7\u7a0d\u540e..."

    .line 38
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->msg:Ljava/lang/String;

    const-string v0, "\u63d0\u793a"

    .line 40
    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->title:Ljava/lang/String;

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->canCancel:Z

    .line 52
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    .line 53
    iput-object p3, p0, Ljy/sdk/common/ui/GwProgressDialog;->msg:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Ljy/sdk/common/ui/GwProgressDialog;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljy/sdk/common/ui/GwProgressDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .registers 1

    .line 28
    iget-object p0, p0, Ljy/sdk/common/ui/GwProgressDialog;->Listener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method static synthetic access$102(Ljy/sdk/common/ui/GwProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .registers 2

    .line 28
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private createDialog(Landroid/widget/LinearLayout;)Landroid/app/AlertDialog;
    .registers 5

    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 106
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_18

    .line 107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const v2, 0x103023a

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    goto :goto_20

    .line 109
    :cond_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 111
    :goto_20
    iget-boolean v1, p0, Ljy/sdk/common/ui/GwProgressDialog;->canCancel:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 113
    new-instance p1, Ljy/sdk/common/ui/GwProgressDialog$1;

    invoke-direct {p1, p0}, Ljy/sdk/common/ui/GwProgressDialog$1;-><init>(Ljy/sdk/common/ui/GwProgressDialog;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method private initView()Landroid/app/AlertDialog;
    .registers 12

    .line 59
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 60
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 61
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v3, -0x1

    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/16 v4, 0x11

    .line 63
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 64
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    .line 65
    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    iget-object v6, p0, Ljy/sdk/common/ui/GwProgressDialog;->titleColor:Ljava/lang/String;

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    const/high16 v6, 0x41b80000    # 23.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    iget-object v6, p0, Ljy/sdk/common/ui/GwProgressDialog;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    iget-object v6, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v6, v7}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v6, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 70
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 71
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 74
    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->lineColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    iget-object v2, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const/high16 v7, 0x41200000    # 10.0f

    invoke-static {v2, v7}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 77
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 83
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-static {v4, v5}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 84
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-static {v4, v7}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 86
    new-instance v4, Landroid/widget/ProgressBar;

    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static {v8, v9}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    iget-object v10, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-static {v10, v9}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    .line 91
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->msgColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    iget-object v5, p0, Ljy/sdk/common/ui/GwProgressDialog;->msg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    iget-object v4, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 95
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    iget-object v3, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-static {v3, v5}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 97
    iget-object v3, p0, Ljy/sdk/common/ui/GwProgressDialog;->context:Landroid/content/Context;

    invoke-static {v3, v7}, Ljy/sdk/common/utils/misc/UIUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 98
    iget-object v3, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    invoke-direct {p0, v1}, Ljy/sdk/common/ui/GwProgressDialog;->createDialog(Landroid/widget/LinearLayout;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disMiss()V
    .registers 3

    .line 152
    :try_start_0
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "jy_sdk"

    const-string v1, "disMiss"

    .line 153
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_23

    :catch_19
    move-exception v0

    const-string v1, "jy_sdk"

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public hide()V
    .registers 3

    .line 143
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "jy_sdk"

    const-string v1, "hide"

    .line 144
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    :cond_18
    return-void
.end method

.method public setCancelable(Z)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 2

    .line 162
    iput-boolean p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->canCancel:Z

    return-object p0
.end method

.method public setLineColor(Ljava/lang/String;)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 3

    .line 193
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 194
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->lineColor:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p1

    const-string v0, "jy_sdk"

    .line 196
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 3

    .line 202
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->msg:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 204
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_msg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-object p0
.end method

.method public setMsgColor(Ljava/lang/String;)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 3

    .line 183
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 184
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->msgColor:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p1

    const-string v0, "jy_sdk"

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 2

    .line 167
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->Listener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 3

    .line 209
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->title:Ljava/lang/String;

    .line 210
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 211
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-object p0
.end method

.method public setTitleColor(Ljava/lang/String;)Ljy/sdk/common/ui/GwProgressDialog;
    .registers 3

    .line 173
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 174
    iput-object p1, p0, Ljy/sdk/common/ui/GwProgressDialog;->titleColor:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_10

    :catch_6
    move-exception p1

    const-string v0, "jy_sdk"

    .line 176
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljy/sdk/common/utils/misc/FLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-object p0
.end method

.method public show()V
    .registers 2

    .line 133
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_a

    .line 134
    invoke-direct {p0}, Ljy/sdk/common/ui/GwProgressDialog;->initView()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    .line 137
    :cond_a
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 138
    iget-object v0, p0, Ljy/sdk/common/ui/GwProgressDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_17
    return-void
.end method
