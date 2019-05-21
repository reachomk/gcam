.class final Lcom/android/camera/widget/RoundedThumbnailView$7;
.super Ljava/lang/Object;
.source "RoundedThumbnailView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/RoundedThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/widget/RoundedThumbnailView;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/RoundedThumbnailView;)V
    .locals 0

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$7;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$7;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$402(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 856
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 859
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$7;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const v2, 0x3f4ccccd    # 0.8f

    const v3, -0x40b33333    # -0.8f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$502(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 861
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$7;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 862
    return-void
.end method
