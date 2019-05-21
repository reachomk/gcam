.class final Lcom/google/android/apps/camera/burstchip/BurstChip$9;
.super Ljava/lang/Object;
.source "BurstChip.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/camera/burstchip/BurstChip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/burstchip/BurstChip;)V
    .locals 0

    .prologue
    .line 430
    iput-object p1, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$9;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 433
    iget-object v1, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$9;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/burstchip/BurstChip;->setAlpha(F)V

    .line 434
    return-void
.end method
