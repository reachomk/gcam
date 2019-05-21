.class final Lcom/google/android/apps/camera/burstchip/BurstChip$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BurstChip.java"


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
    .line 360
    iput-object p1, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$4;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v0, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$4;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/burstchip/BurstChip;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$4;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/burstchip/BurstChip;->setAlpha(F)V

    .line 365
    iget-object v0, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$4;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-static {v0}, Lcom/google/android/apps/camera/burstchip/BurstChip;->access$700(Lcom/google/android/apps/camera/burstchip/BurstChip;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setAlpha(I)V

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$4;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-static {v0}, Lcom/google/android/apps/camera/burstchip/BurstChip;->access$700(Lcom/google/android/apps/camera/burstchip/BurstChip;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->setVisible(ZZ)Z

    .line 367
    iget-object v0, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$4;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-static {v0}, Lcom/google/android/apps/camera/burstchip/BurstChip;->access$800(Lcom/google/android/apps/camera/burstchip/BurstChip;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 368
    return-void
.end method
