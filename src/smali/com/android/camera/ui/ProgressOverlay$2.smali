.class final Lcom/android/camera/ui/ProgressOverlay$2;
.super Ljava/lang/Object;
.source "ProgressOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ProgressOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/ProgressOverlay;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ProgressOverlay;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/camera/ui/ProgressOverlay$2;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/android/camera/ui/ProgressOverlay$2;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/camera/ui/ProgressOverlay;->access$102(Lcom/android/camera/ui/ProgressOverlay;F)F

    .line 211
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$2;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-static {v0}, Lcom/android/camera/ui/ProgressOverlay;->access$200(Lcom/android/camera/ui/ProgressOverlay;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ProgressOverlay$2;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-static {v1}, Lcom/android/camera/ui/ProgressOverlay;->access$100(Lcom/android/camera/ui/ProgressOverlay;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    iget-object v0, p0, Lcom/android/camera/ui/ProgressOverlay$2;->this$0:Lcom/android/camera/ui/ProgressOverlay;

    invoke-virtual {v0}, Lcom/android/camera/ui/ProgressOverlay;->invalidate()V

    .line 213
    return-void
.end method
