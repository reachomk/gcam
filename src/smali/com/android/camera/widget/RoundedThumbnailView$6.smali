.class final Lcom/android/camera/widget/RoundedThumbnailView$6;
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
    .line 799
    iput-object p1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1002(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 803
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    iget-object v2, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 805
    invoke-static {v2}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1200(Lcom/android/camera/widget/RoundedThumbnailView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    .line 806
    invoke-static {v3}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1300(Lcom/android/camera/widget/RoundedThumbnailView;)F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-static {v4}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1200(Lcom/android/camera/widget/RoundedThumbnailView;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 804
    invoke-static {v1, v2}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1102(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 807
    iget-object v1, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    const v2, 0x3ecccccd    # 0.4f

    const v3, -0x41333333    # -0.4f

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/android/camera/widget/RoundedThumbnailView;->access$1402(Lcom/android/camera/widget/RoundedThumbnailView;F)F

    .line 809
    iget-object v0, p0, Lcom/android/camera/widget/RoundedThumbnailView$6;->this$0:Lcom/android/camera/widget/RoundedThumbnailView;

    invoke-virtual {v0}, Lcom/android/camera/widget/RoundedThumbnailView;->invalidate()V

    .line 810
    return-void
.end method
