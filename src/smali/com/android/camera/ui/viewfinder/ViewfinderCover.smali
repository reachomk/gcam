.class public Lcom/android/camera/ui/viewfinder/ViewfinderCover;
.super Landroid/widget/FrameLayout;
.source "ViewfinderCover.java"


# instance fields
.field private iconAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private iconImage:Landroid/widget/ImageView;

.field private uncoveredViewfinder:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method public final animateIcon()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 79
    return-void
.end method

.method public final hideIcon()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f110194

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->uncoveredViewfinder:Landroid/widget/FrameLayout;

    .line 34
    const v0, 0x7f110195

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/camera/util/CameraMode;->PHOTO:Lcom/android/camera/util/CameraMode;

    invoke-virtual {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/util/CameraMode;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    return-void
.end method

.method public final prepareSwitchToBack()V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public final prepareSwitchToFront()V
    .locals 3

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method public final setUncoveredPreviewRect(Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 47
    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    .line 46
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 50
    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ltz v0, :cond_0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-gez v0, :cond_2

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->uncoveredViewfinder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->uncoveredViewfinder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_1
.end method

.method public final showIcon(Lcom/android/camera/util/CameraMode;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/util/CameraMode;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/viewfinder/ViewfinderCover;->iconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    return-void
.end method
