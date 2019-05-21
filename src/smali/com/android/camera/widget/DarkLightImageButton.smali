.class public Lcom/android/camera/widget/DarkLightImageButton;
.super Landroid/widget/ImageButton;
.source "DarkLightImageButton.java"


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;

.field private final lightBackground:Landroid/graphics/drawable/Drawable;

.field private final lightSrc:Landroid/graphics/drawable/Drawable;

.field private final src:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/camera2/R$styleable;->DarkLightImageButton:[I

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    sget v1, Lcom/android/camera2/R$styleable;->DarkLightImageButton_lightBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/widget/DarkLightImageButton;->lightBackground:Landroid/graphics/drawable/Drawable;

    .line 43
    sget v1, Lcom/android/camera2/R$styleable;->DarkLightImageButton_lightSrc:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->lightSrc:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/widget/DarkLightImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->background:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/widget/DarkLightImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->src:Landroid/graphics/drawable/Drawable;

    .line 46
    return-void
.end method


# virtual methods
.method public final setDarkMode()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DarkLightImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 61
    iget-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->src:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DarkLightImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    return-void
.end method

.method public final setLightMode()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->lightBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DarkLightImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/widget/DarkLightImageButton;->lightSrc:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/DarkLightImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 54
    return-void
.end method
