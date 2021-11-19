.class public Ljy/sdk/gamesdk/widget/EditTextPassword;
.super Landroid/widget/EditText;
.source "EditTextPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;
    }
.end annotation


# instance fields
.field private eyeChangeListener:Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;

.field private isVisible:Z

.field private mEyeDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mEyeDrawableOpen:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->isVisible:Z

    .line 40
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->isVisible:Z

    .line 45
    invoke-direct {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->init()V

    return-void
.end method

.method private init()V
    .registers 6

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, v0, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->measure(II)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {p0, v1}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setSingleLine(Z)V

    .line 54
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2aaaab

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 55
    iget-object v3, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableOpen:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_28

    .line 56
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v3

    const-string v4, "jy_eye_open"

    invoke-virtual {v3, v4}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableOpen:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v3, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableOpen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 59
    :cond_28
    iget-object v3, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableClose:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3d

    .line 60
    invoke-static {}, Ljy/sdk/common/utils/misc/ResUtils;->getInstance()Ljy/sdk/common/utils/misc/ResUtils;

    move-result-object v3

    const-string v4, "jy_eye_close"

    invoke-virtual {v3, v4}, Ljy/sdk/common/utils/misc/ResUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 61
    iget-object v3, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0, v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    :cond_3d
    invoke-direct {p0, v1}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setEyeClose(Z)V

    const/high16 v0, 0x10000000

    .line 65
    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setImeOptions(I)V

    return-void
.end method

.method private setEyeClose(Z)V
    .registers 6

    .line 110
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->eyeChangeListener:Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;

    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->eyeChangeListener:Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;

    invoke-interface {v0, p1}, Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;->onEyeChange(Z)V

    :cond_9
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2d

    .line 114
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 115
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 116
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v0

    .line 115
    invoke-virtual {p0, p1, v1, v2, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4b

    .line 118
    :cond_2d
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 119
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v1, v2, v1

    iget-object v2, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->mEyeDrawableOpen:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aget-object v0, v3, v0

    .line 119
    invoke-virtual {p0, p1, v1, v2, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_4b
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_55

    .line 77
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    if-eqz v0, :cond_55

    .line 78
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 79
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getWidth()I

    move-result v2

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    const/4 v3, 0x0

    if-lez v0, :cond_37

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_55

    .line 82
    iget-boolean v0, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->isVisible:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->isVisible:Z

    .line 83
    iget-boolean v0, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->isVisible:Z

    if-eqz v0, :cond_47

    .line 85
    invoke-direct {p0, v3}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setEyeClose(Z)V

    goto :goto_4a

    .line 89
    :cond_47
    invoke-direct {p0, v1}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setEyeClose(Z)V

    .line 92
    :goto_4a
    invoke-virtual {p0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljy/sdk/gamesdk/widget/EditTextPassword;->setSelection(I)V

    .line 96
    :cond_55
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setEyeChangeListener(Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;)V
    .registers 2

    .line 102
    iput-object p1, p0, Ljy/sdk/gamesdk/widget/EditTextPassword;->eyeChangeListener:Ljy/sdk/gamesdk/widget/EditTextPassword$EyeChangeListener;

    return-void
.end method
