.class public Lcom/android/camera/widget/PhotoItemView;
.super Landroid/widget/FrameLayout;
.source "PhotoItemView.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private photoSphereBadge:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->imageView:Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->photoSphereBadge:Landroid/widget/ImageView;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->imageView:Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->photoSphereBadge:Landroid/widget/ImageView;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->imageView:Landroid/widget/ImageView;

    .line 16
    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->photoSphereBadge:Landroid/widget/ImageView;

    .line 28
    return-void
.end method


# virtual methods
.method public final getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->imageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 32
    const v0, 0x7f110141

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/PhotoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->imageView:Landroid/widget/ImageView;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getPhotoSphereBadge()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->photoSphereBadge:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 39
    const v0, 0x7f110142

    invoke-virtual {p0, v0}, Lcom/android/camera/widget/PhotoItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->photoSphereBadge:Landroid/widget/ImageView;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/camera/widget/PhotoItemView;->photoSphereBadge:Landroid/widget/ImageView;

    return-object v0
.end method
