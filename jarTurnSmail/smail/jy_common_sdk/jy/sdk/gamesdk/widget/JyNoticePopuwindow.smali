.class public Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;
.super Landroid/widget/PopupWindow;
.source "JyNoticePopuwindow.java"


# instance fields
.field contentTv:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v0

    const-string v1, "jy_notice"

    invoke-virtual {v0, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getLayoutResByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->mView:Landroid/view/View;

    .line 27
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x1

    .line 29
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setWidth(I)V

    const/4 p1, -0x2

    .line 30
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setHeight(I)V

    const/4 p1, 0x1

    .line 31
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setFocusable(Z)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setOutsideTouchable(Z)V

    .line 33
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setTouchable(Z)V

    .line 34
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->initView()V

    return-void
.end method

.method private initListener()V
    .registers 1

    return-void
.end method

.method private initView()V
    .registers 4

    .line 42
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->mView:Landroid/view/View;

    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v1

    const-string v2, "jy_notice_text"

    invoke-virtual {v1, v2}, Ljy/sdk/common/utils/misc/ResUtils;->getIdResByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->contentTv:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public dimiss()V
    .registers 1

    .line 72
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->dimiss()V

    return-void
.end method

.method public setCanceledOnTouchOutside(Ljava/lang/Boolean;)V
    .registers 2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setOutsideTouchable(Z)V

    .line 49
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->update()V

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 3

    .line 53
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->contentTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->update()V

    return-void
.end method

.method public setShowLocation(Landroid/view/View;II)V
    .registers 6

    .line 59
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 60
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    invoke-virtual {p0, p1, v1, p2, p3}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->showAtLocation(Landroid/view/View;III)V

    .line 62
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->update()V

    return-void
.end method

.method public show(Landroid/view/View;)V
    .registers 4

    .line 66
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 67
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x14

    .line 68
    invoke-virtual {p0, p1, v1, v1, v0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->showAtLocation(Landroid/view/View;III)V

    .line 69
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/JyNoticePopuwindow;->update()V

    return-void
.end method
