.class public final Lcom/android/camera/ui/motion/DynamicAnimator;
.super Ljava/lang/Object;
.source "DynamicAnimator.java"

# interfaces
.implements Lcom/android/camera/ui/motion/Invalidator;


# instance fields
.field public final animations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/ui/motion/DynamicAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/google/android/apps/camera/util/time/AnimationClock;

.field private drawTimeMillis:J

.field private final invalidator:Lcom/android/camera/ui/motion/Invalidator;

.field private isDrawing:Z

.field private lastDrawTimeMillis:J

.field private updateRequested:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/motion/Invalidator;Lcom/google/android/apps/camera/util/time/AnimationClock;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    .line 21
    iput-boolean v1, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->updateRequested:Z

    .line 22
    iput-boolean v1, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->isDrawing:Z

    .line 23
    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    .line 24
    iput-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    .line 27
    iput-object p1, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidator:Lcom/android/camera/ui/motion/Invalidator;

    .line 28
    iput-object p2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->clock:Lcom/google/android/apps/camera/util/time/AnimationClock;

    .line 29
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->isDrawing:Z

    .line 33
    iput-boolean v7, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->updateRequested:Z

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->clock:Lcom/google/android/apps/camera/util/time/AnimationClock;

    .line 1021
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    .line 37
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 38
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    iput-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    .line 41
    :cond_0
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    sub-long v4, v0, v2

    .line 42
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    iput-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->animations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/motion/DynamicAnimation;

    .line 46
    invoke-interface {v1}, Lcom/android/camera/ui/motion/DynamicAnimation;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    iget-wide v2, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/camera/ui/motion/DynamicAnimation;->draw(JJLandroid/graphics/Canvas;)V

    goto :goto_0

    .line 54
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->updateRequested:Z

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 60
    :goto_1
    iput-boolean v7, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->isDrawing:Z

    .line 61
    return-void

    .line 57
    :cond_3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    goto :goto_1
.end method

.method public final getTimeMillis()J
    .locals 2

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->isDrawing:Z

    if-eqz v0, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->drawTimeMillis:J

    .line 98
    :goto_0
    return-wide v0

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->updateRequested:Z

    if-eqz v0, :cond_1

    .line 95
    iget-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->clock:Lcom/google/android/apps/camera/util/time/AnimationClock;

    .line 3021
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final invalidate()V
    .locals 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->isDrawing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->updateRequested:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->invalidator:Lcom/android/camera/ui/motion/Invalidator;

    invoke-interface {v0}, Lcom/android/camera/ui/motion/Invalidator;->invalidate()V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->clock:Lcom/google/android/apps/camera/util/time/AnimationClock;

    .line 2021
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 74
    iput-wide v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->lastDrawTimeMillis:J

    .line 77
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/motion/DynamicAnimator;->updateRequested:Z

    .line 78
    return-void
.end method
