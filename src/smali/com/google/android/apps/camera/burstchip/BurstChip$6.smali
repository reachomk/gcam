.class final Lcom/google/android/apps/camera/burstchip/BurstChip$6;
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
    .line 384
    iput-object p1, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$6;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/google/android/apps/camera/burstchip/BurstChip$6;->this$0:Lcom/google/android/apps/camera/burstchip/BurstChip;

    invoke-static {v0}, Lcom/google/android/apps/camera/burstchip/BurstChip;->access$700(Lcom/google/android/apps/camera/burstchip/BurstChip;)Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 388
    return-void
.end method
