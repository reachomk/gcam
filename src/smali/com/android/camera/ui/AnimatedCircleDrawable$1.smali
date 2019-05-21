.class final Lcom/android/camera/ui/AnimatedCircleDrawable$1;
.super Ljava/lang/Object;
.source "AnimatedCircleDrawable.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/AnimatedCircleDrawable;->animateToSmallRadius(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/ui/AnimatedCircleDrawable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/AnimatedCircleDrawable;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable$1;->this$0:Lcom/android/camera/ui/AnimatedCircleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/AnimatedCircleDrawable$1;->this$0:Lcom/android/camera/ui/AnimatedCircleDrawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/AnimatedCircleDrawable;->setLevel(I)Z

    .line 96
    return-void
.end method
