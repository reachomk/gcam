.class final Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;
    }
.end annotation


# instance fields
.field private mBackgroundResId:I

.field private mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

.field private mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 41
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 42
    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    .line 43
    return-void
.end method

.method private setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 177
    if-eqz p1, :cond_1

    .line 178
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 181
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 182
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 186
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 187
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    goto :goto_0
.end method

.method private final updateBackgroundTint()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    if-eqz v1, :cond_1

    .line 117
    iget v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    if-ltz v1, :cond_0

    .line 120
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 121
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 120
    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object v1, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 134
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    if-eq v1, v2, :cond_1

    .line 130
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    iput-object v2, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 134
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final applySupportBackgroundTint()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 156
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_4

    .line 158
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ne v2, v3, :cond_6

    .line 3195
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v2, :cond_0

    .line 3196
    new-instance v2, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 3198
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 3199
    invoke-virtual {v2}, Landroid/support/v7/widget/TintInfo;->clear()V

    .line 3201
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 3202
    if-eqz v3, :cond_1

    .line 3203
    iput-boolean v0, v2, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 3204
    iput-object v3, v2, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 3206
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 3207
    if-eqz v3, :cond_2

    .line 3208
    iput-boolean v0, v2, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 3209
    iput-object v3, v2, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 3212
    :cond_2
    iget-boolean v3, v2, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    if-eqz v3, :cond_5

    .line 3213
    :cond_3
    iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 158
    :goto_0
    if-eqz v0, :cond_6

    .line 174
    :cond_4
    :goto_1
    return-void

    .line 3217
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 167
    invoke-static {v1, v0, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_1

    .line 169
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_4

    .line 170
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    .line 170
    invoke-static {v1, v0, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_1
.end method

.method final getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iget-object v0, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lcom/adobe/xmp/impl/ISO8601Converter;->obtainStyledAttributes$51662RJ4E9NMIP1FCDNMST35DPQ2UGRFDPQ6AU3K7D662RJ4E9NMIP1FELQ6IR1F85Q78SJ9C9QN8PAJCLQ3MMQ9954IIJ31DPI74RR9CGNN6TBGE1NN4T1FEORIUTR9CHJMAT1FAHKMST2KF5O6AP21E9P62U9R(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/adobe/xmp/impl/ISO8601Converter;

    move-result-object v1

    .line 49
    :try_start_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/xmp/impl/ISO8601Converter;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 52
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 1524
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 58
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    .line 60
    invoke-virtual {v1, v2}, Lcom/adobe/xmp/impl/ISO8601Converter;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 59
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_1
    sget v0, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v1, v0}, Lcom/adobe/xmp/impl/ISO8601Converter;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v3, -0x1

    .line 65
    invoke-virtual {v1, v2, v3}, Lcom/adobe/xmp/impl/ISO8601Converter;->getInt(II)I

    move-result v2

    const/4 v3, 0x0

    .line 64
    invoke-static {v2, v3}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    .line 63
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_2
    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/ISO8601Converter;->recycle()V

    throw v0
.end method

.method final onSetBackgroundDrawable$51662RJ4E9NMIP1FCTP62S38D5HN6BR4E9GNEOB2DHIIUH3IC5RM2OJCCKTIILG_()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 90
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 93
    :cond_0
    return-void
.end method

.method final onSetBackgroundResource(I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    iput p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I

    .line 76
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 2524
    invoke-virtual {v1, v2, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 76
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 80
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 83
    :cond_1
    return-void
.end method

.method final setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mOriginalTintList:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 104
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintList:Z

    .line 106
    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->updateBackgroundTint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 109
    :cond_1
    return-void
.end method

.method final setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    invoke-direct {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    iput-object p1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/AppCompatBackgroundHelper$BackgroundTintInfo;->mHasTintMode:Z

    .line 148
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 149
    return-void
.end method
