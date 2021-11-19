.class public Ljy/sdk/gamesdk/widget/EditTextClear;
.super Landroid/widget/EditText;
.source "EditTextClear.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private hasFocus:Z

.field private mClearDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/widget/EditTextClear;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    .line 37
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p0, p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextClear;->setDrawableVisible(Z)V

    const/high16 v0, 0x10000000

    .line 41
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextClear;->setImeOptions(I)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 6

    .line 65
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 66
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object p1

    const-string v1, "test_edit_clear2"

    invoke-virtual {p1, v1}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    :cond_22
    iput-boolean p2, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->hasFocus:Z

    if-eqz p2, :cond_35

    .line 70
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_35

    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/EditTextClear;->setDrawableVisible(Z)V

    goto :goto_38

    .line 74
    :cond_35
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextClear;->setDrawableVisible(Z)V

    :goto_38
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 80
    iget-boolean p2, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->hasFocus:Z

    if-eqz p2, :cond_10

    .line 81
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/EditTextClear;->setDrawableVisible(Z)V

    :cond_10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    const-string v0, "jy_utils"

    const-string v1, "onTouchEvent"

    .line 49
    invoke-static {v0, v1}, Ljy/sdk/common/utils/misc/FLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 51
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-eqz v0, :cond_44

    .line 52
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 53
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getWidth()I

    move-result v2

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    if-eqz v1, :cond_44

    const-string v0, ""

    .line 56
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextClear;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected setDrawableVisible(Z)V
    .registers 6

    if-eqz p1, :cond_5

    .line 85
    iget-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextClear;->mClearDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    :cond_5
    const/4 p1, 0x0

    .line 86
    :goto_6
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextClear;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v1, p1, v2}, Ljy/sdk/gamesdk/widget/EditTextClear;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
