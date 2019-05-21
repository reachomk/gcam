.class public Lcom/android/camera/ui/ModeTransitionView;
.super Landroid/widget/FrameLayout;
.source "ModeTransitionView.java"


# instance fields
.field private background:Landroid/widget/ImageView;

.field private backgroundColor:I

.field private iconView:Landroid/widget/ImageView;

.field private modeTransitionView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/camera/ui/ModeTransitionView;->backgroundColor:I

    .line 34
    const v0, 0x7f1100dc

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->modeTransitionView:Landroid/view/View;

    .line 35
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f1100dd

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->background:Landroid/widget/ImageView;

    .line 41
    const v0, 0x7f1100de

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ModeTransitionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->iconView:Landroid/widget/ImageView;

    .line 42
    return-void
.end method

.method public final showModeCover(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->background:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->background:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->iconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 68
    return-void
.end method

.method public final showModeCover(Lcom/android/camera/util/CameraMode;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->modeTransitionView:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/ui/ModeTransitionView;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/util/CameraMode;->getIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->iconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/ModeTransitionView;->background:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ModeTransitionView;->setVisibility(I)V

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/ModeTransitionView;->invalidate()V

    .line 56
    return-void
.end method
